// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_tree_range_select_info;

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

Serializer<NxTreeRangeSelectInfo> _$nxTreeRangeSelectInfoSerializer =
    new _$NxTreeRangeSelectInfoSerializer();

class _$NxTreeRangeSelectInfoSerializer
    implements StructuredSerializer<NxTreeRangeSelectInfo> {
  @override
  final Iterable<Type> types = const [
    NxTreeRangeSelectInfo,
    _$NxTreeRangeSelectInfo
  ];
  @override
  final String wireName = 'NxTreeRangeSelectInfo';

  @override
  Iterable serialize(Serializers serializers, NxTreeRangeSelectInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.range != null) {
      result
        ..add('qRange')
        ..add(serializers.serialize(object.range,
            specifiedType: const FullType(Range)));
    }
    if (object.measureIx != null) {
      result
        ..add('qMeasureIx')
        ..add(serializers.serialize(object.measureIx,
            specifiedType: const FullType(int)));
    }
    if (object.dimensionIx != null) {
      result
        ..add('qDimensionIx')
        ..add(serializers.serialize(object.dimensionIx,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  NxTreeRangeSelectInfo deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxTreeRangeSelectInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qRange':
          result.range.replace(serializers.deserialize(value,
              specifiedType: const FullType(Range)) as Range);
          break;
        case 'qMeasureIx':
          result.measureIx = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qDimensionIx':
          result.dimensionIx = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$NxTreeRangeSelectInfo extends NxTreeRangeSelectInfo {
  @override
  final Range range;
  @override
  final int measureIx;
  @override
  final int dimensionIx;

  factory _$NxTreeRangeSelectInfo(
          [void updates(NxTreeRangeSelectInfoBuilder b)]) =>
      (new NxTreeRangeSelectInfoBuilder()..update(updates)).build();

  _$NxTreeRangeSelectInfo._({this.range, this.measureIx, this.dimensionIx})
      : super._();

  @override
  NxTreeRangeSelectInfo rebuild(void updates(NxTreeRangeSelectInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxTreeRangeSelectInfoBuilder toBuilder() =>
      new NxTreeRangeSelectInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxTreeRangeSelectInfo) return false;
    return range == other.range &&
        measureIx == other.measureIx &&
        dimensionIx == other.dimensionIx;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, range.hashCode), measureIx.hashCode), dimensionIx.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxTreeRangeSelectInfo')
          ..add('range', range)
          ..add('measureIx', measureIx)
          ..add('dimensionIx', dimensionIx))
        .toString();
  }
}

class NxTreeRangeSelectInfoBuilder
    implements Builder<NxTreeRangeSelectInfo, NxTreeRangeSelectInfoBuilder> {
  _$NxTreeRangeSelectInfo _$v;

  RangeBuilder _range;
  RangeBuilder get range => _$this._range ??= new RangeBuilder();
  set range(RangeBuilder range) => _$this._range = range;

  int _measureIx;
  int get measureIx => _$this._measureIx;
  set measureIx(int measureIx) => _$this._measureIx = measureIx;

  int _dimensionIx;
  int get dimensionIx => _$this._dimensionIx;
  set dimensionIx(int dimensionIx) => _$this._dimensionIx = dimensionIx;

  NxTreeRangeSelectInfoBuilder();

  NxTreeRangeSelectInfoBuilder get _$this {
    if (_$v != null) {
      _range = _$v.range?.toBuilder();
      _measureIx = _$v.measureIx;
      _dimensionIx = _$v.dimensionIx;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxTreeRangeSelectInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxTreeRangeSelectInfo;
  }

  @override
  void update(void updates(NxTreeRangeSelectInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxTreeRangeSelectInfo build() {
    _$NxTreeRangeSelectInfo _$result;
    try {
      _$result = _$v ??
          new _$NxTreeRangeSelectInfo._(
              range: _range?.build(),
              measureIx: measureIx,
              dimensionIx: dimensionIx);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'range';
        _range?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxTreeRangeSelectInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
