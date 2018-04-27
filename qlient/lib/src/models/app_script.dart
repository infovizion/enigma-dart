/// This file was autogenerated

library app_script;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_meta.dart';
part 'app_script.g.dart';

abstract class AppScript implements Built<AppScript, AppScriptBuilder> {

 static Serializer<AppScript> get serializer => _$appScriptSerializer;

  /// Script text.
  /// Original name: qScript
  @nullable
  String get script;

  /// Information about publishing and permissions.
  /// This parameter is optional.
  /// Original name: qMeta
  @nullable
  NxMeta get meta;

  factory AppScript([updates(AppScriptBuilder b)]) = _$AppScript;

  factory AppScript.init({String script, NxMeta meta}) = _$AppScript._;

  AppScript._();
}
