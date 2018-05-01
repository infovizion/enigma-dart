import 'package:web_socket_channel/io.dart';
import 'package:enigma/enigma.dart';

main() async {
  var channel = new IOWebSocketChannel.connect('ws://localhost:19076/app');
  var enigma = new Enigma(channel);
  var global = enigma.open();

  var engineVersion = await global.engineVersion();

  print('Hello. Engine version is ${engineVersion.componentVersion}');
  await enigma.close();
}
