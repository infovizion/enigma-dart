import 'package:recase/recase.dart';
import 'dart:io';
import 'package:path/path.dart' as path;

main() {
//  createFile('enigma','NxValidationError');
//  createFile('enigma','NxDimensionInfo');
  createFile('Layout');
}

createFile(String className) {
  var recase = new ReCase(className);
  final camelCase = recase.camelCase;
  final snakeCase = recase.snakeCase;
  var file = new File(path.join('lib','src','models',snakeCase + '.dart'));
  file.createSync();
  var content = '''
library $snakeCase;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part '$snakeCase.g.dart';

abstract class $className implements Built<$className, ${className}Builder> {

  static Serializer<$className> get serializer => _\$${camelCase}Serializer;

  factory $className([updates(${className}Builder b)]) = _\$$className;
  $className._();
}
  
  ''';
  file.writeAsStringSync(content);
  print('File ${file.path} created');
}