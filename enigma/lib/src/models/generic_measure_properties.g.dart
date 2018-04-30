// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_measure_properties;

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

Serializer<GenericMeasureProperties> _$genericMeasurePropertiesSerializer =
    new _$GenericMeasurePropertiesSerializer();

class _$GenericMeasurePropertiesSerializer
    implements StructuredSerializer<GenericMeasureProperties> {
  @override
  final Iterable<Type> types = const [
    GenericMeasureProperties,
    _$GenericMeasureProperties
  ];
  @override
  final String wireName = 'GenericMeasureProperties';

  @override
  Iterable serialize(Serializers serializers, GenericMeasureProperties object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.info != null) {
      result
        ..add('qInfo')
        ..add(serializers.serialize(object.info,
            specifiedType: const FullType(NxInfo)));
    }
    if (object.measure != null) {
      result
        ..add('qMeasure')
        ..add(serializers.serialize(object.measure,
            specifiedType: const FullType(NxLibraryMeasureDef)));
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
  GenericMeasureProperties deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new GenericMeasurePropertiesBuilder();

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
        case 'qMeasure':
          result.measure.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxLibraryMeasureDef))
              as NxLibraryMeasureDef);
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

class _$GenericMeasureProperties extends GenericMeasureProperties {
  @override
  final NxInfo info;
  @override
  final NxLibraryMeasureDef measure;
  @override
  final JsonObject metaDef;

  factory _$GenericMeasureProperties(
          [void updates(GenericMeasurePropertiesBuilder b)]) =>
      (new GenericMeasurePropertiesBuilder()..update(updates)).build();

  _$GenericMeasureProperties._({this.info, this.measure, this.metaDef})
      : super._();

  @override
  GenericMeasureProperties rebuild(
          void updates(GenericMeasurePropertiesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GenericMeasurePropertiesBuilder toBuilder() =>
      new GenericMeasurePropertiesBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GenericMeasureProperties) return false;
    return info == other.info &&
        measure == other.measure &&
        metaDef == other.metaDef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, info.hashCode), measure.hashCode), metaDef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenericMeasureProperties')
          ..add('info', info)
          ..add('measure', measure)
          ..add('metaDef', metaDef))
        .toString();
  }
}

class GenericMeasurePropertiesBuilder
    implements
        Builder<GenericMeasureProperties, GenericMeasurePropertiesBuilder> {
  _$GenericMeasureProperties _$v;

  NxInfoBuilder _info;
  NxInfoBuilder get info => _$this._info ??= new NxInfoBuilder();
  set info(NxInfoBuilder info) => _$this._info = info;

  NxLibraryMeasureDefBuilder _measure;
  NxLibraryMeasureDefBuilder get measure =>
      _$this._measure ??= new NxLibraryMeasureDefBuilder();
  set measure(NxLibraryMeasureDefBuilder measure) => _$this._measure = measure;

  JsonObject _metaDef;
  JsonObject get metaDef => _$this._metaDef;
  set metaDef(JsonObject metaDef) => _$this._metaDef = metaDef;

  GenericMeasurePropertiesBuilder();

  GenericMeasurePropertiesBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _measure = _$v.measure?.toBuilder();
      _metaDef = _$v.metaDef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenericMeasureProperties other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GenericMeasureProperties;
  }

  @override
  void update(void updates(GenericMeasurePropertiesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GenericMeasureProperties build() {
    _$GenericMeasureProperties _$result;
    try {
      _$result = _$v ??
          new _$GenericMeasureProperties._(
              info: _info?.build(),
              measure: _measure?.build(),
              metaDef: metaDef);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
        _$failedField = 'measure';
        _measure?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenericMeasureProperties', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
