// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_multi_range_select_info;

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

Serializer<NxMultiRangeSelectInfo> _$nxMultiRangeSelectInfoSerializer =
    new _$NxMultiRangeSelectInfoSerializer();

class _$NxMultiRangeSelectInfoSerializer
    implements StructuredSerializer<NxMultiRangeSelectInfo> {
  @override
  final Iterable<Type> types = const [
    NxMultiRangeSelectInfo,
    _$NxMultiRangeSelectInfo
  ];
  @override
  final String wireName = 'NxMultiRangeSelectInfo';

  @override
  Iterable serialize(Serializers serializers, NxMultiRangeSelectInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.ranges != null) {
      result
        ..add('qRanges')
        ..add(serializers.serialize(object.ranges,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.columnsToSelect != null) {
      result
        ..add('qColumnsToSelect')
        ..add(serializers.serialize(object.columnsToSelect,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  NxMultiRangeSelectInfo deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxMultiRangeSelectInfoBuilder();

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
        case 'qColumnsToSelect':
          result.columnsToSelect.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$NxMultiRangeSelectInfo extends NxMultiRangeSelectInfo {
  @override
  final BuiltList<NxCell> ranges;
  @override
  final BuiltList<NxCell> columnsToSelect;

  factory _$NxMultiRangeSelectInfo(
          [void updates(NxMultiRangeSelectInfoBuilder b)]) =>
      (new NxMultiRangeSelectInfoBuilder()..update(updates)).build();

  _$NxMultiRangeSelectInfo._({this.ranges, this.columnsToSelect}) : super._();

  @override
  NxMultiRangeSelectInfo rebuild(
          void updates(NxMultiRangeSelectInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxMultiRangeSelectInfoBuilder toBuilder() =>
      new NxMultiRangeSelectInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxMultiRangeSelectInfo) return false;
    return ranges == other.ranges && columnsToSelect == other.columnsToSelect;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, ranges.hashCode), columnsToSelect.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxMultiRangeSelectInfo')
          ..add('ranges', ranges)
          ..add('columnsToSelect', columnsToSelect))
        .toString();
  }
}

class NxMultiRangeSelectInfoBuilder
    implements Builder<NxMultiRangeSelectInfo, NxMultiRangeSelectInfoBuilder> {
  _$NxMultiRangeSelectInfo _$v;

  ListBuilder<NxCell> _ranges;
  ListBuilder<NxCell> get ranges =>
      _$this._ranges ??= new ListBuilder<NxCell>();
  set ranges(ListBuilder<NxCell> ranges) => _$this._ranges = ranges;

  ListBuilder<NxCell> _columnsToSelect;
  ListBuilder<NxCell> get columnsToSelect =>
      _$this._columnsToSelect ??= new ListBuilder<NxCell>();
  set columnsToSelect(ListBuilder<NxCell> columnsToSelect) =>
      _$this._columnsToSelect = columnsToSelect;

  NxMultiRangeSelectInfoBuilder();

  NxMultiRangeSelectInfoBuilder get _$this {
    if (_$v != null) {
      _ranges = _$v.ranges?.toBuilder();
      _columnsToSelect = _$v.columnsToSelect?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxMultiRangeSelectInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxMultiRangeSelectInfo;
  }

  @override
  void update(void updates(NxMultiRangeSelectInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxMultiRangeSelectInfo build() {
    _$NxMultiRangeSelectInfo _$result;
    try {
      _$result = _$v ??
          new _$NxMultiRangeSelectInfo._(
              ranges: _ranges?.build(),
              columnsToSelect: _columnsToSelect?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ranges';
        _ranges?.build();
        _$failedField = 'columnsToSelect';
        _columnsToSelect?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxMultiRangeSelectInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
