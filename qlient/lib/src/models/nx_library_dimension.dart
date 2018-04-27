/// This file was autogenerated

library nx_library_dimension;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'nx_library_dimension.g.dart';

abstract class NxLibraryDimension implements Built<NxLibraryDimension, NxLibraryDimensionBuilder> {

 static Serializer<NxLibraryDimension> get serializer => _$nxLibraryDimensionSerializer;

  /// Information about the grouping.
  /// 
  /// One of:
  /// * N or GRP_NX_NONE
  /// * H or GRP_NX_HIEARCHY
  /// * C or GRP_NX_COLLECTION
  /// Original name: qGrouping
  @nullable
  String get grouping;

  /// Array of dimension names.
  /// Original name: qFieldDefs
  @nullable
  BuiltList<NxCell> get fieldDefs;

  /// Array of dimension labels.
  /// Original name: qFieldLabels
  @nullable
  BuiltList<NxCell> get fieldLabels;

  /// Original name: qLabelExpression
  @nullable
  String get labelExpression;

  factory NxLibraryDimension([updates(NxLibraryDimensionBuilder b)]) = _$NxLibraryDimension;

  factory NxLibraryDimension.init({String grouping, BuiltList<NxCell> fieldDefs, BuiltList<NxCell> fieldLabels, String labelExpression}) = _$NxLibraryDimension._;

  NxLibraryDimension._();
}
