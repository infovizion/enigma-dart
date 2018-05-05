import 'package:web_socket_channel/io.dart';
import 'package:enigma/enigma.dart';
import 'package:logging/logging.dart';

const loadScript = '''
TempTable:
Load
RecNo() as ID,
Rand() as Value
AutoGenerate 100
''';

main() async {
  Logger.root.level = Level.INFO;
  Logger.root.onRecord.listen((LogRecord rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
  var channel = new IOWebSocketChannel.connect('ws://localhost:19076/app');
  var enigma = new Enigma(channel);
  var global = enigma.open();
  var doc = await global.createSessionApp();
  await doc.setScript(loadScript);
  await doc.doReload();
  var properties = new GenericObjectProperties((b) => b
    ..info.type = 'my-straight-hypercube'
    ..hyperCubeDef
        .dimensions
        .add(new NxDimension((b) => b..def.fieldDefs.add('ID')))
    ..hyperCubeDef
        .measures
        .add(new NxMeasure((b) => b..def.def = '=Sum(Value)'))
    ..hyperCubeDef.initialDataFetch.add(new NxPage((b) => b
      ..height = 5
      ..width = 2)));
  var object = await doc.createObject(properties);
  var layout = await object.getLayout();
  print('Hypercube data pages: ${layout.hyperCube.dataPages}');
  await object.selectHyperCubeCells('/qHyperCubeDef', [0, 2, 4], [0]);
  print('After selection (notice the `qState` values)');
  layout = await object.getLayout();
  print('Hypercube data pages: ${layout.hyperCube.dataPages}');
  var result = await object.exportData('OOXML');
  print('File is exported to ${result.url}');
  await enigma.close();
}
