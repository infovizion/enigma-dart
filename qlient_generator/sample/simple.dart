import 'package:qlient_generator/qlient_generator.dart';

main() {
  var definition = new SchemaType((b) => b
  ..description = 'asdfasdfasdf'
  ..ref = 'asdfasdf');

  var obj = serializers.serialize(definition);
  print(obj);
}