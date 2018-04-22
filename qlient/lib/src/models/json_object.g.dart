// GENERATED CODE - DO NOT MODIFY BY HAND

part of json_object;

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<JsonObject> _$jsonObjectSerializer = new _$JsonObjectSerializer();

class _$JsonObjectSerializer implements StructuredSerializer<JsonObject> {
  @override
  final Iterable<Type> types = const [JsonObject, _$JsonObject];
  @override
  final String wireName = 'JsonObject';

  @override
  Iterable serialize(Serializers serializers, JsonObject object,
      {FullType specifiedType: FullType.unspecified}) {
    return <Object>[];
  }

  @override
  JsonObject deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    return new JsonObjectBuilder().build();
  }
}

class _$JsonObject extends JsonObject {
  factory _$JsonObject([void updates(JsonObjectBuilder b)]) =>
      (new JsonObjectBuilder()..update(updates)).build();

  _$JsonObject._() : super._();

  @override
  JsonObject rebuild(void updates(JsonObjectBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonObjectBuilder toBuilder() => new JsonObjectBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! JsonObject) return false;
    return true;
  }

  @override
  int get hashCode {
    return 1852380;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('JsonObject').toString();
  }
}

class JsonObjectBuilder implements Builder<JsonObject, JsonObjectBuilder> {
  _$JsonObject _$v;

  JsonObjectBuilder();

  @override
  void replace(JsonObject other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$JsonObject;
  }

  @override
  void update(void updates(JsonObjectBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$JsonObject build() {
    final _$result = _$v ?? new _$JsonObject._();
    replace(_$result);
    return _$result;
  }
}
