import 'dart:async';
import 'rpc.dart';

abstract class HandleObject {
  String get serviceType;
  Rpc rpc;
  int handle;
  HandleObject(this.rpc, this.handle);
  String toString() => '$serviceType(handle: $handle)';
  Future<dynamic> query(String method, Map params) => rpc.query(handle, method, params);
}