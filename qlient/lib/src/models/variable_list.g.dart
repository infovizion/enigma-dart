// GENERATED CODE - DO NOT MODIFY BY HAND

part of variable_list;

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

Serializer<VariableList> _$variableListSerializer =
    new _$VariableListSerializer();

class _$VariableListSerializer implements StructuredSerializer<VariableList> {
  @override
  final Iterable<Type> types = const [VariableList, _$VariableList];
  @override
  final String wireName = 'VariableList';

  @override
  Iterable serialize(Serializers serializers, VariableList object,
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
  VariableList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new VariableListBuilder();

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

class _$VariableList extends VariableList {
  @override
  final List<NxCell> items;

  factory _$VariableList([void updates(VariableListBuilder b)]) =>
      (new VariableListBuilder()..update(updates)).build();

  _$VariableList._({this.items}) : super._();

  @override
  VariableList rebuild(void updates(VariableListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  VariableListBuilder toBuilder() => new VariableListBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! VariableList) return false;
    return items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VariableList')..add('items', items))
        .toString();
  }
}

class VariableListBuilder
    implements Builder<VariableList, VariableListBuilder> {
  _$VariableList _$v;

  List<NxCell> _items;
  List<NxCell> get items => _$this._items;
  set items(List<NxCell> items) => _$this._items = items;

  VariableListBuilder();

  VariableListBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VariableList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$VariableList;
  }

  @override
  void update(void updates(VariableListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$VariableList build() {
    final _$result = _$v ?? new _$VariableList._(items: items);
    replace(_$result);
    return _$result;
  }
}
