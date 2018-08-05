import "package:enigma/enigma_io.dart";
import 'package:web_socket_channel/io.dart';
import 'connection_info.dart';

const APP_ID = '3261f1ef-3b98-460a-bd4a-3bae0e46cef0';

main() async {
  await _testQES();
}

_testQES() async {
  var enigma = new SenseEnigma(host, port, userDir, userId);
  await enigma.initSession();
  var global = enigma.open();
  var doc = await global.openDoc(APP_ID);
  var properties = new GenericObjectProperties((b) => b
    ..info.type = 'my-straight-hypercube'
    ..hyperCubeDef
        .dimensions
        .add(new NxDimension((b) => b..def.fieldDefs.add('Год')))
    ..hyperCubeDef.measures.add(new NxMeasure((b) => b..def.def = 'Sum(Сумма)'))
    ..hyperCubeDef.initialDataFetch.add(new NxPage((b) => b
      ..height = 5
      ..width = 2)));

  var cube = await doc.createSessionObject(properties);
  var layout = await cube.getLayout();
  print('Hypercube data pages: ${layout.hyperCube.dataPages}');
  await enigma.close();
}
