/// This file was autogenerated

library delimiter_info;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'delimiter_info.g.dart';

abstract class DelimiterInfo implements Built<DelimiterInfo, DelimiterInfoBuilder> {

 static Serializer<DelimiterInfo> get serializer => _$delimiterInfoSerializer;

  /// Name of the delimiter.
  /// Example:
  /// "Tab_DELIMITER"
  /// Original name: qName
  @nullable
  String get name;

  /// Representation of the delimiter value that is used in the script.
  /// Example:
  /// "'\t'"
  /// Original name: qScriptCode
  @nullable
  String get scriptCode;

  /// Delimiter character number used by the engine to determine how to separate the values.
  /// Original name: qNumber
  @nullable
  int get number;

  /// Is set to true if multiple spaces are used to separate the values.
  /// Original name: qIsMultiple
  @nullable
  bool get isMultiple;

  factory DelimiterInfo([updates(DelimiterInfoBuilder b)]) = _$DelimiterInfo;

  factory DelimiterInfo.init({String name, String scriptCode, int number, bool isMultiple}) = _$DelimiterInfo._;

  DelimiterInfo._();
}
