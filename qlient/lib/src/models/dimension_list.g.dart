// GENERATED CODE - DO NOT MODIFY BY HAND

part of dimension_list;

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

Serializer<DimensionList> _$dimensionListSerializer =
    new _$DimensionListSerializer();

class _$DimensionListSerializer implements StructuredSerializer<DimensionList> {
  @override
  final Iterable<Type> types = const [DimensionList, _$DimensionList];
  @override
  final String wireName = 'DimensionList';

  @override
  Iterable serialize(Serializers serializers, DimensionList object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.items != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  DimensionList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new DimensionListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'items':
          result.items = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
      }
    }

    return result.build();
  }
}

class _$DimensionList extends DimensionList {
  @override
  final List<NxCell> items;

  factory _$DimensionList([void updates(DimensionListBuilder b)]) =>
      (new DimensionListBuilder()..update(updates)).build();

  _$DimensionList._({this.items}) : super._();

  @override
  DimensionList rebuild(void updates(DimensionListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DimensionListBuilder toBuilder() => new DimensionListBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! DimensionList) return false;
    return items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DimensionList')..add('items', items))
        .toString();
  }
}

class DimensionListBuilder
    implements Builder<DimensionList, DimensionListBuilder> {
  _$DimensionList _$v;

  List<NxCell> _items;
  List<NxCell> get items => _$this._items;
  set items(List<NxCell> items) => _$this._items = items;

  DimensionListBuilder();

  DimensionListBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DimensionList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$DimensionList;
  }

  @override
  void update(void updates(DimensionListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DimensionList build() {
    final _$result = _$v ?? new _$DimensionList._(items: items);
    replace(_$result);
    return _$result;
  }
}
