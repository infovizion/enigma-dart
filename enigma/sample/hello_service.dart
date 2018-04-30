import 'package:web_socket_channel/io.dart';
import 'package:enigma/enigma.dart';

main() async {
  var channel = new IOWebSocketChannel.connect('ws://localhost:19076/app');
  var enigma = new Enigma(channel);
  var global = enigma.open();

  var engineVersion = await global.engineVersion();

  print(engineVersion);
  var productVersion = await global.productVersion();
  print('Product version: $productVersion');
  print('asdfasdfasdf');
  await enigma.close();
}
