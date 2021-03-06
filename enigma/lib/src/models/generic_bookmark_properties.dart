/// This file was autogenerated

library generic_bookmark_properties;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_info.dart';
import 'package:built_value/json_object.dart';
part 'generic_bookmark_properties.g.dart';

abstract class GenericBookmarkProperties
    implements
        Built<GenericBookmarkProperties, GenericBookmarkPropertiesBuilder> {
  static Serializer<GenericBookmarkProperties> get serializer =>
      _$genericBookmarkPropertiesSerializer;

  /// Information about the bookmark.
  /// This parameter is mandatory.
  /// Original name: qInfo
  @nullable
  @BuiltValueField(wireName: 'qInfo')
  NxInfo get info;

  /// Definition of the dynamic properties.
  /// Original name: qMetaDef
  @nullable
  @BuiltValueField(wireName: 'qMetaDef')
  JsonObject get metaDef;

  factory GenericBookmarkProperties(
          [updates(GenericBookmarkPropertiesBuilder b)]) =
      _$GenericBookmarkProperties;

  factory GenericBookmarkProperties.init({NxInfo info, JsonObject metaDef}) =
      _$GenericBookmarkProperties._;

  GenericBookmarkProperties._();
}
