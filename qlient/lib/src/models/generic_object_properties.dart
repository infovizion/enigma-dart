/// This file was autogenerated

library generic_object_properties;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_info.dart';
import 'package:built_value/json_object.dart';
part 'generic_object_properties.g.dart';

abstract class GenericObjectProperties implements Built<GenericObjectProperties, GenericObjectPropertiesBuilder> {

 static Serializer<GenericObjectProperties> get serializer => _$genericObjectPropertiesSerializer;

  /// Identifier and type of the object.
  /// This parameter is mandatory.
  /// Original name: qInfo
  @nullable
  NxInfo get info;

  /// Should be set to create an object that is linked to another object. Enter the identifier of the linking object (i.e the object you want to link to).
  /// This parameter is mandatory.
  /// If you do not want to link your object, set this parameter to an empty string.
  /// Original name: qExtendsId
  @nullable
  String get extendsId;

  /// Definition of the dynamic properties.
  /// Original name: qMetaDef
  @nullable
  JsonObject get metaDef;

  factory GenericObjectProperties([updates(GenericObjectPropertiesBuilder b)]) = _$GenericObjectProperties;

  GenericObjectProperties._();
}
