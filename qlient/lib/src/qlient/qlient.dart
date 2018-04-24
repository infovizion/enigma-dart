import 'dart:async';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'dart:convert';
import 'package:logging/logging.dart';
// import '../services/global.dart';

class Qlient {
  final Logger logger = new Logger('Engine');
  int seqId = 0;
  final WebSocketChannel channel;
  bool closed = false;
  Map<String, String> headers;
  final Map<int, Completer> replyCompleters = new Map<int, Completer>();
  Qlient(this.channel);

  onError(error) {
    print('ERRORL $error');
  }

  onMessage(String message) {
    print('<<<<<');
    print(message);
    Map reply = JSON.decode(message);
    if (reply['method'] == 'OnLicenseAccessDenied') {
      throw new Exception('OnLicenseAccessDenied ${reply["params"]}');
    }
    if (reply['method'] == 'OnAuthenticationInformation') {
      return;
    }
    if (reply['error'] != null) {
      throw new Exception('QIX-ERROR: $reply');
    }
    int id = reply['id'];
    if (id == null) {
      print(message);
      return;
    }
    var completer = replyCompleters.remove(reply['id']);
    assert(completer != null);
    completer.complete(reply);
    // if (id == -1) {
    //   completer.complete(new Global(this));
    // } else {
    //   completer.complete(reply);
    // }
  }

  Future<Map> query(int handle, String method, args) async {
    seqId++;

    var request = {
      'method': method,
      'handle': handle,
      'params': args,
      'id': seqId,
      'jsonrpc': '2.0'
    };
    print('$method >>>>>>>>');
    print(new JsonEncoder().convert(request));
    return rawQuery(request);
  }

  Future<Map> rawQuery(Map queryMessage) {
    Completer completer = new Completer();
    if (!closed) {
      assert(queryMessage['id'] != null);
      replyCompleters[queryMessage['id']] = completer;
      var message = JSON.encode(queryMessage);
      channel.sink.add(message);
    } else {
      completer.completeError(
          new Exception("Invalid state: Connection already closed."));
    }
    return completer.future;
  }

  close() async {
    channel.sink.close();
  }

  Future<Map> queryList(int handle, String method, List args) async {
    return await query(handle, method, args);
  }
}
