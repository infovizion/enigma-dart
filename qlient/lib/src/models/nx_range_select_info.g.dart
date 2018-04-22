// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_range_select_info;

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

Serializer<NxRangeSelectInfo> _$nxRangeSelectInfoSerializer =
    new _$NxRangeSelectInfoSerializer();

class _$NxRangeSelectInfoSerializer
    implements StructuredSerializer<NxRangeSelectInfo> {
  @override
  final Iterable<Type> types = const [NxRangeSelectInfo, _$NxRangeSelectInfo];
  @override
  final String wireName = 'NxRangeSelectInfo';

  @override
  Iterable serialize(Serializers serializers, NxRangeSelectInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.range != null) {
      result
        ..add('range')
        ..add(serializers.serialize(object.range,
            specifiedType: const FullType(Range)));
    }
    if (object.measureIx != null) {
      result
        ..add('measureIx')
        ..add(serializers.serialize(object.measureIx,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  NxRangeSelectInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxRangeSelectInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'range':
          result.range.replace(serializers.deserialize(value,
              specifiedType: const FullType(Range)) as Range);
          break;
        case 'measureIx':
          result.measureIx = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$NxRangeSelectInfo extends NxRangeSelectInfo {
  @override
  final Range range;
  @override
  final int measureIx;

  factory _$NxRangeSelectInfo([void updates(NxRangeSelectInfoBuilder b)]) =>
      (new NxRangeSelectInfoBuilder()..update(updates)).build();

  _$NxRangeSelectInfo._({this.range, this.measureIx}) : super._();

  @override
  NxRangeSelectInfo rebuild(void updates(NxRangeSelectInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxRangeSelectInfoBuilder toBuilder() =>
      new NxRangeSelectInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxRangeSelectInfo) return false;
    return range == other.range && measureIx == other.measureIx;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, range.hashCode), measureIx.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxRangeSelectInfo')
          ..add('range', range)
          ..add('measureIx', measureIx))
        .toString();
  }
}

class NxRangeSelectInfoBuilder
    implements Builder<NxRangeSelectInfo, NxRangeSelectInfoBuilder> {
  _$NxRangeSelectInfo _$v;

  RangeBuilder _range;
  RangeBuilder get range => _$this._range ??= new RangeBuilder();
  set range(RangeBuilder range) => _$this._range = range;

  int _measureIx;
  int get measureIx => _$this._measureIx;
  set measureIx(int measureIx) => _$this._measureIx = measureIx;

  NxRangeSelectInfoBuilder();

  NxRangeSelectInfoBuilder get _$this {
    if (_$v != null) {
      _range = _$v.range?.toBuilder();
      _measureIx = _$v.measureIx;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxRangeSelectInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxRangeSelectInfo;
  }

  @override
  void update(void updates(NxRangeSelectInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxRangeSelectInfo build() {
    _$NxRangeSelectInfo _$result;
    try {
      _$result = _$v ??
          new _$NxRangeSelectInfo._(
              range: _range?.build(), measureIx: measureIx);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'range';
        _range?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxRangeSelectInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
