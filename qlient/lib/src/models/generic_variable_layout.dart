/// This file was autogenerated

library generic_variable_layout;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_info.dart';
import 'nx_meta.dart';
part 'generic_variable_layout.g.dart';

/// Is the layout for _GenericVariableProperties_.
abstract class GenericVariableLayout implements Built<GenericVariableLayout, GenericVariableLayoutBuilder> {

 static Serializer<GenericVariableLayout> get serializer => _$genericVariableLayoutSerializer;

  /// Identifier and type of the object.
  /// This parameter is mandatory.
  /// Original name: qInfo
  @nullable
  NxInfo get info;

  /// Information about publishing and permissions.
  /// This parameter is optional.
  /// Original name: qMeta
  @nullable
  NxMeta get meta;

  /// Some text.
  /// Original name: qText
  @nullable
  String get text;

  /// A value.
  /// Original name: qNum
  @nullable
  num get qNum;

  /// If set to true, it means that the variable was defined via script.
  /// Original name: qIsScriptCreated
  @nullable
  bool get isScriptCreated;

  factory GenericVariableLayout([updates(GenericVariableLayoutBuilder b)]) = _$GenericVariableLayout;

  GenericVariableLayout._();
}
