/// This file was autogenerated

library nx_app_properties;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'static_content_url_def.dart';
part 'nx_app_properties.g.dart';

/// ### Qlik Sense Desktop
/// In Qlik Sense Desktop, this structure can contain dynamic properties.
///
/// ### Qlik Sense Enterprise
/// In Qlik Sense Enterprise, only a few dynamic properties at the app level are persisted.
/// The persisted dynamic properties are the following:
/// * modifiedDate
/// * published
/// * publishTime
/// * privileges
/// * description
/// * dynamicColor
abstract class NxAppProperties
    implements Built<NxAppProperties, NxAppPropertiesBuilder> {
  static Serializer<NxAppProperties> get serializer =>
      _$nxAppPropertiesSerializer;

  /// App title.
  /// Original name: qTitle
  @nullable
  @BuiltValueField(wireName: 'qTitle')
  String get title;

  /// Last reload time of the app.
  /// Original name: qLastReloadTime
  @nullable
  @BuiltValueField(wireName: 'qLastReloadTime')
  String get lastReloadTime;

  /// Internal property reserved for app migration.
  /// Patch version of the app.
  /// Do not update.
  /// Original name: qMigrationHash
  @nullable
  @BuiltValueField(wireName: 'qMigrationHash')
  String get migrationHash;

  /// Internal property reserved for app migration.
  /// The app is saved in this version of the product.
  /// Do not update.
  /// Original name: qSavedInProductVersion
  @nullable
  @BuiltValueField(wireName: 'qSavedInProductVersion')
  String get savedInProductVersion;

  /// App thumbnail.
  /// Original name: qThumbnail
  @nullable
  @BuiltValueField(wireName: 'qThumbnail')
  StaticContentUrlDef get thumbnail;

  factory NxAppProperties([updates(NxAppPropertiesBuilder b)]) =
      _$NxAppProperties;

  factory NxAppProperties.init(
      {String title,
      String lastReloadTime,
      String migrationHash,
      String savedInProductVersion,
      StaticContentUrlDef thumbnail}) = _$NxAppProperties._;

  NxAppProperties._();
}
