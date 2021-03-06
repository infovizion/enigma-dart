/// This file was autogenerated

library nx_simple_dim_value;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'nx_simple_dim_value.g.dart';

abstract class NxSimpleDimValue
    implements Built<NxSimpleDimValue, NxSimpleDimValueBuilder> {
  static Serializer<NxSimpleDimValue> get serializer =>
      _$nxSimpleDimValueSerializer;

  /// Text related to the attribute expression value.
  /// This property is optional. No text is returned if the attribute expression value is a numeric.
  /// Original name: qText
  @nullable
  @BuiltValueField(wireName: 'qText')
  String get text;

  /// Element number.
  /// Original name: qElemNo
  @nullable
  @BuiltValueField(wireName: 'qElemNo')
  int get elemNo;

  factory NxSimpleDimValue([updates(NxSimpleDimValueBuilder b)]) =
      _$NxSimpleDimValue;

  factory NxSimpleDimValue.init({String text, int elemNo}) =
      _$NxSimpleDimValue._;

  NxSimpleDimValue._();
}
