library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'models.dart';

part 'serializers.g.dart';

@SerializersFor(const [
    Schema,
    SchemaType,
])
final Serializers serializers = _$serializers;