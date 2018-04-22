// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_object_properties;

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

Serializer<GenericObjectProperties> _$genericObjectPropertiesSerializer =
    new _$GenericObjectPropertiesSerializer();

class _$GenericObjectPropertiesSerializer
    implements StructuredSerializer<GenericObjectProperties> {
  @override
  final Iterable<Type> types = const [
    GenericObjectProperties,
    _$GenericObjectProperties
  ];
  @override
  final String wireName = 'GenericObjectProperties';

  @override
  Iterable serialize(Serializers serializers, GenericObjectProperties object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.info != null) {
      result
        ..add('info')
        ..add(serializers.serialize(object.info,
            specifiedType: const FullType(NxInfo)));
    }
    if (object.extendsId != null) {
      result
        ..add('extendsId')
        ..add(serializers.serialize(object.extendsId,
            specifiedType: const FullType(String)));
    }
    if (object.metaDef != null) {
      result
        ..add('metaDef')
        ..add(serializers.serialize(object.metaDef,
            specifiedType: const FullType(JsonObject)));
    }

    return result;
  }

  @override
  GenericObjectProperties deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new GenericObjectPropertiesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'info':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxInfo)) as NxInfo);
          break;
        case 'extendsId':
          result.extendsId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'metaDef':
          result.metaDef = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
      }
    }

    return result.build();
  }
}

class _$GenericObjectProperties extends GenericObjectProperties {
  @override
  final NxInfo info;
  @override
  final String extendsId;
  @override
  final JsonObject metaDef;

  factory _$GenericObjectProperties(
          [void updates(GenericObjectPropertiesBuilder b)]) =>
      (new GenericObjectPropertiesBuilder()..update(updates)).build();

  _$GenericObjectProperties._({this.info, this.extendsId, this.metaDef})
      : super._();

  @override
  GenericObjectProperties rebuild(
          void updates(GenericObjectPropertiesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GenericObjectPropertiesBuilder toBuilder() =>
      new GenericObjectPropertiesBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GenericObjectProperties) return false;
    return info == other.info &&
        extendsId == other.extendsId &&
        metaDef == other.metaDef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, info.hashCode), extendsId.hashCode), metaDef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenericObjectProperties')
          ..add('info', info)
          ..add('extendsId', extendsId)
          ..add('metaDef', metaDef))
        .toString();
  }
}

class GenericObjectPropertiesBuilder
    implements
        Builder<GenericObjectProperties, GenericObjectPropertiesBuilder> {
  _$GenericObjectProperties _$v;

  NxInfoBuilder _info;
  NxInfoBuilder get info => _$this._info ??= new NxInfoBuilder();
  set info(NxInfoBuilder info) => _$this._info = info;

  String _extendsId;
  String get extendsId => _$this._extendsId;
  set extendsId(String extendsId) => _$this._extendsId = extendsId;

  JsonObject _metaDef;
  JsonObject get metaDef => _$this._metaDef;
  set metaDef(JsonObject metaDef) => _$this._metaDef = metaDef;

  GenericObjectPropertiesBuilder();

  GenericObjectPropertiesBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _extendsId = _$v.extendsId;
      _metaDef = _$v.metaDef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenericObjectProperties other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GenericObjectProperties;
  }

  @override
  void update(void updates(GenericObjectPropertiesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GenericObjectProperties build() {
    _$GenericObjectProperties _$result;
    try {
      _$result = _$v ??
          new _$GenericObjectProperties._(
              info: _info?.build(), extendsId: extendsId, metaDef: metaDef);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenericObjectProperties', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
