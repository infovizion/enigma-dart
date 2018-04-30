/// This file was autogenerated

library static_content_list_item;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'static_content_list_item.g.dart';

/// <div class=note>In addition, this structure can return dynamic properties.</div>
abstract class StaticContentListItem
    implements Built<StaticContentListItem, StaticContentListItemBuilder> {
  static Serializer<StaticContentListItem> get serializer =>
      _$staticContentListItemSerializer;

  /// Relative path to the content file. The URL is static.
  /// In Qlik Sense Enterprise, content files located:
  /// * In the _/content/ &lt;content library name&gt;/_ folder are part of a global content library.
  /// * In the _/appcontent/_ folder are part of the app specific library.
  /// The content files are never embedded in the _qvf_ file.
  /// In Qlik Sense Desktop, content files located:
  /// * In the _/content/default/_ folder are outside the qvf file.
  /// * In the _/media/ folder_ are embedded in the qvf file.
  /// Original name: qUrlDef
  @nullable
  @BuiltValueField(wireName: 'qUrlDef')
  String get urlDef;

  /// Relative path to the content file. The URL is static.
  /// In Qlik Sense Enterprise, content files located:
  /// * In the _/content/ &lt;content library name&gt;/_ folder are part of a global content library.
  /// * In the _/appcontent/_ folder are part of the app specific library.
  /// The content files are never embedded in the _qvf_ file.
  /// In Qlik Sense Desktop, content files located:
  /// * In the _/content/default/_ folder are outside the qvf file.
  /// * In the _/media/ folder_ are embedded in the qvf file.
  /// Original name: qUrl
  @nullable
  @BuiltValueField(wireName: 'qUrl')
  String get url;

  factory StaticContentListItem([updates(StaticContentListItemBuilder b)]) =
      _$StaticContentListItem;

  factory StaticContentListItem.init({String urlDef, String url}) =
      _$StaticContentListItem._;

  StaticContentListItem._();
}
