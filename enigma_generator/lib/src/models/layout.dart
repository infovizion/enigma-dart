library layout;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'schema_type.dart';

part 'layout.g.dart';

abstract class Layout implements Built<Layout, LayoutBuilder> {

  static Serializer<Layout> get serializer => _$layoutSerializer;
  SchemaType get prop;
  SchemaType get layout;
  factory Layout([updates(LayoutBuilder b)]) = _$Layout;
  Layout._();
}
  
  