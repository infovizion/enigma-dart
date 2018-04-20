import 'dart:convert';
import 'dart:io';

main() {
   var schemaContent = new File('tool/schema.full.json').readAsStringSync();
   var schemaJson = json.decode(schemaContent);
  //  Map definitions = schemaJson['definitions'];
  //  var smallDefs = new Map.fromEntries(definitions.entries.where((entry) => entry.value['type'] != 'enum'));
  //  var smallSchema = {"definitions": smallDefs};
   var schemaPP = new JsonEncoder.withIndent('  ').convert(schemaJson);
   print(schemaPP);
   new File('tool/schema.json').writeAsStringSync(schemaPP);
}
