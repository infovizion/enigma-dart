/// This file was autogenerated

library static_content_url_def;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'static_content_url_def.g.dart';

/// <div class=note>In addition, this structure can contain dynamic properties.</div>
abstract class StaticContentUrlDef implements Built<StaticContentUrlDef, StaticContentUrlDefBuilder> {

 static Serializer<StaticContentUrlDef> get serializer => _$staticContentUrlDefSerializer;

  /// Relative path of the thumbnail.
  /// Original name: qUrl
  @nullable
  String get url;

  factory StaticContentUrlDef([updates(StaticContentUrlDefBuilder b)]) = _$StaticContentUrlDef;

  factory StaticContentUrlDef.init({String url}) = _$StaticContentUrlDef._;

  StaticContentUrlDef._();
}
