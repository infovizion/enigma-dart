// GENERATED CODE - DO NOT MODIFY BY HAND

part of range_select_info;

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

Serializer<RangeSelectInfo> _$rangeSelectInfoSerializer =
    new _$RangeSelectInfoSerializer();

class _$RangeSelectInfoSerializer
    implements StructuredSerializer<RangeSelectInfo> {
  @override
  final Iterable<Type> types = const [RangeSelectInfo, _$RangeSelectInfo];
  @override
  final String wireName = 'RangeSelectInfo';

  @override
  Iterable serialize(Serializers serializers, RangeSelectInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.rangeLo != null) {
      result
        ..add('rangeLo')
        ..add(serializers.serialize(object.rangeLo,
            specifiedType: const FullType(num)));
    }
    if (object.rangeHi != null) {
      result
        ..add('rangeHi')
        ..add(serializers.serialize(object.rangeHi,
            specifiedType: const FullType(num)));
    }
    if (object.measure != null) {
      result
        ..add('measure')
        ..add(serializers.serialize(object.measure,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  RangeSelectInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new RangeSelectInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'rangeLo':
          result.rangeLo = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'rangeHi':
          result.rangeHi = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'measure':
          result.measure = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RangeSelectInfo extends RangeSelectInfo {
  @override
  final num rangeLo;
  @override
  final num rangeHi;
  @override
  final String measure;

  factory _$RangeSelectInfo([void updates(RangeSelectInfoBuilder b)]) =>
      (new RangeSelectInfoBuilder()..update(updates)).build();

  _$RangeSelectInfo._({this.rangeLo, this.rangeHi, this.measure}) : super._();

  @override
  RangeSelectInfo rebuild(void updates(RangeSelectInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  RangeSelectInfoBuilder toBuilder() =>
      new RangeSelectInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! RangeSelectInfo) return false;
    return rangeLo == other.rangeLo &&
        rangeHi == other.rangeHi &&
        measure == other.measure;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, rangeLo.hashCode), rangeHi.hashCode), measure.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RangeSelectInfo')
          ..add('rangeLo', rangeLo)
          ..add('rangeHi', rangeHi)
          ..add('measure', measure))
        .toString();
  }
}

class RangeSelectInfoBuilder
    implements Builder<RangeSelectInfo, RangeSelectInfoBuilder> {
  _$RangeSelectInfo _$v;

  num _rangeLo;
  num get rangeLo => _$this._rangeLo;
  set rangeLo(num rangeLo) => _$this._rangeLo = rangeLo;

  num _rangeHi;
  num get rangeHi => _$this._rangeHi;
  set rangeHi(num rangeHi) => _$this._rangeHi = rangeHi;

  String _measure;
  String get measure => _$this._measure;
  set measure(String measure) => _$this._measure = measure;

  RangeSelectInfoBuilder();

  RangeSelectInfoBuilder get _$this {
    if (_$v != null) {
      _rangeLo = _$v.rangeLo;
      _rangeHi = _$v.rangeHi;
      _measure = _$v.measure;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RangeSelectInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$RangeSelectInfo;
  }

  @override
  void update(void updates(RangeSelectInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$RangeSelectInfo build() {
    final _$result = _$v ??
        new _$RangeSelectInfo._(
            rangeLo: rangeLo, rangeHi: rangeHi, measure: measure);
    replace(_$result);
    return _$result;
  }
}
