/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'field_in_table_data.dart';
import 'point.dart';

class TableRecord {
  /// Name of the table.
  /// Original name: qName
  String name;
  /// This property is set to true if the table is loose.
  /// Original name: qLoose
  bool loose;
  /// Number of rows in the table.
  /// Original name: qNoOfRows
  int noOfRows;
  /// Information about the fields in the table.
  /// Original name: qFields
  null fields;
  /// Information about the position of the table.
  /// Original name: qPos
  Point pos;
  /// Comment related to the table.
  /// Original name: qComment
  String comment;
  /// If set to true, Direct Discovery is used.
  /// Direct Discovery fields are not loaded into memory and remain in the external database.
  /// Original name: qIsDirectDiscovery
  bool isDirectDiscovery;
  /// This property is set to true if the table contains a synthetic key.
  /// Original name: qIsSynthetic
  bool isSynthetic;
}

