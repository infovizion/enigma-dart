import 'package:web_socket_channel/io.dart';
import 'package:enigma/enigma.dart';
import 'package:logging/logging.dart';
import 'package:grinder/grinder.dart';

main() async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });

  var channel = new IOWebSocketChannel.connect('ws://localhost:19076/app');
  var enigma = new Enigma(channel);
  var global = enigma.open();
  var docList = await global.getDocList();
  print('Existing documents: $docList');
  var testDoc = docList.firstWhere((d) => d.docName == 'test_app.qvf',
      orElse: () => null);
  if (testDoc != null) {
    await global.deleteApp(testDoc.docId);
  }
  var result = await global.createApp('test_app');
  print('App created, successState: ${result.success}, appId: ${result.appId}');
  testDoc = docList.firstWhere((d) => d.docName == 'test_app.qvf',
      orElse: () => null);

  const loadScript = '''
TestData:
LOAD Dim1, 
     Dim2, 
     Measure1
FROM
['lib://data/test.csv']
(txt, codepage is 1251, embedded labels, delimiter is ',', msq);
STORE TestData INTO 
['lib://data/test1.csv'] (TXT);
     ''';

  var doc = await global.openDoc(testDoc.docId);
  var res = doc.createConnection(new Connection((b) => b
    ..type = 'folder'
    ..connectionString = '/data'
    ..name = 'data'));
  print(res);
  await doc.setScript(loadScript);
  var reloadRes = await doc.doReloadEx();
  print(reloadRes);
  run('docker', arguments: [
    'cp',
    'enigma_engine_1:' + reloadRes.scriptLogFile,
    'example/create_app.log'
  ]);
  await enigma.close();
}
