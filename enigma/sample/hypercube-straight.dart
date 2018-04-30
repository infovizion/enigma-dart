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
  var doc  = await global.createSessionApp();
  await doc.setScript(loadScript);
  await doc.doReload(0, false, false);
  // var object = await doc.create(new GenericObjectProperties((b) =>
  //  b
  //  ..info.type = 'my-straight-hypercube'
  //  ..));
  await enigma.close();
}
