import 'models.dart';
import 'source_file_data.dart';
import 'dart:convert';
import 'dart:io';
import 'package:recase/recase.dart';
import 'json_serializer.dart';
import 'package:dart_style/dart_style.dart';

class _SchemaWithTypeData {
  SchemaType schemaType;
  TypeData typeData;
  String dartName;
  _SchemaWithTypeData(this.schemaType, this.typeData, this.dartName);
}

enum ReturnKind {
  Common,
  ObjectIterface,
}

class ReturnDescriptor {
  SchemaType schemaType;
  TypeData typeData;
  ReturnKind returnKind = ReturnKind.Common;
  String dartType;
}

class ApiGenerator {
  int structsGenerated = 0;
  int fieldsGenerated = 0;
  int servicesGenerated = 0;
  int methodsGenerated = 0;
  int ambiguousReturns = 0;

  var typeMap = <String, TypeData>{};
  _addType(String key, TypeData typeData) {
    String index = typeData.jsonType;
    if (index == 'array' || index == 'object') {
      index = key;
    }
    if (typeData.jsonType == 'array') {
      int debug = 1;
    }
    if (key == null) {
      int debug = 1;
    }
    typeMap[index] = typeData;
  }

  final Map<String, String> objectFuncToObject =
      createObjectFunctionToObjectTypeMapping();

  static Map<String, String> createObjectFunctionToObjectTypeMapping() {
    // Register mappings that describe what remote object type is created by each method
    var result = <String, String>{};
    result["GetActiveDoc"] = "Doc";
    result["OpenDoc"] = "Doc";
    result["CreateDocEx"] = "Doc";
    result["CreateSessionAppFromApp"] = "Doc";
    result["CreateSessionApp"] = "Doc";
    result["CreateChild"] = "GenericObject";
    result["GetChild"] = "GenericObject";
    result["GetSnapshotObject"] = "GenericObject";
    result["CreateSessionObject"] = "GenericObject";
    result["CreateBookmark"] = "GenericBookmark";
    result["GetDimension"] = "GenericDimension";
    result["CreateMeasure"] = "GenericMeasure";
    result["GetField"] = "Field";
    result["CreateSessionVariable"] = "Variable";
    result["GetVariable"] = "Variable";
    result["GetObject"] = "GenericObject";
    result["GetVariableById"] = "Variable";
    result["CreateObject"] = "GenericObject";
    result["CreateVariableEx"] = "Variable";
    result["CreateDimension"] = "GenericDimension";
    result["GetBookmark"] = "GenericBookmark";
    result["GetVariableByName"] = "GenericVariable";
    result["GetMeasure"] = "GenericMeasure";
    return result;
  }

  var exportList = <String>[];
  initBasicTypes() {
    _addType('string',new TypeData(jsonType: 'string', dartType: 'String'));
    _addType('boolean',new TypeData(jsonType: 'boolean', dartType: 'bool'));
    _addType('number',new TypeData(jsonType: 'number', dartType: 'num'));
    _addType('integer',new TypeData(jsonType: 'integer', dartType: 'int'));
    _addType('Function',new TypeData(jsonType: 'Function', dartType: 'ScriptFunction')
      ..importDirectives.add("import 'models/script_function.dart';"));
    _addType('JsonObject',new TypeData(jsonType: 'JsonObject', dartType: 'JsonObject')
      ..importDirectives.add("import 'package:built_value/json_object.dart';"));
  }

  run() {
    initBasicTypes();
    var schemaContent = new File('tool/schema.json').readAsStringSync();
    var schemaJson = json.decode(schemaContent);
    var schema = fromJson<Schema>(Schema, schemaJson);
    schema = expandGenericObjectWithLayouts(schema);
//    print(schema.definitions['GenericObjectLayout']);
    populateTypes(schema);
    schema.definitions.forEach((key, value) {
      generateStruct(key, value);
    });
    generateModelExport();
    schema.services.forEach((key, value) {
      generateService(key, value);
    });
    generateSerializers();
    print(''''Generated structs: $structsGenerated, fields: $fieldsGenerated.
     Generated services: $servicesGenerated, methods: $methodsGenerated, ambiguousReturns: $ambiguousReturns''');
  }

  Schema expandGenericObjectWithLayouts(Schema schema) {
    var genericObjectProperties =
        schema.definitions['GenericObjectProperties'].properties.toMap();
    var genericObjectLayout =
        schema.definitions['GenericObjectLayout'].properties.toMap();
    for (var layout in schema.services['GenericObject'].layouts) {
      if (layout.prop != null) {
        genericObjectProperties[layout.prop.name] = layout.prop;
      }
      if (layout.layout != null) {
        genericObjectLayout[layout.layout.name] = layout.layout;
      }
    }
    var definitions = schema.definitions.toMap();
    definitions['GenericObjectProperties'] =
        definitions['GenericObjectProperties']
            .rebuild((b) => b..properties.replace(genericObjectProperties));
    definitions['GenericObjectLayout'] = definitions['GenericObjectLayout']
        .rebuild((b) => b..properties.replace(genericObjectLayout));
    return schema.rebuild((b) => b..definitions.replace(definitions));
  }

  populateTypes(Schema schema) {
    schema.definitions.forEach((key, value) {
      if ((value.jsonType == 'object' || key == 'ObjectInterface') &&
          value.properties.isNotEmpty) {
        var typeData = new TypeData();
        typeData.jsonType = key;
        typeData.dartType = key;
        typeData.specifiedType = 'const FullType($key)';
        var importDirective = "import '${getModelFileName(key)}';";
        typeData.importDirectives.add(importDirective);
        _addType(key,typeData);
      }
      if (value.jsonType == 'object' && value.properties.isEmpty) {
        _addType(key, new TypeData(jsonType: key, dartType: 'JsonObject')
          ..specifiedType = 'const FullType($key)'
          ..importDirectives
              .add("import 'package:built_value/json_object.dart';"));
      }
    });
    schema.definitions.forEach((key, value) {
      if (value.jsonType == 'array') {
        var typeData = getTypeData(value);
        _addType(key, typeData);
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
    var outFile = new File('../enigma/lib/src/models.dart');
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
      result.specifiedType =
          'const FullType(BuiltList, const [const FullType(${dataType.dartType})])';
      result.importDirectives.addAll(dataType.importDirectives);
      result.importDirectives
          .add("import 'package:built_collection/built_collection.dart';");
      return result;
    }
    return null;
  }

  var _qPattern = new RegExp('^q');
  String toDartVarName(String value) {
    if (value == null) {
      int debug = 1;
    }
    var result = value.replaceFirst(_qPattern, '');
    result = new ReCase(result).camelCase;
    if (result == 'num') {
      result = 'qNum';
    }
    return result;
  }

  String generateField(String className, String jsonFieldName,
      SchemaType fieldContent, StringBuffer buffer) {
    addComment(fieldContent.description, buffer, '  ');
    addComment('Original name: $jsonFieldName', buffer, '  ');
    var dartType = 'NOT_FOUND';
    var typeData = getTypeData(fieldContent);
    if (typeData != null) {
      dartType = typeData.dartType;
    }
    var fieldName = toDartVarName(jsonFieldName);
    if (typeData == null) {
      print('Type not found for field $jsonFieldName $fieldContent');
    }
    buffer.writeln('  @nullable');
    buffer.writeln('''  @BuiltValueField(wireName: '$jsonFieldName')''');
    buffer.writeln('  $dartType get $fieldName;\n');
    fieldsGenerated++;
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
    if (typeData?.dartType == 'JsonObject') {
      return;
    }
    if (className == 'Function') {
      className = 'ScriptFunction';
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
    if (className == 'SourceKeyRecord') {
      int debug = 1;
    }
    var paramList = <String>[];
    properties.forEach((fieldName, content) {
      if (fieldName != null) {
        paramList.add(generateField(className, fieldName, content, buffer));
      }
    });
    buffer.writeln(
        '  factory $className([updates(${className}Builder b)]) = _\$$className;\n');
    var params = paramList.join(', ');
    buffer.writeln('  factory $className.init({$params}) = _\$$className._;\n');
    buffer.writeln('  $className._();');
    buffer.writeln('}');
    var outFile = new File('../enigma/lib/src/models/$fileName');
    outFile.createSync();
    structsGenerated++;
    outFile.writeAsStringSync(_formatDartContent(buffer.toString()));
  }

  generateMethod(String methodName, Method method, StringBuffer buffer,
      List<String> additionalImports) {
    addComment(method.description, buffer, '  ');
    var dartMethodName = new ReCase(methodName).camelCase;
    var paramsWithDartTypes = <_SchemaWithTypeData>[];
    for (var each in method.parameters) {
      var typeData = getTypeData(each);
      var dartName = toDartVarName(each.name);
      paramsWithDartTypes
          .add(new _SchemaWithTypeData(each, typeData, dartName));
    }
    var mandatoryParams = <String>[];
    for (var p in paramsWithDartTypes) {
      if (p.schemaType.required != null && p.schemaType.required) {
        mandatoryParams.add('${p.typeData?.dartType} ${p.dartName}');
      }
    }
    var optionalParams = <String>[];
    for (var p in paramsWithDartTypes) {
      if (p.schemaType.required == null || !p.schemaType.required) {
        optionalParams.add('${p.typeData?.dartType} ${p.dartName}');
      }
    }
    if (methodName == 'DoReload') {
      int debug = 1;
    }
    var paramParts = <String>[];
    if (mandatoryParams.isNotEmpty) {
      paramParts.add(mandatoryParams.join(', '));
    }
    if (optionalParams.isNotEmpty) {
      paramParts.add('{${optionalParams.join(', ')}}');
    }
    ReturnDescriptor returnDescriptor = new ReturnDescriptor();
    if (method.responses.isNotEmpty) {
      if (method.responses.length > 1) {
        // print('$methodName ${method.responses}');
        var serviceType = objectFuncToObject[methodName];
        if (serviceType != null) {
          returnDescriptor.schemaType =
              method.responses.firstWhere((r) => r.name == 'qReturn');
          returnDescriptor.dartType = serviceType;
          returnDescriptor.returnKind = ReturnKind.ObjectIterface;
        } else {
          print('Cannot generate method $methodName');
          ambiguousReturns++;
          return;
        }
        returnDescriptor.typeData = getTypeData(returnDescriptor.schemaType);
      } else {
        returnDescriptor.schemaType = method.responses.first;
        returnDescriptor.typeData = getTypeData(returnDescriptor.schemaType);
        if (returnDescriptor.typeData != null) {
          returnDescriptor.dartType = returnDescriptor.typeData.dartType;
        } else {
          returnDescriptor.dartType = 'void';
          // print('Not found ${method.responses.first}');
        }
      }
    } else {
      returnDescriptor.dartType = 'void';
    }
    buffer.writeln(
        '  Future<${returnDescriptor.dartType}> $dartMethodName(${paramParts.join(', ')}) async {');
    buffer.writeln('var params = <String, dynamic>{};');
    for (var p in paramsWithDartTypes) {
      if (p.typeData.isPrimitive) {
        buffer.writeln("params['${p.schemaType.name}'] = ${p.dartName};");
      }
    }
    buffer.writeln("var rawResult = await query('$methodName', params);");
    if (returnDescriptor.dartType != 'void') {
      if (returnDescriptor.typeData.isPrimitive) {
        buffer.writeln(
            "return rawResult['result']['${returnDescriptor.schemaType.name}'];");
      } else {
        buffer.writeln(
            "var jsonData = rawResult['result']['${returnDescriptor.schemaType.name}'];");
        buffer.writeln(
            "var dartData = fromJsonFullType<${returnDescriptor.typeData.dartType}>(${returnDescriptor.typeData.specifiedType},jsonData);");
        if (returnDescriptor.returnKind == ReturnKind.ObjectIterface) {
          buffer.writeln(
              'return new ${returnDescriptor.dartType}(enigma,dartData.handle);');
          additionalImports.add(returnDescriptor.dartType);
        } else {
          buffer.writeln('return dartData;');
        }
      }
    }
    buffer.writeln('}');
    methodsGenerated++;
  }

  generateService(String className, Service service) {
    String fileName = getModelFileName(className);
    var headerBuffer = new StringBuffer();
    headerBuffer.writeln("import 'dart:async';");
    headerBuffer.writeln("import '../enigma/base_service.dart';");
    headerBuffer.writeln("import '../enigma/enigma.dart';");
    headerBuffer.writeln("import '../models.dart';");
    headerBuffer.writeln("import '../serializers/json_serializer.dart';");
    headerBuffer.writeln("import 'package:built_value/serializer.dart';");
    headerBuffer
        .writeln("import 'package:built_collection/built_collection.dart';");
    var buffer = new StringBuffer();
    addComment(service.description, buffer, '');
    buffer.writeln('class $className extends BaseService {');
    buffer.writeln('');
    buffer.writeln('''
    
    $className(Enigma enigma, int handle) : super(enigma, handle);

      String get serviceType => '$className';''');
    var additionalImports = <String>[];
    service.methods.forEach((methodName, content) {
      generateMethod(methodName, content, buffer, additionalImports);
    });
    buffer.writeln('}');
    var outFile = new File('../enigma/lib/src/services/$fileName');
    outFile.createSync();
    for (var each in additionalImports) {
      var fileNameBase = new ReCase(each).snakeCase;
      headerBuffer.writeln("import '$fileNameBase.dart';");
    }
    headerBuffer.writeln(buffer.toString());
    outFile.writeAsStringSync(_formatDartContent(headerBuffer.toString()));
    servicesGenerated++;
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

    var outFile = new File('../enigma/lib/src/serializers/serializers.dart');
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
