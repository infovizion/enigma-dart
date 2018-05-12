import 'package:web_socket_channel/io.dart';
import 'package:enigma/enigma.dart';
import 'package:logging/logging.dart';
import 'package:grinder/grinder.dart';

main() async {
  Logger.root.level = Level.INFO;
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
  const loadScript = '''
    \$(must_include='lib://data/qvs/etl_test.qvs');
     ''';

  var doc = await global.openDoc(result.appId);
  var res = await doc.createConnection(new Connection((b) => b
    ..type = 'folder'
    ..connectionString = '/data'
    ..name = 'data'));
  print('Created connection: $res');
  await doc.setScript(loadScript);
  var reloadRes = await doc.doReloadEx();
  print(reloadRes);
  run('docker', arguments: [
    'cp',
    'enigma_engine_1:${reloadRes.scriptLogFile}',
    'example/create_app.log'
  ]);
  await enigma.close();
}
