// GENERATED CODE - DO NOT MODIFY BY HAND

part of range;

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

Serializer<Range> _$rangeSerializer = new _$RangeSerializer();

class _$RangeSerializer implements StructuredSerializer<Range> {
  @override
  final Iterable<Type> types = const [Range, _$Range];
  @override
  final String wireName = 'Range';

  @override
  Iterable serialize(Serializers serializers, Range object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.min != null) {
      result
        ..add('qMin')
        ..add(serializers.serialize(object.min,
            specifiedType: const FullType(num)));
    }
    if (object.max != null) {
      result
        ..add('qMax')
        ..add(serializers.serialize(object.max,
            specifiedType: const FullType(num)));
    }
    if (object.minInclEq != null) {
      result
        ..add('qMinInclEq')
        ..add(serializers.serialize(object.minInclEq,
            specifiedType: const FullType(bool)));
    }
    if (object.maxInclEq != null) {
      result
        ..add('qMaxInclEq')
        ..add(serializers.serialize(object.maxInclEq,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  Range deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new RangeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qMin':
          result.min = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'qMax':
          result.max = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'qMinInclEq':
          result.minInclEq = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qMaxInclEq':
          result.maxInclEq = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Range extends Range {
  @override
  final num min;
  @override
  final num max;
  @override
  final bool minInclEq;
  @override
  final bool maxInclEq;

  factory _$Range([void updates(RangeBuilder b)]) =>
      (new RangeBuilder()..update(updates)).build();

  _$Range._({this.min, this.max, this.minInclEq, this.maxInclEq}) : super._();

  @override
  Range rebuild(void updates(RangeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  RangeBuilder toBuilder() => new RangeBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Range) return false;
    return min == other.min &&
        max == other.max &&
        minInclEq == other.minInclEq &&
        maxInclEq == other.maxInclEq;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, min.hashCode), max.hashCode), minInclEq.hashCode),
        maxInclEq.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Range')
          ..add('min', min)
          ..add('max', max)
          ..add('minInclEq', minInclEq)
          ..add('maxInclEq', maxInclEq))
        .toString();
  }
}

class RangeBuilder implements Builder<Range, RangeBuilder> {
  _$Range _$v;

  num _min;
  num get min => _$this._min;
  set min(num min) => _$this._min = min;

  num _max;
  num get max => _$this._max;
  set max(num max) => _$this._max = max;

  bool _minInclEq;
  bool get minInclEq => _$this._minInclEq;
  set minInclEq(bool minInclEq) => _$this._minInclEq = minInclEq;

  bool _maxInclEq;
  bool get maxInclEq => _$this._maxInclEq;
  set maxInclEq(bool maxInclEq) => _$this._maxInclEq = maxInclEq;

  RangeBuilder();

  RangeBuilder get _$this {
    if (_$v != null) {
      _min = _$v.min;
      _max = _$v.max;
      _minInclEq = _$v.minInclEq;
      _maxInclEq = _$v.maxInclEq;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Range other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Range;
  }

  @override
  void update(void updates(RangeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Range build() {
    final _$result = _$v ??
        new _$Range._(
            min: min, max: max, minInclEq: minInclEq, maxInclEq: maxInclEq);
    replace(_$result);
    return _$result;
  }
}
