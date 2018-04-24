// import 'package:web_socket_channel/html.dart';
// import 'engine.dart';
// import 'dart:async';
// import 'global.dart';

// Future<Global> getGlobal(Uri uri) async {
//   var socketUri = new Uri(scheme: uri.scheme == 'https' ? 'wss' : 'ws', host: uri.host, port: uri.port, path: 'app/%3Ftransient%3D');

//   print('Open engine channel to $socketUri');
//   var channel = new HtmlWebSocketChannel.connect(socketUri);
//   var engine = new Engine(channel);
//   return engine.initGlobal();
// }
