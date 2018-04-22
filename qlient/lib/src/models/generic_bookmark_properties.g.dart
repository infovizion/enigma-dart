// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_bookmark_properties;

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

Serializer<GenericBookmarkProperties> _$genericBookmarkPropertiesSerializer =
    new _$GenericBookmarkPropertiesSerializer();

class _$GenericBookmarkPropertiesSerializer
    implements StructuredSerializer<GenericBookmarkProperties> {
  @override
  final Iterable<Type> types = const [
    GenericBookmarkProperties,
    _$GenericBookmarkProperties
  ];
  @override
  final String wireName = 'GenericBookmarkProperties';

  @override
  Iterable serialize(Serializers serializers, GenericBookmarkProperties object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.info != null) {
      result
        ..add('info')
        ..add(serializers.serialize(object.info,
            specifiedType: const FullType(NxInfo)));
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
  GenericBookmarkProperties deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new GenericBookmarkPropertiesBuilder();

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
        case 'metaDef':
          result.metaDef = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
      }
    }

    return result.build();
  }
}

class _$GenericBookmarkProperties extends GenericBookmarkProperties {
  @override
  final NxInfo info;
  @override
  final JsonObject metaDef;

  factory _$GenericBookmarkProperties(
          [void updates(GenericBookmarkPropertiesBuilder b)]) =>
      (new GenericBookmarkPropertiesBuilder()..update(updates)).build();

  _$GenericBookmarkProperties._({this.info, this.metaDef}) : super._();

  @override
  GenericBookmarkProperties rebuild(
          void updates(GenericBookmarkPropertiesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GenericBookmarkPropertiesBuilder toBuilder() =>
      new GenericBookmarkPropertiesBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GenericBookmarkProperties) return false;
    return info == other.info && metaDef == other.metaDef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, info.hashCode), metaDef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenericBookmarkProperties')
          ..add('info', info)
          ..add('metaDef', metaDef))
        .toString();
  }
}

class GenericBookmarkPropertiesBuilder
    implements
        Builder<GenericBookmarkProperties, GenericBookmarkPropertiesBuilder> {
  _$GenericBookmarkProperties _$v;

  NxInfoBuilder _info;
  NxInfoBuilder get info => _$this._info ??= new NxInfoBuilder();
  set info(NxInfoBuilder info) => _$this._info = info;

  JsonObject _metaDef;
  JsonObject get metaDef => _$this._metaDef;
  set metaDef(JsonObject metaDef) => _$this._metaDef = metaDef;

  GenericBookmarkPropertiesBuilder();

  GenericBookmarkPropertiesBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _metaDef = _$v.metaDef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenericBookmarkProperties other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GenericBookmarkProperties;
  }

  @override
  void update(void updates(GenericBookmarkPropertiesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GenericBookmarkProperties build() {
    _$GenericBookmarkProperties _$result;
    try {
      _$result = _$v ??
          new _$GenericBookmarkProperties._(
              info: _info?.build(), metaDef: metaDef);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenericBookmarkProperties', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
