// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_tree_multi_range_select_info;

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

Serializer<NxTreeMultiRangeSelectInfo> _$nxTreeMultiRangeSelectInfoSerializer =
    new _$NxTreeMultiRangeSelectInfoSerializer();

class _$NxTreeMultiRangeSelectInfoSerializer
    implements StructuredSerializer<NxTreeMultiRangeSelectInfo> {
  @override
  final Iterable<Type> types = const [
    NxTreeMultiRangeSelectInfo,
    _$NxTreeMultiRangeSelectInfo
  ];
  @override
  final String wireName = 'NxTreeMultiRangeSelectInfo';

  @override
  Iterable serialize(Serializers serializers, NxTreeMultiRangeSelectInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.ranges != null) {
      result
        ..add('qRanges')
        ..add(serializers.serialize(object.ranges,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  NxTreeMultiRangeSelectInfo deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxTreeMultiRangeSelectInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qRanges':
          result.ranges.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$NxTreeMultiRangeSelectInfo extends NxTreeMultiRangeSelectInfo {
  @override
  final BuiltList<NxCell> ranges;

  factory _$NxTreeMultiRangeSelectInfo(
          [void updates(NxTreeMultiRangeSelectInfoBuilder b)]) =>
      (new NxTreeMultiRangeSelectInfoBuilder()..update(updates)).build();

  _$NxTreeMultiRangeSelectInfo._({this.ranges}) : super._();

  @override
  NxTreeMultiRangeSelectInfo rebuild(
          void updates(NxTreeMultiRangeSelectInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxTreeMultiRangeSelectInfoBuilder toBuilder() =>
      new NxTreeMultiRangeSelectInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxTreeMultiRangeSelectInfo) return false;
    return ranges == other.ranges;
  }

  @override
  int get hashCode {
    return $jf($jc(0, ranges.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxTreeMultiRangeSelectInfo')
          ..add('ranges', ranges))
        .toString();
  }
}

class NxTreeMultiRangeSelectInfoBuilder
    implements
        Builder<NxTreeMultiRangeSelectInfo, NxTreeMultiRangeSelectInfoBuilder> {
  _$NxTreeMultiRangeSelectInfo _$v;

  ListBuilder<NxCell> _ranges;
  ListBuilder<NxCell> get ranges =>
      _$this._ranges ??= new ListBuilder<NxCell>();
  set ranges(ListBuilder<NxCell> ranges) => _$this._ranges = ranges;

  NxTreeMultiRangeSelectInfoBuilder();

  NxTreeMultiRangeSelectInfoBuilder get _$this {
    if (_$v != null) {
      _ranges = _$v.ranges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxTreeMultiRangeSelectInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxTreeMultiRangeSelectInfo;
  }

  @override
  void update(void updates(NxTreeMultiRangeSelectInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxTreeMultiRangeSelectInfo build() {
    _$NxTreeMultiRangeSelectInfo _$result;
    try {
      _$result =
          _$v ?? new _$NxTreeMultiRangeSelectInfo._(ranges: _ranges?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ranges';
        _ranges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxTreeMultiRangeSelectInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
