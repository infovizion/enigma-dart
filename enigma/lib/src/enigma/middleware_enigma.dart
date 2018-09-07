import 'package:enigma/enigma.dart';
import 'package:stream_channel/stream_channel.dart';
import 'dart:async';
import 'dart:convert';

class MiddlewareEnigma extends Enigma {
  bool isActive = true;

  MiddlewareEnigma(StreamChannel channel) : super(channel) {
    setNextRequestId(-1);
  }

  MiddlewareEnigma.on(Enigma enigma) : super(enigma.channel) {
    setNextRequestId(-1);
    enigma.interceptors.add(enigmaInterceptor);
  }
  void updateRequestId() {
    setNextRequestId(nextRequestId - 1);
  }

  Global open() {
    return new Global(this, -1);
  }
  bool enigmaInterceptor(int id, Map reply) {
    if (replyCompleters.isEmpty) {
      return true;
    }
    print('enigmaIntercepror requestId $nextRequestId $reply');
    if (id >= 0) {
      return true;
    }
    var completer = replyCompleters.remove(reply['id']);
    assert(completer != null);
    completer.complete(reply);
    return false;
  }

  bool plainInterceptor(message) {
    if (!replyCompleters.isEmpty) {
      return true;
    }
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
      return true;
    }
    if (id >= 0) {
      return true;
    }
    var completer = replyCompleters.remove(reply['id']);
    assert(completer != null);
    completer.complete(reply);
    return false;
  }
}
