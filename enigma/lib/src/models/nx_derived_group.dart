/// This file was autogenerated

library nx_derived_group;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'nx_derived_group.g.dart';

abstract class NxDerivedGroup
    implements Built<NxDerivedGroup, NxDerivedGroupBuilder> {
  static Serializer<NxDerivedGroup> get serializer =>
      _$nxDerivedGroupSerializer;

  /// Identifier of the group.
  /// Original name: qId
  @nullable
  @BuiltValueField(wireName: 'qId')
  String get id;

  /// Name of the derived group.
  /// Original name: qName
  @nullable
  @BuiltValueField(wireName: 'qName')
  String get name;

  /// Grouping type.
  /// The grouping should be either H or C (Grouping is mandatory for derived definitions).
  /// The parameter is mandatory.
  ///
  /// One of:
  /// * N or GRP_NX_NONE
  /// * H or GRP_NX_HIEARCHY
  /// * C or GRP_NX_COLLECTION
  /// Original name: qGrouping
  @nullable
  @BuiltValueField(wireName: 'qGrouping')
  String get grouping;

  /// List of the derived fields in the group.
  /// Original name: qFieldDefs
  @nullable
  @BuiltValueField(wireName: 'qFieldDefs')
  BuiltList<NxCell> get fieldDefs;

  factory NxDerivedGroup([updates(NxDerivedGroupBuilder b)]) = _$NxDerivedGroup;

  factory NxDerivedGroup.init(
      {String id,
      String name,
      String grouping,
      BuiltList<NxCell> fieldDefs}) = _$NxDerivedGroup._;

  NxDerivedGroup._();
}
