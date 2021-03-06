/// This file was autogenerated

library nx_matching_field_info;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
part 'nx_matching_field_info.g.dart';

abstract class NxMatchingFieldInfo
    implements Built<NxMatchingFieldInfo, NxMatchingFieldInfoBuilder> {
  static Serializer<NxMatchingFieldInfo> get serializer =>
      _$nxMatchingFieldInfoSerializer;

  /// Name of the field.
  /// Original name: qName
  @nullable
  @BuiltValueField(wireName: 'qName')
  String get name;

  /// List of tags.
  /// Original name: qTags
  @nullable
  @BuiltValueField(wireName: 'qTags')
  BuiltList<String> get tags;

  factory NxMatchingFieldInfo([updates(NxMatchingFieldInfoBuilder b)]) =
      _$NxMatchingFieldInfo;

  factory NxMatchingFieldInfo.init({String name, BuiltList<String> tags}) =
      _$NxMatchingFieldInfo._;

  NxMatchingFieldInfo._();
}
