import 'dart:async';
import 'package:stream_channel/stream_channel.dart';
import 'dart:convert';
import 'package:logging/logging.dart';
import '../services/global.dart';

class Enigma {
  final Logger logger = new Logger('Engine');

  int _nextRequestId = 0;

  int get nextRequestId => _nextRequestId;

  void setNextRequestId(int value) {
    _nextRequestId = value;
  }

  StreamChannel channel;
  bool closed = false;
  Map<String, String> headers;
  List<bool Function(int, Map)> interceptors = <bool Function(int, Map)>[];
  final Map<int, Completer> replyCompleters = new Map<int, Completer>();

  Enigma(this.channel);

  onError(error) {
    logger.severe('ERRORL $error');
  }

  onMessage(message) {
    logger.fine('<<<<< $message');
    Map reply = json.decode(message.toString());
    if (reply['method'] == 'OnLicenseAccessDenied') {
      throw new Exception('OnLicenseAccessDenied ${reply["params"]}');
    }
    if (reply['error'] != null) {
      throw new Exception('QIX-ERROR: $reply');
    }
    int id = reply['id'];
    if (id == null) {
      return;
    }
    for (var interceptor in interceptors) {
      if (!interceptor(id, reply)) {
        return;
      }
    }
    var completer = replyCompleters.remove(reply['id']);
    assert(completer != null);
    completer.complete(reply);
  }

  void updateRequestId() {
    _nextRequestId++;
  }

  Future<Map> query(int handle, String method, args) async {
    updateRequestId();
    var request = {
      'method': method,
      'handle': handle,
      'params': args,
      'id': nextRequestId,
      'jsonrpc': '2.0'
    };
    logger.fine('$method >>>>>>>> ${json.encode(request)}');
    return rawQuery(request);
  }

  Future<Map> rawQuery(Map queryMessage) {
    var completer = new Completer<Map>();
    if (!closed) {
      assert(queryMessage['id'] != null);
      replyCompleters[queryMessage['id']] = completer;
      var message = json.encode(queryMessage);
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

  Global open() {
    channel.stream.listen(onMessage, onError: onError);
    return new Global(this, -1);
  }
}
