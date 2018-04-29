// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_range;

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

Serializer<NxRange> _$nxRangeSerializer = new _$NxRangeSerializer();

class _$NxRangeSerializer implements StructuredSerializer<NxRange> {
  @override
  final Iterable<Type> types = const [NxRange, _$NxRange];
  @override
  final String wireName = 'NxRange';

  @override
  Iterable serialize(Serializers serializers, NxRange object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.from != null) {
      result
        ..add('from')
        ..add(serializers.serialize(object.from,
            specifiedType: const FullType(int)));
    }
    if (object.count != null) {
      result
        ..add('count')
        ..add(serializers.serialize(object.count,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  NxRange deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxRangeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'from':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$NxRange extends NxRange {
  @override
  final int from;
  @override
  final int count;

  factory _$NxRange([void updates(NxRangeBuilder b)]) =>
      (new NxRangeBuilder()..update(updates)).build();

  _$NxRange._({this.from, this.count}) : super._();

  @override
  NxRange rebuild(void updates(NxRangeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxRangeBuilder toBuilder() => new NxRangeBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxRange) return false;
    return from == other.from && count == other.count;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, from.hashCode), count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxRange')
          ..add('from', from)
          ..add('count', count))
        .toString();
  }
}

class NxRangeBuilder implements Builder<NxRange, NxRangeBuilder> {
  _$NxRange _$v;

  int _from;
  int get from => _$this._from;
  set from(int from) => _$this._from = from;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  NxRangeBuilder();

  NxRangeBuilder get _$this {
    if (_$v != null) {
      _from = _$v.from;
      _count = _$v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxRange other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxRange;
  }

  @override
  void update(void updates(NxRangeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxRange build() {
    final _$result = _$v ?? new _$NxRange._(from: from, count: count);
    replace(_$result);
    return _$result;
  }
}
