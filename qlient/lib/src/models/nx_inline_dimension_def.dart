/// This file was autogenerated

library nx_inline_dimension_def;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'nx_inline_dimension_def.g.dart';

abstract class NxInlineDimensionDef implements Built<NxInlineDimensionDef, NxInlineDimensionDefBuilder> {

 static Serializer<NxInlineDimensionDef> get serializer => _$nxInlineDimensionDefSerializer;

  /// Used to define a cyclic group or drill-down group.
  /// Default value is no grouping.
  /// This parameter is optional.
  /// 
  /// One of:
  /// * N or GRP_NX_NONE
  /// * H or GRP_NX_HIEARCHY
  /// * C or GRP_NX_COLLECTION
  /// Original name: qGrouping
  @nullable
  String get grouping;

  /// Array of field names.
  /// When creating a grouped dimension, more than one field name is defined.
  /// This parameter is optional.
  /// Original name: qFieldDefs
  @nullable
  BuiltList<NxCell> get fieldDefs;

  /// Array of field labels.
  /// This parameter is optional.
  /// Original name: qFieldLabels
  @nullable
  BuiltList<NxCell> get fieldLabels;

  /// Defines the sorting criteria in the field.
  /// Default is to sort by alphabetical order, ascending.
  /// This parameter is optional.
  /// Original name: qSortCriterias
  @nullable
  BuiltList<NxCell> get sortCriterias;

  /// Defines the format of the value.
  /// This parameter is optional.
  /// Original name: qNumberPresentations
  @nullable
  BuiltList<NxCell> get numberPresentations;

  /// If set to true, it inverts the sort criteria in the field.
  /// Original name: qReverseSort
  @nullable
  bool get reverseSort;

  /// Index of the active field in a cyclic dimension.
  /// This parameter is optional. The default value is 0.
  /// This parameter is used in case of cyclic dimensions ( _qGrouping_ is C).
  /// Original name: qActiveField
  @nullable
  int get activeField;

  /// Label expression.
  /// This parameter is optional.
  /// Original name: qLabelExpression
  @nullable
  String get labelExpression;

  factory NxInlineDimensionDef([updates(NxInlineDimensionDefBuilder b)]) = _$NxInlineDimensionDef;

  factory NxInlineDimensionDef.init({String grouping, BuiltList<NxCell> fieldDefs, BuiltList<NxCell> fieldLabels, BuiltList<NxCell> sortCriterias, BuiltList<NxCell> numberPresentations, bool reverseSort, int activeField, String labelExpression}) = _$NxInlineDimensionDef._;

  NxInlineDimensionDef._();
}
