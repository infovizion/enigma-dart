import 'dart:async';
import 'enigma.dart';

abstract class BaseService {
  String get serviceType;
  Enigma enigma;
  int handle;
  BaseService(this.enigma, this.handle);
  String toString() => '$serviceType(handle: $handle)';
  Future<dynamic> query(String method, Map params) => enigma.query(handle, method, params);
}