// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_dimension_properties;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<GenericDimensionProperties> _$genericDimensionPropertiesSerializer =
    new _$GenericDimensionPropertiesSerializer();

class _$GenericDimensionPropertiesSerializer
    implements StructuredSerializer<GenericDimensionProperties> {
  @override
  final Iterable<Type> types = const [
    GenericDimensionProperties,
    _$GenericDimensionProperties
  ];
  @override
  final String wireName = 'GenericDimensionProperties';

  @override
  Iterable serialize(Serializers serializers, GenericDimensionProperties object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.info != null) {
      result
        ..add('qInfo')
        ..add(serializers.serialize(object.info,
            specifiedType: const FullType(NxInfo)));
    }
    if (object.dim != null) {
      result
        ..add('qDim')
        ..add(serializers.serialize(object.dim,
            specifiedType: const FullType(NxLibraryDimensionDef)));
    }
    if (object.metaDef != null) {
      result
        ..add('qMetaDef')
        ..add(serializers.serialize(object.metaDef,
            specifiedType: const FullType(JsonObject)));
    }

    return result;
  }

  @override
  GenericDimensionProperties deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenericDimensionPropertiesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qInfo':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxInfo)) as NxInfo);
          break;
        case 'qDim':
          result.dim.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxLibraryDimensionDef))
              as NxLibraryDimensionDef);
          break;
        case 'qMetaDef':
          result.metaDef = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
      }
    }

    return result.build();
  }
}

class _$GenericDimensionProperties extends GenericDimensionProperties {
  @override
  final NxInfo info;
  @override
  final NxLibraryDimensionDef dim;
  @override
  final JsonObject metaDef;

  factory _$GenericDimensionProperties(
          [void updates(GenericDimensionPropertiesBuilder b)]) =>
      (new GenericDimensionPropertiesBuilder()..update(updates)).build();

  _$GenericDimensionProperties._({this.info, this.dim, this.metaDef})
      : super._();

  @override
  GenericDimensionProperties rebuild(
          void updates(GenericDimensionPropertiesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GenericDimensionPropertiesBuilder toBuilder() =>
      new GenericDimensionPropertiesBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GenericDimensionProperties) return false;
    return info == other.info && dim == other.dim && metaDef == other.metaDef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, info.hashCode), dim.hashCode), metaDef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenericDimensionProperties')
          ..add('info', info)
          ..add('dim', dim)
          ..add('metaDef', metaDef))
        .toString();
  }
}

class GenericDimensionPropertiesBuilder
    implements
        Builder<GenericDimensionProperties, GenericDimensionPropertiesBuilder> {
  _$GenericDimensionProperties _$v;

  NxInfoBuilder _info;
  NxInfoBuilder get info => _$this._info ??= new NxInfoBuilder();
  set info(NxInfoBuilder info) => _$this._info = info;

  NxLibraryDimensionDefBuilder _dim;
  NxLibraryDimensionDefBuilder get dim =>
      _$this._dim ??= new NxLibraryDimensionDefBuilder();
  set dim(NxLibraryDimensionDefBuilder dim) => _$this._dim = dim;

  JsonObject _metaDef;
  JsonObject get metaDef => _$this._metaDef;
  set metaDef(JsonObject metaDef) => _$this._metaDef = metaDef;

  GenericDimensionPropertiesBuilder();

  GenericDimensionPropertiesBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _dim = _$v.dim?.toBuilder();
      _metaDef = _$v.metaDef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenericDimensionProperties other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GenericDimensionProperties;
  }

  @override
  void update(void updates(GenericDimensionPropertiesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GenericDimensionProperties build() {
    _$GenericDimensionProperties _$result;
    try {
      _$result = _$v ??
          new _$GenericDimensionProperties._(
              info: _info?.build(), dim: _dim?.build(), metaDef: metaDef);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
        _$failedField = 'dim';
        _dim?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenericDimensionProperties', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
