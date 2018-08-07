import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/serializer.dart';
import 'package:enigma/enigma.dart';
import 'dart:convert';
import 'dart:io';

main() {
  final standardJsonSerializer =
      (serializers.toBuilder()..addPlugin(new StandardJsonPlugin())).build();
  var jsonSource =
      File('example/sense/pivot-table-stripped.json').readAsStringSync();
  var jsonMap = json.decode(jsonSource);
  print('Individual cells deserialize successfully:');
  List jsonCells = jsonMap['qHyperCube']['qPivotDataPages'][0]['qData'];
  for (var row in jsonCells) {
    for (var cell in row) {
      NxPivotValuePoint value = standardJsonSerializer.deserialize(cell,
          specifiedType: FullType(NxPivotValuePoint));
      print(value);
    }
  }
  print('List of lists of cells inside a parent object fail to deserialize:');
  try {

    GenericObjectLayout result = standardJsonSerializer.deserialize(jsonMap,
        specifiedType: FullType(GenericObjectLayout));
    print(result);
  } catch(e, stacktrace) {
    print(e);
    print(stacktrace);
  }
  print('List of lists of cells inside most immediate object fail to deserialize:');
  print('Update, resolved with additional serializer manually added');
  try {

    var jsonPage = jsonMap['qHyperCube']['qPivotDataPages'][0];
    NxPivotPage result = standardJsonSerializer.deserialize(jsonPage,
        specifiedType: FullType(NxPivotPage));
    print(result);
  } catch(e, stacktrace) {
    print(e);
    print(stacktrace);
  }
}
