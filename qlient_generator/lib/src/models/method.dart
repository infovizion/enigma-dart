library method;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'schema_type.dart';
part 'method.g.dart';

abstract class Method implements Built<Method, MethodBuilder> {

  static Serializer<Method> get serializer => _$methodSerializer;
  String get description;
  BuiltList<SchemaType> get parameters; 
  BuiltList<SchemaType> get responses; 
  factory Method([updates(MethodBuilder b)]) = _$Method;
  Method._();
}
  
  