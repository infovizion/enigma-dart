import 'models.dart';
import 'source_file_data.dart';
import 'dart:convert';
import 'dart:io';
import 'package:recase/recase.dart';
import 'json_serializer.dart';
import 'package:dart_style/dart_style.dart';

class ApiGenerator {
  var typeMap = <String, TypeData>{};
  _addType(TypeData typeData) {
    typeMap[typeData.jsonType] = typeData;
  }

  final Map<String, String> objectFuncToObject =
      createObjectFunctionToObjectTypeMapping();

  static Map<String, String> createObjectFunctionToObjectTypeMapping() {
    // Register mappings that describe what remote object type is created by each method
    var result = <String, String>{};
    result["Global.GetActiveDoc"] = "Doc";
    result["Global.OpenDoc"] = "Doc";
    result["Global.CreateDocEx"] = "Doc";
    result["Global.CreateSessionAppFromApp"] = "Doc";
    result["Global.CreateSessionApp"] = "Doc";
    result["GenericObject.CreateChild"] = "GenericObject";
    result["GenericObject.GetChild"] = "GenericObject";
    result["GenericObject.GetSnapshotObject"] = "GenericObject";
    result["Doc.CreateSessionObject"] = "GenericObject";
    result["Doc.CreateBookmark"] = "GenericBookmark";
    result["Doc.GetDimension"] = "GenericDimension";
    result["Doc.CreateMeasure"] = "GenericMeasure";
    result["Doc.GetField"] = "Field";
    result["Doc.CreateSessionVariable"] = "Variable";
    result["Doc.GetVariable"] = "Variable";
    result["Doc.GetObject"] = "GenericObject";
    result["Doc.GetVariableById"] = "Variable";
    result["Doc.CreateObject"] = "GenericObject";
    result["Doc.CreateVariableEx"] = "Variable";
    result["Doc.CreateDimension"] = "GenericDimension";
    result["Doc.GetBookmark"] = "GenericBookmark";
    result["Doc.GetVariableByName"] = "GenericVariable";
    result["Doc.GetMeasure"] = "GenericMeasure";
    return result;
  }

  var exportList = <String>[];
  initBasicTypes() {
    _addType(new TypeData(jsonType: 'string', dartType: 'String'));
    _addType(new TypeData(jsonType: 'boolean', dartType: 'bool'));
    _addType(new TypeData(jsonType: 'number', dartType: 'num'));
    _addType(new TypeData(jsonType: 'integer', dartType: 'int'));
    _addType(new TypeData(jsonType: 'Function', dartType: 'ScriptFunction')
      ..importDirectives.add("import 'models/script_function.dart';"));
    _addType(new TypeData(jsonType: 'JsonObject', dartType: 'JsonObject')
      ..importDirectives.add("import 'package:built_value/json_object.dart';"));
  }

  run() {
    initBasicTypes();
    var schemaContent = new File('tool/schema.json').readAsStringSync();
    var schemaJson = json.decode(schemaContent);
    var schema = fromJson<Schema>(Schema, schemaJson);
    // var objectInterface = schema.definitions['ObjectInterface'].rebuild((b) => b .. jsonType = 'object');
    // var defs = schema.definitions.asMap();
    // defs['ObjectIterface'] = objectInterface;
    // schema = schema.rebuild((b) => b..definitions.replace(defs));
    populateTypes(schema);
    schema.definitions.forEach((key, value) {
      generateStruct(key, value);
    });
    generateModelExport();
    schema.services.forEach((key, value) {
      generateService(key, value);
    });
    generateSerializers();
  }

  populateTypes(Schema schema) {
    schema.definitions.forEach((key, value) {
      if ((value.jsonType == 'object' || key == 'ObjectInterface') &&
          value.properties.isNotEmpty) {
        var typeData = new TypeData();
        typeData.jsonType = key;
        typeData.dartType = key;
        var importDirective = "import '${getModelFileName(key)}';";
        typeData.importDirectives.add(importDirective);
        typeMap[typeData.jsonType] = typeData;
      }
      if (value.jsonType == 'object' && value.properties.isEmpty) {
        _addType(new TypeData(jsonType: key, dartType: 'JsonObject')
          ..importDirectives
              .add("import 'package:built_value/json_object.dart';"));
      }
    });
    schema.definitions.forEach((key, value) {
      if (value.jsonType == 'array') {
        var typeData = getTypeData(value);
        typeMap[typeData.jsonType] = typeData;
      }
    });
  }

  String getModelFileName(String className) =>
      new ReCase(className).snakeCase + '.dart';

  addComment(String description, StringBuffer buffer, String indent) {
    if (description == null) {
      return;
    }
    var lines = description.split('\n');
    for (var line in lines) {
      buffer.writeln('$indent/// $line');
    }
  }

  generateModelExport() {
    var outFile = new File('../qlient/lib/src/models.dart');
    outFile.createSync();
    var buffer = new StringBuffer();
    for (var each in exportList) {
      buffer.writeln("export 'models/${getModelFileName(each)}';");
    }
    outFile.writeAsStringSync(_formatDartContent(buffer.toString()));
  }

  TypeData getTypeData(SchemaType schemaType) {
    var result = typeMap[schemaType.jsonType];
    if (result != null) {
      return result;
    }
    result = new TypeData();
    result.jsonType = schemaType.jsonType;
    if (schemaType.schema != null) {
      var jsonType = schemaType.schema.ref.replaceFirst('#/definitions/', '');
      return typeMap[jsonType];
    }
    if (schemaType.ref != null) {
      var jsonType = schemaType.ref.replaceFirst('#/definitions/', '');
      return typeMap[jsonType];
    }
    if (schemaType.jsonType == 'array') {
      var jsonType = schemaType.items.jsonType;
      if (jsonType == null) {
        var ref = schemaType.items.ref;
        if (ref == null) {
          print('Error: $schemaType');
          return null;
        }
        jsonType = ref.replaceFirst('#/definitions/', '');
      }
      var dataType = typeMap[jsonType];
      if (dataType == null) {
        print('Error: $jsonType $schemaType');
        return null;
      }
      result.dartType = 'BuiltList<${dataType.dartType}>';
      result.importDirectives.addAll(dataType.importDirectives);
      result.importDirectives
          .add("import 'package:built_collection/built_collection.dart';");
      return result;
    }
    return null;
  }

  var _qPattern = new RegExp('^q');
  String generateField(
      String jsonFieldName, SchemaType fieldContent, StringBuffer buffer) {
    addComment(fieldContent.description, buffer, '  ');
    addComment('Original name: $jsonFieldName', buffer, '  ');
    var dartType = 'NOT_FOUND';
    var typeData = getTypeData(fieldContent);
    if (typeData != null) {
      dartType = typeMap[typeData.jsonType]?.dartType;
    }
    var fieldName = jsonFieldName.replaceFirst(_qPattern, '');
    fieldName = new ReCase(fieldName).camelCase;
    if (fieldName == 'num') {
      fieldName = 'qNum';
    }
    if (typeData == null) {
      print('Type not found for field $jsonFieldName $fieldContent');
    }
    buffer.writeln('  @nullable');
    buffer.writeln('  $dartType get $fieldName;\n');
    return '$dartType $fieldName';
  }

  _replaceProperty(
      Map<String, SchemaType> properties, String fieldName, String newRef) {
    var schemaType = properties[fieldName];
    properties[fieldName] =
        schemaType.rebuild((b) => b..ref = '#/definitions/$newRef');
  }

  SchemaType preprocessClass(String className, SchemaType schemaType) {
    if (className == 'NxCell') {
      var properties = schemaType.properties.toMap();
      _replaceProperty(properties, 'qHighlightRanges', 'JsonObject');
      _replaceProperty(properties, 'qAttrExps', 'JsonObject');
      _replaceProperty(properties, 'qAttrDims', 'JsonObject');
      var result = schemaType.rebuild((b) => b..properties.replace(properties));
      return result;
    }
    return schemaType;
  }

  generateStruct(String className, SchemaType schemaType) {
    if (className == 'ObjectInterface') {
      int debug = 1;
    } else if (schemaType.jsonType != 'object') {
      /// Probably we should generate EnumLike classes here ?
      return;
    }
    var typeData = typeMap[className];
    if (typeData == null) {
      int debug = 2;
    }
    if (typeData?.dartType == 'JsonObject') {
      return;
    }
    if (className == 'Function') {
      className = 'ScriptsFunction';
    }
    exportList.add(className);
    schemaType = preprocessClass(className, schemaType);
    var importList = new Set<String>();
    importList.add("import 'package:built_value/serializer.dart';");
    importList.add("import 'package:built_value/built_value.dart';");
    for (var fieldContent in schemaType.properties.values) {
      var typeData = getTypeData(fieldContent);
      if (typeData != null) {
        importList.addAll(typeData.importDirectives);
      }
    }
    var properties = schemaType.properties;
    if (properties == null) {
      return;
    }
    var snakeCaseName = new ReCase(className).snakeCase;
    var camelCaseName = new ReCase(className).camelCase;
    String fileName = snakeCaseName + '.dart';
    var buffer = new StringBuffer();
    buffer.writeln('/// This file was autogenerated\n');
    buffer.writeln('library $snakeCaseName;\n');
    for (var each in importList) {
      buffer.writeln(each);
    }
    buffer.writeln("part '$snakeCaseName.g.dart';\n");

    addComment(schemaType.description, buffer, '');

    buffer.writeln(
        'abstract class $className implements Built<$className, ${className}Builder> {\n');
    buffer.writeln(
        ' static Serializer<$className> get serializer => _\$${camelCaseName}Serializer;\n');
//   @nullable
    var paramList = <String>[];
    properties.forEach((fieldName, content) {
      paramList.add(generateField(fieldName, content, buffer));
    });
    buffer.writeln(
        '  factory $className([updates(${className}Builder b)]) = _\$$className;\n');
    var params = paramList.join(', ');
    buffer.writeln('  factory $className.init({$params}) = _\$$className._;\n');
    buffer.writeln('  $className._();');
    buffer.writeln('}');
    var outFile = new File('../qlient/lib/src/models/$fileName');
    outFile.createSync();
//     var fileContent = '''
// /// This code was autogenerated
// import 'package:built_value/built_value.dart';
// $importDirectives

// $buffer
// ''';
    outFile.writeAsStringSync(_formatDartContent(buffer.toString()));
  }

  generateMethod(String methodName, Method method, StringBuffer buffer) {
    addComment(method.description, buffer, '  ');
    var dartMethodName = new ReCase(methodName).camelCase;
    // var dartType = 'NOT_FOUND';
    // // var typeData = getTypeData(fieldContent);
    // if (typeData != null) {
    //   dartType = typeMap[typeData.jsonType]?.dartType;
    // }
    // var fieldName = methodName.replaceFirst(_qPattern, '');
    // fieldName = new ReCase(fieldName).camelCase;
    // if (fieldName == 'num') {
    //   fieldName = 'qNum';
    // }
    // if (typeData == null) {
    //   print('Type not found for field $methodName $fieldContent');
    // }
    // var mandatoryParams =
    //     method.parameters.where((p) => p.required != null && p.required).map((schemaType) {
    //   var typeData = getTypeData(schemaType);
    //   return '${typeData?.dartType} ${schemaType.name}';
    // });
    var mandatoryParams = <String>[];
    for (var p in method.parameters) {
      if (p.required != null && p.required) {
        var typeData = getTypeData(p);
        mandatoryParams.add('${typeData?.dartType} ${p.name}');
      }
    }
    var optionalParams = <String>[];
    for (var p in method.parameters) {
      if (p.required == null || !p.required) {
        var typeData = getTypeData(p);
        optionalParams.add('${typeData?.dartType} ${p.name}');
      }
    }
    var paramParts = <String>[];
    if (mandatoryParams.isNotEmpty) {
      paramParts.add(mandatoryParams.join(', '));
    }
    if (optionalParams.isNotEmpty) {
      paramParts.add('{${optionalParams.join(', ')}}');
    }
    var returnType = '';
    if (method.responses.isNotEmpty) {
      var typeData = getTypeData(method.responses.first);
      if (typeData != null) {
        returnType = typeData.dartType;
      } else {
        returnType = 'void';
        // print('Not found ${method.responses.first}');
      }
    } else {
      returnType = 'void';
    }
    buffer.writeln(
        '  Future<$returnType> $dartMethodName(${paramParts.join(', ')}) async {}');
        
  }

  generateService(String className, Service service) {
    String fileName = getModelFileName(className);
    var buffer = new StringBuffer();
    buffer.writeln("import 'dart:async';");
    buffer.writeln("import '../enigma/base_service.dart';");
    buffer.writeln("import '../enigma/enigma.dart';");
    buffer.writeln("import '../models.dart';");
    buffer.writeln("import 'package:built_collection/built_collection.dart';");
    addComment(service.description, buffer, '');
    buffer.writeln('class $className extends BaseService {');
    buffer.writeln('');
    buffer.writeln('''
    
    $className(Enigma enigma, int handle) : super(enigma, handle);

      String get serviceType => '$className';''');
    service.methods.forEach((methodName, content) {
      generateMethod(methodName, content, buffer);
    });
    buffer.writeln('}');
    var outFile = new File('../qlient/lib/src/services/$fileName');
    outFile.createSync();
    // var importDirectives = importList.join('\n');
//     var fileContent = '''
// /// This code was autogenerated
// //import 'package:built_value/built_value.dart';
// $importDirectives

// $buffer
// ''';
    outFile.writeAsStringSync(_formatDartContent(buffer.toString()));
  }

  generateSerializers() {
    var toSerialize = exportList.join(',\n');
    var content = '''
      library serializers;

      import 'package:built_value/serializer.dart';
      import 'package:built_collection/built_collection.dart';
      import '../models.dart';

      part 'serializers.g.dart';

      @SerializersFor(const [
        $toSerialize
      ])
      final Serializers serializers = _\$serializers;
      ''';

    var outFile = new File('../qlient/lib/src/serializers/serializers.dart');
    outFile.createSync();
    outFile.writeAsStringSync(_formatDartContent(content));
  }

  _formatDartContent(String content) {
    var formatter = new DartFormatter();

    try {
      var result = formatter.format(content);
      return result;
    } on FormatterException catch (ex) {
      print(ex);
      return content;
    }
  }
}
