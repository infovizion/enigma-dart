import 'package:web_socket_channel/io.dart';
import 'package:enigma/enigma.dart';

const loadScript = '''
TempTable:
Load
RecNo() as ID,
Rand() as Value
AutoGenerate 100
''';

main() async {
  var channel = new IOWebSocketChannel.connect('ws://localhost:19076/app');
  var enigma = new Enigma(channel);
  var global = enigma.open();
  var doc = await global.createSessionApp();
  await doc.setScript(loadScript);
  await doc.doReload();
  var object = await doc.createObject(new GenericObjectProperties((b) => b
    ..info.type = 'my-straight-hypercube'
    ..hyperCubeDef.update((b) => b
      ..dimensions.add(new NxDimension((b) => b..def.fieldDefs.add('ID')))
      ..measures.add(new NxMeasure((b) => b..def.def = '=Sum(Value)'))
      ..initialDataFetch.add(new NxPage((b) => b
        ..height = 5
        ..width = 2)))));
  var layout = await object.getLayout();
  print('Hypercube data pages: ${layout.hyperCube.dataPages}');
  //await object.selectHyperCubeCells('/qHyperCubeDef', rowIndices, colIndices)      
  await enigma.close();
}
