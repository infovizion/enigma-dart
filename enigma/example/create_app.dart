import 'package:web_socket_channel/io.dart';
import 'package:enigma/enigma.dart';
import 'package:logging/logging.dart';

main() async {
    Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
  
  var channel = new IOWebSocketChannel.connect('ws://localhost:19076/app');
  var enigma = new Enigma(channel);
  var global = enigma.open();
  var result = await global.createApp('test_app');
  print('App created, successState: ${result.success}, appId: ${result.appId}');
  await enigma.close();
}
