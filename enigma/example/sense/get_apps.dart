import "package:enigma/enigma_io.dart";
import 'package:web_socket_channel/io.dart';
import 'connection_info.dart';

const APP_ID = '3261f1ef-3b98-460a-bd4a-3bae0e46cef0';

main() async {
  var enigma = new SenseEnigma(host, port, userDir, userId);
  await enigma.initSession();
  var global = enigma.open();
  var apps = await global.getDocList();
  print('Application list: $apps');
  await enigma.close();
}
