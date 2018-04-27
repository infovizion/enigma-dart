/// This file was autogenerated

library derived_fields_in_table_data;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'derived_fields_in_table_data.g.dart';

abstract class DerivedFieldsInTableData
    implements
        Built<DerivedFieldsInTableData, DerivedFieldsInTableDataBuilder> {
  static Serializer<DerivedFieldsInTableData> get serializer =>
      _$derivedFieldsInTableDataSerializer;

  /// Name of the derived definition.
  /// Original name: qDefinitionName
  @nullable
  String get definitionName;

  /// List of tags.
  /// Original name: qTags
  @nullable
  BuiltList<NxCell> get tags;

  /// Is set to true is the derived field is in use.
  /// Original name: qActive
  @nullable
  bool get active;

  factory DerivedFieldsInTableData(
          [updates(DerivedFieldsInTableDataBuilder b)]) =
      _$DerivedFieldsInTableData;

  factory DerivedFieldsInTableData.init(
      {String definitionName,
      BuiltList<NxCell> tags,
      bool active}) = _$DerivedFieldsInTableData._;

  DerivedFieldsInTableData._();
}
