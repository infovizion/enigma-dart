// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_measure_layout;

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

Serializer<GenericMeasureLayout> _$genericMeasureLayoutSerializer =
    new _$GenericMeasureLayoutSerializer();

class _$GenericMeasureLayoutSerializer
    implements StructuredSerializer<GenericMeasureLayout> {
  @override
  final Iterable<Type> types = const [
    GenericMeasureLayout,
    _$GenericMeasureLayout
  ];
  @override
  final String wireName = 'GenericMeasureLayout';

  @override
  Iterable serialize(Serializers serializers, GenericMeasureLayout object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.info != null) {
      result
        ..add('info')
        ..add(serializers.serialize(object.info,
            specifiedType: const FullType(NxInfo)));
    }
    if (object.measure != null) {
      result
        ..add('measure')
        ..add(serializers.serialize(object.measure,
            specifiedType: const FullType(NxLibraryMeasure)));
    }
    if (object.meta != null) {
      result
        ..add('meta')
        ..add(serializers.serialize(object.meta,
            specifiedType: const FullType(NxMeta)));
    }

    return result;
  }

  @override
  GenericMeasureLayout deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new GenericMeasureLayoutBuilder();

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
        case 'measure':
          result.measure.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxLibraryMeasure))
              as NxLibraryMeasure);
          break;
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxMeta)) as NxMeta);
          break;
      }
    }

    return result.build();
  }
}

class _$GenericMeasureLayout extends GenericMeasureLayout {
  @override
  final NxInfo info;
  @override
  final NxLibraryMeasure measure;
  @override
  final NxMeta meta;

  factory _$GenericMeasureLayout(
          [void updates(GenericMeasureLayoutBuilder b)]) =>
      (new GenericMeasureLayoutBuilder()..update(updates)).build();

  _$GenericMeasureLayout._({this.info, this.measure, this.meta}) : super._();

  @override
  GenericMeasureLayout rebuild(void updates(GenericMeasureLayoutBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GenericMeasureLayoutBuilder toBuilder() =>
      new GenericMeasureLayoutBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GenericMeasureLayout) return false;
    return info == other.info && measure == other.measure && meta == other.meta;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, info.hashCode), measure.hashCode), meta.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenericMeasureLayout')
          ..add('info', info)
          ..add('measure', measure)
          ..add('meta', meta))
        .toString();
  }
}

class GenericMeasureLayoutBuilder
    implements Builder<GenericMeasureLayout, GenericMeasureLayoutBuilder> {
  _$GenericMeasureLayout _$v;

  NxInfoBuilder _info;
  NxInfoBuilder get info => _$this._info ??= new NxInfoBuilder();
  set info(NxInfoBuilder info) => _$this._info = info;

  NxLibraryMeasureBuilder _measure;
  NxLibraryMeasureBuilder get measure =>
      _$this._measure ??= new NxLibraryMeasureBuilder();
  set measure(NxLibraryMeasureBuilder measure) => _$this._measure = measure;

  NxMetaBuilder _meta;
  NxMetaBuilder get meta => _$this._meta ??= new NxMetaBuilder();
  set meta(NxMetaBuilder meta) => _$this._meta = meta;

  GenericMeasureLayoutBuilder();

  GenericMeasureLayoutBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _measure = _$v.measure?.toBuilder();
      _meta = _$v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenericMeasureLayout other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GenericMeasureLayout;
  }

  @override
  void update(void updates(GenericMeasureLayoutBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GenericMeasureLayout build() {
    _$GenericMeasureLayout _$result;
    try {
      _$result = _$v ??
          new _$GenericMeasureLayout._(
              info: _info?.build(),
              measure: _measure?.build(),
              meta: _meta?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
        _$failedField = 'measure';
        _measure?.build();
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenericMeasureLayout', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
