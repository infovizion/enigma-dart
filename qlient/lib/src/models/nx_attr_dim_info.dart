/// This file was autogenerated

library nx_attr_dim_info;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'size.dart';
import 'nx_validation_error.dart';
part 'nx_attr_dim_info.g.dart';

/// Layout for _NxAttrDimDef_.
abstract class NxAttrDimInfo
    implements Built<NxAttrDimInfo, NxAttrDimInfoBuilder> {
  static Serializer<NxAttrDimInfo> get serializer => _$nxAttrDimInfoSerializer;

  /// Cardinality of the attribute expression.
  /// Original name: qCardinal
  @nullable
  int get cardinal;

  /// Number of rows.
  /// Original name: qSize
  @nullable
  Size get size;

  /// The title for the attribute dimension.
  /// Original name: qFallbackTitle
  @nullable
  String get fallbackTitle;

  /// The Locked value of the dimension.
  /// Original name: qLocked
  @nullable
  bool get locked;

  /// Validation error.
  /// Original name: qError
  @nullable
  NxValidationError get error;

  /// True if this is a calculated dimension.
  /// Original name: qIsCalculated
  @nullable
  bool get isCalculated;

  factory NxAttrDimInfo([updates(NxAttrDimInfoBuilder b)]) = _$NxAttrDimInfo;

  factory NxAttrDimInfo.init(
      {int cardinal,
      Size size,
      String fallbackTitle,
      bool locked,
      NxValidationError error,
      bool isCalculated}) = _$NxAttrDimInfo._;

  NxAttrDimInfo._();
}
