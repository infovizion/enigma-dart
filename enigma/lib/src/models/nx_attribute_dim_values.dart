/// This file was autogenerated

library nx_attribute_dim_values;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_simple_dim_value.dart';
import 'package:built_collection/built_collection.dart';
part 'nx_attribute_dim_values.g.dart';

abstract class NxAttributeDimValues
    implements Built<NxAttributeDimValues, NxAttributeDimValuesBuilder> {
  static Serializer<NxAttributeDimValues> get serializer =>
      _$nxAttributeDimValuesSerializer;

  /// List of values.
  /// Original name: qValues
  @nullable
  @BuiltValueField(wireName: 'qValues')
  BuiltList<NxSimpleDimValue> get values;

  factory NxAttributeDimValues([updates(NxAttributeDimValuesBuilder b)]) =
      _$NxAttributeDimValues;

  factory NxAttributeDimValues.init({BuiltList<NxSimpleDimValue> values}) =
      _$NxAttributeDimValues._;

  NxAttributeDimValues._();
}