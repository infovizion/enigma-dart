import 'package:qlient_generator/qlient_generator.dart';
import 'dart:convert';
import 'dart:io';

main() {
  var schemaContent = new File('tool/schema.json').readAsStringSync();
  var schemaJson = json.decode(schemaContent);
  var schema = fromJson<Schema>(Schema, schemaJson);
  for (var each in schema.services.values) {
    for (var method in each.methods.values) {
      if (method.responses.length > 1) {
        print(method.responses.map((r) => r.name));
      }
    }
  }
}
