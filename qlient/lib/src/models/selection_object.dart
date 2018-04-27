/// This file was autogenerated

library selection_object;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'selection_object.g.dart';

/// Indicates which selections are currently applied. It gives the current selections. Is the layout for _SelectionObjectDef_.
abstract class SelectionObject
    implements Built<SelectionObject, SelectionObjectBuilder> {
  static Serializer<SelectionObject> get serializer =>
      _$selectionObjectSerializer;

  /// Number of steps back.
  /// Original name: qBackCount
  @nullable
  int get backCount;

  /// Number of steps forward.
  /// Original name: qForwardCount
  @nullable
  int get forwardCount;

  /// Lists the fields that are selected.
  /// Original name: qSelections
  @nullable
  BuiltList<NxCell> get selections;

  factory SelectionObject([updates(SelectionObjectBuilder b)]) =
      _$SelectionObject;

  factory SelectionObject.init(
      {int backCount,
      int forwardCount,
      BuiltList<NxCell> selections}) = _$SelectionObject._;

  SelectionObject._();
}
