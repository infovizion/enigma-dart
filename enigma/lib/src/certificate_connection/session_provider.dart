import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:tuple/tuple.dart';

class SenseSessionProvider {
  static bool _initialized = false;
  final String certificateDir;
  SenseSessionProvider({this.certificateDir: '.certificates'}) {
    if (!_initialized) {
      var context = SecurityContext.defaultContext;
      context.usePrivateKey('$certificateDir/client_key.pem');
      context.useCertificateChain('$certificateDir/client.pem');
      if (new File('$certificateDir/root.pem').existsSync()) {
        context.setTrustedCertificates('$certificateDir/root.pem');
      }
      _initialized = true;
    }
  }
  Future<String> getTicket(String host, String userDir, String userId) async {
    var xrfkey = "0123456789abcdef";
    var uri = Uri.parse('https://$host:4243/qps/ticket?Xrfkey=$xrfkey');
    var headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
      'X-Qlik-Xrfkey': xrfkey
    };
    var body =
        "{ 'UserId':'$userId','UserDirectory':'$userDir','Attributes': []}";
    print('Getting ticket for $userDir@$userId');

    try {
      var response = await http.post(uri, headers: headers, body: body);
      if (response.statusCode != 201) {
        throw new Exception(
            'Error getting ticket: Errorcode=${response.statusCode}, ${response.reasonPhrase}');
      }
      Map ticketInfo = json.decode(response.body);
      return ticketInfo['Ticket'];
    } catch (error, stackTrace) {
      print(error);
      print(stackTrace);
      throw new Exception('Http POST error!');
    }
  }

  Future<String> getSessionCookie(
      String host, int port, String userDir, String userId,
      {String cookiePathPrefix: '.sessions/',
      bool forceNewSession = false}) async {
    String cookie;
    String cookiePath = path.join(cookiePathPrefix, '$userDir.$userId');
    String ticket;
    bool cookieIsFresh = false;
    if (!forceNewSession) {
      var cookieStat = FileStat.statSync(cookiePath);
      if (cookieStat.type != FileSystemEntityType.notFound) {
        var elapsed = new DateTime.now().millisecondsSinceEpoch -
            cookieStat.modified.millisecondsSinceEpoch;
        cookieIsFresh =
            new Duration(milliseconds: elapsed) < new Duration(minutes: 30);
      }
    }
    print('getSessionCookie. cookieIsFresh: $cookieIsFresh, forceNewSession: $forceNewSession');
    if (cookieIsFresh) {
      cookie = new File(cookiePath).readAsStringSync();
    } else {
      ticket = await getTicket(host, userDir, userId);
      print('Got ticket: $ticket');
      var url = 'http://$host:$port/hub/?qlikTicket=' + ticket;
      print(url);
      var response = await http.get(url);

      if (response.statusCode != 200) {
        throw new Exception(
            'Error applying ticket: ${response.statusCode} ${response.reasonPhrase}');
      }
      cookie = response.headers['set-cookie'];
      print('Got cookie $cookie');
      var file = new File(cookiePath);
      file.createSync(recursive: true);
      file.writeAsStringSync(cookie);
      var resCookieStat = FileStat.statSync(cookiePath);
      if (resCookieStat.type == FileSystemEntityType.notFound) {
        throw new Exception('Error writing cookie cache');
      }
    }
    return cookie;
  }
}
