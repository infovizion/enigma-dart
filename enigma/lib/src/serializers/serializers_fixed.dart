library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import 'serializers.dart' as original;
import '../models.dart';

final serializers = (original.serializers.toBuilder()
  ..addBuilderFactory(
      new FullType(BuiltList, [new FullType(NxPivotValuePoint)]),
          () => new ListBuilder<NxPivotValuePoint>()))
    .build();
