// GENERATED CODE - DO NOT MODIFY BY HAND

part of child_list;

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

Serializer<ChildList> _$childListSerializer = new _$ChildListSerializer();

class _$ChildListSerializer implements StructuredSerializer<ChildList> {
  @override
  final Iterable<Type> types = const [ChildList, _$ChildList];
  @override
  final String wireName = 'ChildList';

  @override
  Iterable serialize(Serializers serializers, ChildList object,
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
  ChildList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ChildListBuilder();

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

class _$ChildList extends ChildList {
  @override
  final List<NxCell> items;

  factory _$ChildList([void updates(ChildListBuilder b)]) =>
      (new ChildListBuilder()..update(updates)).build();

  _$ChildList._({this.items}) : super._();

  @override
  ChildList rebuild(void updates(ChildListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ChildListBuilder toBuilder() => new ChildListBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ChildList) return false;
    return items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChildList')..add('items', items))
        .toString();
  }
}

class ChildListBuilder implements Builder<ChildList, ChildListBuilder> {
  _$ChildList _$v;

  List<NxCell> _items;
  List<NxCell> get items => _$this._items;
  set items(List<NxCell> items) => _$this._items = items;

  ChildListBuilder();

  ChildListBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChildList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ChildList;
  }

  @override
  void update(void updates(ChildListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ChildList build() {
    final _$result = _$v ?? new _$ChildList._(items: items);
    replace(_$result);
    return _$result;
  }
}
