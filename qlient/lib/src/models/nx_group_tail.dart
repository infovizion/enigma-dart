/// This file was autogenerated

library nx_group_tail;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'nx_group_tail.g.dart';

abstract class NxGroupTail implements Built<NxGroupTail, NxGroupTailBuilder> {
  static Serializer<NxGroupTail> get serializer => _$nxGroupTailSerializer;

  /// Number of elements that are part of the previous tail.
  /// This number depends on the paging, more particularly it depends on the values defined in _qTop_ and _qHeight_ .
  /// Is not shown if the value is 0.
  /// This parameter is optional.
  /// Original name: qUp
  @nullable
  int get up;

  /// Number of elements that are part of the next tail.
  /// This number depends on the paging, more particularly it depends on the values defined in _qTop_ and _qHeight_
  /// Is not shown if the value is 0.
  /// This parameter is optional.
  /// Original name: qDown
  @nullable
  int get down;

  factory NxGroupTail([updates(NxGroupTailBuilder b)]) = _$NxGroupTail;

  factory NxGroupTail.init({int up, int down}) = _$NxGroupTail._;

  NxGroupTail._();
}
