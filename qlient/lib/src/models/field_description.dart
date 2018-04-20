/// This code was autogenerated
import 'package:built_value/built_value.dart';


class FieldDescription {
  /// Internal number of the field.
  /// Original name: qInternalNumber
  int internalNumber;
  /// Name of the field.
  /// Original name: qName
  String name;
  /// List of table names.
  /// Original name: qSrcTables
  null srcTables;
  /// If set to true, it means that the field is a system field.
  /// The default value is false.
  /// Original name: qIsSystem
  bool isSystem;
  /// If set to true, it means that the field is hidden.
  /// The default value is false.
  /// Original name: qIsHidden
  bool isHidden;
  /// If set to true, it means that the field is a semantic.
  /// The default value is false.
  /// Original name: qIsSemantic
  bool isSemantic;
  /// If set to true, only distinct field values are shown.
  /// The default value is false.
  /// Original name: qDistinctOnly
  bool distinctOnly;
  /// Number of distinct field values.
  /// Original name: qCardinal
  int cardinal;
  /// Total number of field values.
  /// Original name: qTotalCount
  int totalCount;
  /// Original name: qPossibleCount_OBSOLETE
  int possibleCountOBSOLETE;
  /// Original name: qHasInfo_OBSOLETE
  bool hasInfoOBSOLETE;
  /// If set to true, it means that the field is locked.
  /// The default value is false.
  /// Original name: qIsLocked
  bool isLocked;
  /// If set to true, it means that the field has one and only one selection (not 0 and not more than 1).
  /// If this property is set to true, the field cannot be cleared anymore and no more selections can be performed in that field.
  /// The default value is false.
  /// Original name: qAlwaysOneSelected
  bool alwaysOneSelected;
  /// If set to true a logical AND (instead of a logical OR) is used when making selections in a field.
  /// The default value is false.
  /// Original name: qAndMode
  bool andMode;
  /// Is set to true if the value is a numeric.
  /// The default value is false.
  /// Original name: qIsNumeric
  bool isNumeric;
  /// Field comment.
  /// Original name: qComment
  String comment;
  /// Gives information on a field. For example, it can return the type of the field.
  /// Examples: key, text, ASCII.
  /// Original name: qTags
  null tags;
  /// If set to true, it means that the field is a field on the fly.
  /// The default value is false.
  /// Original name: qIsDefinitionOnly
  bool isDefinitionOnly;
  /// Static RAM memory used in bytes.
  /// Original name: qByteSize
  int byteSize;
}

