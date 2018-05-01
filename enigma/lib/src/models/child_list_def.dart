/// This file was autogenerated

library child_list_def;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
part 'child_list_def.g.dart';

/// Defines the list of children of a generic object.
/// What is defined in _ChildListDef_ has an impact on what the _GetLayout_ method returns. See _Example_ for more information.
abstract class ChildListDef
    implements Built<ChildListDef, ChildListDefBuilder> {
  static Serializer<ChildListDef> get serializer => _$childListDefSerializer;

  /// Data that you want to include in the child list definition.
  /// You need to enter the paths to the information you want to retrieve.
  /// Original name: qData
  @nullable
  @BuiltValueField(wireName: 'qData')
  JsonObject get data;

  factory ChildListDef([updates(ChildListDefBuilder b)]) = _$ChildListDef;

  factory ChildListDef.init({JsonObject data}) = _$ChildListDef._;

  ChildListDef._();
}