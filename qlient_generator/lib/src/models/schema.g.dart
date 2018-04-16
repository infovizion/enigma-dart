// GENERATED CODE - DO NOT MODIFY BY HAND

part of schema;

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

Serializer<Schema> _$schemaSerializer = new _$SchemaSerializer();

class _$SchemaSerializer implements StructuredSerializer<Schema> {
  @override
  final Iterable<Type> types = const [Schema, _$Schema];
  @override
  final String wireName = 'Schema';

  @override
  Iterable serialize(Serializers serializers, Schema object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.definitions != null) {
      result
        ..add('definitions')
        ..add(serializers.serialize(object.definitions,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(SchemaType)])));
    }

    return result;
  }

  @override
  Schema deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SchemaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'definitions':
          result.definitions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(SchemaType)
              ])) as BuiltMap);
          break;
      }
    }

    return result.build();
  }
}

class _$Schema extends Schema {
  @override
  final BuiltMap<String, SchemaType> definitions;

  factory _$Schema([void updates(SchemaBuilder b)]) =>
      (new SchemaBuilder()..update(updates)).build();

  _$Schema._({this.definitions}) : super._();

  @override
  Schema rebuild(void updates(SchemaBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SchemaBuilder toBuilder() => new SchemaBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Schema) return false;
    return definitions == other.definitions;
  }

  @override
  int get hashCode {
    return $jf($jc(0, definitions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Schema')
          ..add('definitions', definitions))
        .toString();
  }
}

class SchemaBuilder implements Builder<Schema, SchemaBuilder> {
  _$Schema _$v;

  MapBuilder<String, SchemaType> _definitions;
  MapBuilder<String, SchemaType> get definitions =>
      _$this._definitions ??= new MapBuilder<String, SchemaType>();
  set definitions(MapBuilder<String, SchemaType> definitions) =>
      _$this._definitions = definitions;

  SchemaBuilder();

  SchemaBuilder get _$this {
    if (_$v != null) {
      _definitions = _$v.definitions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Schema other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Schema;
  }

  @override
  void update(void updates(SchemaBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Schema build() {
    _$Schema _$result;
    try {
      _$result = _$v ?? new _$Schema._(definitions: _definitions?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'definitions';
        _definitions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Schema', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
