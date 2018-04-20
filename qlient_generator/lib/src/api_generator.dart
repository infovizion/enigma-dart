import 'models.dart';
import 'source_file_data.dart';
import 'dart:convert';
import 'dart:io';
import 'package:recase/recase.dart';
import 'json_serializer.dart';

class ApiGenerator {
  var typeMap = <String, TypeData>{};
  _addType(TypeData typeData) {
    typeMap[typeData.jsonType] = typeData;
  }

  initBasicTypes() {
    _addType(new TypeData(jsonType: 'string', dartType: 'String'));
    _addType(new TypeData(jsonType: 'boolean', dartType: 'bool'));
    _addType(new TypeData(jsonType: 'number', dartType: 'num'));
    _addType(new TypeData(jsonType: 'integer', dartType: 'int'));
    _addType(new TypeData(jsonType: 'NxMetaDef', dartType: 'JsonObject')
      ..importDirectives.add("import 'package:built_value/json_object.dart';"));
    _addType(new TypeData(jsonType: 'JsonObject', dartType: 'JsonObject')
      ..importDirectives.add("import 'package:built_value/json_object.dart';"));
  }

  run() {
    initBasicTypes();
    var schemaContent = new File('tool/schema.json').readAsStringSync();
    var schemaJson = json.decode(schemaContent);
    var schema = fromJson<Schema>(Schema, schemaJson);
    // var definitions = schema.definitions.asMap();
    // for (var schemaType in definitions.values) {
    //   populateType(schemaType);
    // }
    populateTypes(schema);
    schema.definitions.forEach((key, value) {
      generateStruct(key, value);
    });
    // for (var each in typeMap.values) {
    //   print(each);
    // }
    // return;
    // for (var key in definitions.keys) {
    //   generateStruct(key, definitions[key]);
    // }
    // generateModelExport(definitions.keys);
  }

  populateTypes(Schema schema) {
    schema.definitions.forEach((key, value) {
      if (value.jsonType == 'object' && value.properties.isNotEmpty) {
        var typeData = new TypeData();
        typeData.jsonType = key;
        typeData.dartType = key;
        var importDirective = "import '${getModelFileName(key)}';";
        typeData.importDirectives.add(importDirective);
        typeMap[typeData.jsonType] = typeData;
      }
    });
    schema.definitions.forEach((key, value) {
      if (value.jsonType == 'array') {
        var typeData = getTypeData(value) ;
        typeMap[typeData.jsonType] = typeData;
      }
    });
  }

  // populateType(SchemaType schemaType) {
  //   var properties = schemaType.properties;
  //   if (properties == null) {
  //     return;
  //   }
  //   for (var each in properties.values) {
  //     getTypeData(each);
  //   }
  // }

  generateStruct(String className, SchemaType content) {
    String fileName = getModelFileName(className);
    var buffer = new StringBuffer();
    addComment(content.description, buffer, '');
    buffer.writeln('class $className {');
    var properties = content.properties;
    if (properties == null) {
      return;
    }
    var importList = new Set<String>();
    properties.forEach((fieldName, content) {
      generateField(fieldName, content, buffer, importList);
    });
    buffer.writeln('}');
    var outFile = new File('../qlient/lib/src/models/$fileName');
    outFile.createSync();
    var importDirectives = importList.join('\n');
    var fileContent = '''
/// This code was autogenerated
import 'package:built_value/built_value.dart';
$importDirectives

$buffer
''';
    outFile.writeAsStringSync(fileContent);
    // print('File ${outFile.path} generated');
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
    for (var each in classNames) {
      buffer.writeln("export 'models/${getModelFileName(each)}';");
    }
    outFile.writeAsStringSync(buffer.toString());
    // print('File ${outFile.path} generated');
  }

  TypeData getTypeData(SchemaType fieldContent) {
    var result = typeMap[fieldContent.jsonType];
    if (result != null) {
      return result;
    }
    result = new TypeData();
    result.jsonType = fieldContent.jsonType;
    if (fieldContent.ref != null) {
      var jsonType = fieldContent.ref.replaceFirst('#/definitions/', '');
      return typeMap[jsonType];
    }
    if (fieldContent.jsonType == 'array') {
      var jsonType = fieldContent.items.jsonType;
      if (jsonType == null) {
        var ref = fieldContent.items.ref;
        if (ref == null) {
          print('Error: $fieldContent');
          return null;
        }
        jsonType = ref.replaceFirst('#/definitions/', '');
      }
      var dataType = typeMap[jsonType];
      if (dataType == null) {
        print('Error: $jsonType $fieldContent');
        return null;
      }
      result.dartType = 'List<${dataType.dartType}>';
      result.importDirectives.addAll(dataType.importDirectives);
      return result;
    }
    //  else if (typeMap[result.dartType] != null) {
    //   var itemType = typeMap[result.dartType];
    //   result.importDirectives.add("import '${getModelFileName(itemType)}';");
    //   result.dartType = 'List<$itemType>';
    // } else {
    //   result.importDirectives.add("import '${getModelFileName(result)}';");
    // }
    return null;
    // }
    // String jsonType = fieldContent.jsonType;
    // if (typeMap[jsonType] != null) {
    //   var itemType = typeMap[jsonType];
    //   result.importDirectives.add("import '${getModelFileName(itemType)}';");
    //   result.dartType = 'List<${itemType.dartType}>';
    // } else if (jsonType == 'array') {
    //   var itemType = getTypeData(fieldContent.items);
    //   result.dartType = 'List<${itemType.dartType}>';
    // }
    // return result;
  }

  // String getDartType(SchemaType fieldContent, List<String> importList) {
  //   String ref = fieldContent.ref;
  //   if (ref != null) {
  //     var className = ref.replaceFirst('#/definitions/', '');
  //     if (className == 'JsonObject') {
  //       importList.add("import 'package:built_value/json_object.dart';");
  //     } else if (typeMap[className] != null) {
  //       var itemType = typeMap[className];
  //       importList.add("import '${getModelFileName(itemType)}';");
  //       return 'List<$itemType>';
  //     } else {
  //       importList.add("import '${getModelFileName(className)}';");
  //     }
  //     return className;
  //   }
  //   String jsonType = fieldContent.jsonType;
  //   const type2dartType = const {
  //     'string': 'String',
  //     'boolean': 'bool',
  //     'number': 'num',
  //     'integer': 'int',
  //   };
  //   String dartType = '';
  //   if (typeMap[jsonType] != null) {
  //     var itemType = typeMap[jsonType];
  //     importList.add("import '${getModelFileName(itemType)}';");
  //     dartType = 'List<$itemType>';
  //   } else if (jsonType == 'array') {
  //     var itemType = getDartType(fieldContent.items, importList);
  //     dartType = 'List<$itemType>';
  //   } else {
  //     dartType = type2dartType[jsonType];
  //   }
  //   return dartType;
  // }

  var _qPattern = new RegExp('^q');
  generateField(String jsonFieldName, SchemaType fieldContent,
      StringBuffer buffer, Set<String> importList) {
    addComment(fieldContent.description, buffer, '  ');
    addComment('Original name: $jsonFieldName', buffer, '  ');
    var dartType = 'NOT_FOUND';
    var typeData = getTypeData(fieldContent);
    if (typeData != null) {
      dartType = typeMap[typeData.jsonType]?.dartType;
      importList.addAll(typeData.importDirectives);
    }
    var fieldName = jsonFieldName.replaceFirst(_qPattern, '');
    fieldName = new ReCase(fieldName).camelCase;
    if (typeData == null) {
      print('Type not found for field $jsonFieldName $fieldContent');
    }
    buffer.writeln('  $dartType $fieldName;');
  }
}
