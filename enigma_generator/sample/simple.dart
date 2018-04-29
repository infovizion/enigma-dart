import 'package:qlient_generator/qlient_generator.dart';
import 'dart:io';
import 'dart:convert';


main() {
  var schemaContent = new File('tool/schema.json').readAsStringSync();
  var schemaJson = json.decode(schemaContent);
  var schema = fromJson<Schema>(Schema, schemaJson);
  print(schema);
}