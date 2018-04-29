library service;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'method.dart';

part 'service.g.dart';

abstract class Service implements Built<Service, ServiceBuilder> {

  static Serializer<Service> get serializer => _$serviceSerializer;
  @nullable 
  String get description;

  BuiltMap<String,Method> get methods;

  factory Service([updates(ServiceBuilder b)]) = _$Service;
  Service._();
}
  
  