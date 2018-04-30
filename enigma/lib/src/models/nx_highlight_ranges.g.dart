// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_highlight_ranges;

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

Serializer<NxHighlightRanges> _$nxHighlightRangesSerializer =
    new _$NxHighlightRangesSerializer();

class _$NxHighlightRangesSerializer
    implements StructuredSerializer<NxHighlightRanges> {
  @override
  final Iterable<Type> types = const [NxHighlightRanges, _$NxHighlightRanges];
  @override
  final String wireName = 'NxHighlightRanges';

  @override
  Iterable serialize(Serializers serializers, NxHighlightRanges object,
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
  NxHighlightRanges deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxHighlightRangesBuilder();

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

class _$NxHighlightRanges extends NxHighlightRanges {
  @override
  final BuiltList<NxCell> ranges;

  factory _$NxHighlightRanges([void updates(NxHighlightRangesBuilder b)]) =>
      (new NxHighlightRangesBuilder()..update(updates)).build();

  _$NxHighlightRanges._({this.ranges}) : super._();

  @override
  NxHighlightRanges rebuild(void updates(NxHighlightRangesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxHighlightRangesBuilder toBuilder() =>
      new NxHighlightRangesBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxHighlightRanges) return false;
    return ranges == other.ranges;
  }

  @override
  int get hashCode {
    return $jf($jc(0, ranges.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxHighlightRanges')
          ..add('ranges', ranges))
        .toString();
  }
}

class NxHighlightRangesBuilder
    implements Builder<NxHighlightRanges, NxHighlightRangesBuilder> {
  _$NxHighlightRanges _$v;

  ListBuilder<NxCell> _ranges;
  ListBuilder<NxCell> get ranges =>
      _$this._ranges ??= new ListBuilder<NxCell>();
  set ranges(ListBuilder<NxCell> ranges) => _$this._ranges = ranges;

  NxHighlightRangesBuilder();

  NxHighlightRangesBuilder get _$this {
    if (_$v != null) {
      _ranges = _$v.ranges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxHighlightRanges other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxHighlightRanges;
  }

  @override
  void update(void updates(NxHighlightRangesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxHighlightRanges build() {
    _$NxHighlightRanges _$result;
    try {
      _$result = _$v ?? new _$NxHighlightRanges._(ranges: _ranges?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ranges';
        _ranges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxHighlightRanges', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
