// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_continuous_range_select_info;

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

Serializer<NxContinuousRangeSelectInfo>
    _$nxContinuousRangeSelectInfoSerializer =
    new _$NxContinuousRangeSelectInfoSerializer();

class _$NxContinuousRangeSelectInfoSerializer
    implements StructuredSerializer<NxContinuousRangeSelectInfo> {
  @override
  final Iterable<Type> types = const [
    NxContinuousRangeSelectInfo,
    _$NxContinuousRangeSelectInfo
  ];
  @override
  final String wireName = 'NxContinuousRangeSelectInfo';

  @override
  Iterable serialize(
      Serializers serializers, NxContinuousRangeSelectInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.range != null) {
      result
        ..add('qRange')
        ..add(serializers.serialize(object.range,
            specifiedType: const FullType(Range)));
    }
    if (object.dimIx != null) {
      result
        ..add('qDimIx')
        ..add(serializers.serialize(object.dimIx,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  NxContinuousRangeSelectInfo deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxContinuousRangeSelectInfoBuilder();

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
        case 'qDimIx':
          result.dimIx = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$NxContinuousRangeSelectInfo extends NxContinuousRangeSelectInfo {
  @override
  final Range range;
  @override
  final int dimIx;

  factory _$NxContinuousRangeSelectInfo(
          [void updates(NxContinuousRangeSelectInfoBuilder b)]) =>
      (new NxContinuousRangeSelectInfoBuilder()..update(updates)).build();

  _$NxContinuousRangeSelectInfo._({this.range, this.dimIx}) : super._();

  @override
  NxContinuousRangeSelectInfo rebuild(
          void updates(NxContinuousRangeSelectInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxContinuousRangeSelectInfoBuilder toBuilder() =>
      new NxContinuousRangeSelectInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxContinuousRangeSelectInfo) return false;
    return range == other.range && dimIx == other.dimIx;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, range.hashCode), dimIx.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxContinuousRangeSelectInfo')
          ..add('range', range)
          ..add('dimIx', dimIx))
        .toString();
  }
}

class NxContinuousRangeSelectInfoBuilder
    implements
        Builder<NxContinuousRangeSelectInfo,
            NxContinuousRangeSelectInfoBuilder> {
  _$NxContinuousRangeSelectInfo _$v;

  RangeBuilder _range;
  RangeBuilder get range => _$this._range ??= new RangeBuilder();
  set range(RangeBuilder range) => _$this._range = range;

  int _dimIx;
  int get dimIx => _$this._dimIx;
  set dimIx(int dimIx) => _$this._dimIx = dimIx;

  NxContinuousRangeSelectInfoBuilder();

  NxContinuousRangeSelectInfoBuilder get _$this {
    if (_$v != null) {
      _range = _$v.range?.toBuilder();
      _dimIx = _$v.dimIx;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxContinuousRangeSelectInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxContinuousRangeSelectInfo;
  }

  @override
  void update(void updates(NxContinuousRangeSelectInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxContinuousRangeSelectInfo build() {
    _$NxContinuousRangeSelectInfo _$result;
    try {
      _$result = _$v ??
          new _$NxContinuousRangeSelectInfo._(
              range: _range?.build(), dimIx: dimIx);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'range';
        _range?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxContinuousRangeSelectInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
