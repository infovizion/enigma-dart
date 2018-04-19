/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'nx_meta.dart';
import 'nx_info.dart';
import 'package:built_value/json_object.dart';

class NxVariableListItem {
  /// Name of the variable.
  String name;
  /// Description of the variable.
  String description;
  /// Definition of the variable. It can be a value or an expression.
  String definition;
  /// If set to true, it means that the variable is a system variable.
  /// A system variable provides information about the system and is set by the engine. The content cannot be changed by the user.
  /// This parameter is optional.
  /// The default value is false.
  bool isConfig;
  /// If set to true, it means that the variable is reserved.
  /// The default value is false.
  /// This parameter is optional.
  /// Examples:
  /// * _ScriptError_ is a reserved variable, set by the engine.
  /// * _DayNames_ is a reserved variable, set by the user.
  bool isReserved;
  /// Information about publishing and permissions.
  /// This parameter is optional.
  NxMeta meta;
  /// Identifier and type of the object.
  /// This parameter is mandatory.
  NxInfo info;
  /// Data.
  JsonObject data;
  /// If set to true, it means that the variable was defined via script.
  bool isScriptCreated;
}

