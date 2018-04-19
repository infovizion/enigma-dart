library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'models.dart';

part 'serializers.g.dart';

@SerializersFor(const [
    Schema,
    SchemaType,
    LibraryData
])
final Serializers serializers = _$serializers;