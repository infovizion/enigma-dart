/// This file was autogenerated

library nx_variable_list_item;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_meta.dart';
import 'nx_info.dart';
import 'package:built_value/json_object.dart';
part 'nx_variable_list_item.g.dart';

abstract class NxVariableListItem implements Built<NxVariableListItem, NxVariableListItemBuilder> {

 static Serializer<NxVariableListItem> get serializer => _$nxVariableListItemSerializer;

  /// Name of the variable.
  /// Original name: qName
  @nullable
  String get name;

  /// Description of the variable.
  /// Original name: qDescription
  @nullable
  String get description;

  /// Definition of the variable. It can be a value or an expression.
  /// Original name: qDefinition
  @nullable
  String get definition;

  /// If set to true, it means that the variable is a system variable.
  /// A system variable provides information about the system and is set by the engine. The content cannot be changed by the user.
  /// This parameter is optional.
  /// The default value is false.
  /// Original name: qIsConfig
  @nullable
  bool get isConfig;

  /// If set to true, it means that the variable is reserved.
  /// The default value is false.
  /// This parameter is optional.
  /// Examples:
  /// * _ScriptError_ is a reserved variable, set by the engine.
  /// * _DayNames_ is a reserved variable, set by the user.
  /// Original name: qIsReserved
  @nullable
  bool get isReserved;

  /// Information about publishing and permissions.
  /// This parameter is optional.
  /// Original name: qMeta
  @nullable
  NxMeta get meta;

  /// Identifier and type of the object.
  /// This parameter is mandatory.
  /// Original name: qInfo
  @nullable
  NxInfo get info;

  /// Data.
  /// Original name: qData
  @nullable
  JsonObject get data;

  /// If set to true, it means that the variable was defined via script.
  /// Original name: qIsScriptCreated
  @nullable
  bool get isScriptCreated;

  factory NxVariableListItem([updates(NxVariableListItemBuilder b)]) = _$NxVariableListItem;

  NxVariableListItem._();
}
