import 'package:web_socket_channel/io.dart';
import 'qlient.dart';
import 'dart:async';
import 'package:http/http.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';
import '../services/global.dart';
// Future<Global> getGlobal(
//     String host, int port, String userDir, String userId) async {
//   String cookie =
//       (await sessionProvider.getSessionCookie(host, port, userDir, userId))
//           .cookie;
//   var headers = {
//     'Content-Type': 'application/json',
//     'Cookie': cookie,
//   };
//   var channel = new IOWebSocketChannel.connect(
//       'ws://$host:$port/app/%3Ftransient%3D',
//       headers: headers);
//   var engine = new Qlient(channel);
//   engine.headers = headers;
//   return engine.initGlobal();
//  var ws = await WebSocket.connect('ws://$host:$port/app/%3Ftransient%3D',
//      headers: headers);

//  ws.listen(onMessage, onError: onError);
//  return new Global(this);
// }

// Future<Global> getGlobalWithCooky(String host, int port, String cookie) async {
//   var headers = {
//     'Content-Type': 'application/json',
//     'Cookie': cookie,
//   };
//   var channel = new IOWebSocketChannel.connect(
//       'ws://$host:$port/app/%3Ftransient%3D',
//       headers: headers);
//   var engine = new Qlient(channel);
//   engine.headers = headers;
//   return engine.initGlobal();
// }

// Future<Global> getGlobalFromInfovizion(
//     {String project,
//     String userId,
//     String password,
//     String host,
//     int port}) async {
//   String secret = md5.convert(password.codeUnits).toString();
//   var client = new Client();
//   var url = 'http://$host:$port/login';
//   var response = await client.post(url,
//       body: {'username': userId, 'password': secret, 'project': project});
// //print('Response status: ${response.statusCode}');
// //print('Response body: ${response.body}');
// //print('Response headers: ${response.headers}');
//   url = 'http://localhost:8900/session';
//   var cookie = response.headers['set-cookie'];
//   response = await client
//       .post(url, body: {'project': project}, headers: {'cookie': cookie});
// //print('Response status: ${response.statusCode}');
//   client.close();
//   if (response.statusCode != 200) {
//     throw new Exception('${response.statusCode}:${response.reasonPhrase} ${response.body}');
//   }
//   String senseApp =
//       (JSON.decode(response.body)['senseApps'] as Map<String, String>)
//           .values
//           .first;

//   print('Sense app: $senseApp');
// //print('Response headers: ${response.headers}');
//   cookie = response.headers['set-cookie'];

//   print('GOT cookie: $cookie');
//   var global = await getGlobalWithCooky(host, port, cookie);
//   global.applications = JSON.decode(response.body)['senseApps'];
//   return global;
// //  var app = await global.openDoc(senseApp);
// }
