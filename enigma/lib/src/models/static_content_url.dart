/// This file was autogenerated

library static_content_url;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'static_content_url.g.dart';

/// <div class=note>In addition, this structure can return dynamic properties.</div>
abstract class StaticContentUrl
    implements Built<StaticContentUrl, StaticContentUrlBuilder> {
  static Serializer<StaticContentUrl> get serializer =>
      _$staticContentUrlSerializer;

  /// Relative path of the thumbnail.
  /// Original name: qUrl
  @nullable
  @BuiltValueField(wireName: 'qUrl')
  String get url;

  factory StaticContentUrl([updates(StaticContentUrlBuilder b)]) =
      _$StaticContentUrl;

  factory StaticContentUrl.init({String url}) = _$StaticContentUrl._;

  StaticContentUrl._();
}
