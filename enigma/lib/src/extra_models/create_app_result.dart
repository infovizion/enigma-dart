library create_app_result;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_app_result.g.dart';

abstract class CreateAppResult
    implements Built<CreateAppResult, CreateAppResultBuilder> {
  static Serializer<CreateAppResult> get serializer =>
      _$createAppResultSerializer;

  @nullable
  @BuiltValueField(wireName: 'qSuccess')
  bool get success;

  @nullable
  @BuiltValueField(wireName: 'qAppId')
  String get appId;

  factory CreateAppResult([updates(CreateAppResultBuilder b)]) =
      _$CreateAppResult;
  CreateAppResult._();
}
