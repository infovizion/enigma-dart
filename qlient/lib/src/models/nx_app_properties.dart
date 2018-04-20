/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'static_content_url_def.dart';

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
class NxAppProperties {
  /// App title.
  /// Original name: qTitle
  String title;
  /// Last reload time of the app.
  /// Original name: qLastReloadTime
  String lastReloadTime;
  /// Internal property reserved for app migration.
  /// Patch version of the app.
  /// Do not update.
  /// Original name: qMigrationHash
  String migrationHash;
  /// Internal property reserved for app migration.
  /// The app is saved in this version of the product.
  /// Do not update.
  /// Original name: qSavedInProductVersion
  String savedInProductVersion;
  /// App thumbnail.
  /// Original name: qThumbnail
  StaticContentUrlDef thumbnail;
}

