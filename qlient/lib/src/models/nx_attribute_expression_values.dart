/// This file was autogenerated

library nx_attribute_expression_values;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'nx_attribute_expression_values.g.dart';

abstract class NxAttributeExpressionValues
    implements
        Built<NxAttributeExpressionValues, NxAttributeExpressionValuesBuilder> {
  static Serializer<NxAttributeExpressionValues> get serializer =>
      _$nxAttributeExpressionValuesSerializer;

  /// List of attribute expressions values.
  /// Original name: qValues
  @nullable
  BuiltList<NxCell> get values;

  factory NxAttributeExpressionValues(
          [updates(NxAttributeExpressionValuesBuilder b)]) =
      _$NxAttributeExpressionValues;

  factory NxAttributeExpressionValues.init({BuiltList<NxCell> values}) =
      _$NxAttributeExpressionValues._;

  NxAttributeExpressionValues._();
}
