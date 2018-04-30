/// This file was autogenerated

library object_interface;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'object_interface.g.dart';

abstract class ObjectInterface
    implements Built<ObjectInterface, ObjectInterfaceBuilder> {
  static Serializer<ObjectInterface> get serializer =>
      _$objectInterfaceSerializer;

  /// Original name: qType
  @nullable
  @BuiltValueField(wireName: 'qType')
  String get type;

  /// Original name: qHandle
  @nullable
  @BuiltValueField(wireName: 'qHandle')
  int get handle;

  /// Original name: qGenericType
  @nullable
  @BuiltValueField(wireName: 'qGenericType')
  String get genericType;

  /// Original name: qGenericId
  @nullable
  @BuiltValueField(wireName: 'qGenericId')
  String get genericId;

  factory ObjectInterface([updates(ObjectInterfaceBuilder b)]) =
      _$ObjectInterface;

  factory ObjectInterface.init(
      {String type,
      int handle,
      String genericType,
      String genericId}) = _$ObjectInterface._;

  ObjectInterface._();
}
