import "package:enigma/enigma_io.dart";
import 'package:web_socket_channel/io.dart';
import 'connection_info.dart';
import 'dart:convert';
import 'dart:io';

const APP_ID = '3261f1ef-3b98-460a-bd4a-3bae0e46cef0';

main() async {
  var enigma = new SenseEnigma(host, port, userDir, userId);
  await enigma.initSession();
  var global = enigma.open();

  var doc = await global.openDoc(APP_ID);
  var propertiesJson = json.decode(File('data/queries/problematic.json').readAsStringSync());
  var properties = fromJson(GenericObjectProperties, propertiesJson) ;

  var cube = await doc.createSessionObject(properties);
  var layout = await cube.getLayout();
  print('Hypercube data pages: ${layout.hyperCube}');

  await enigma.close();
}
