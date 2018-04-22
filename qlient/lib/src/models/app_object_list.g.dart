// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_object_list;

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

Serializer<AppObjectList> _$appObjectListSerializer =
    new _$AppObjectListSerializer();

class _$AppObjectListSerializer implements StructuredSerializer<AppObjectList> {
  @override
  final Iterable<Type> types = const [AppObjectList, _$AppObjectList];
  @override
  final String wireName = 'AppObjectList';

  @override
  Iterable serialize(Serializers serializers, AppObjectList object,
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
  AppObjectList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new AppObjectListBuilder();

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

class _$AppObjectList extends AppObjectList {
  @override
  final List<NxCell> items;

  factory _$AppObjectList([void updates(AppObjectListBuilder b)]) =>
      (new AppObjectListBuilder()..update(updates)).build();

  _$AppObjectList._({this.items}) : super._();

  @override
  AppObjectList rebuild(void updates(AppObjectListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AppObjectListBuilder toBuilder() => new AppObjectListBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! AppObjectList) return false;
    return items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppObjectList')..add('items', items))
        .toString();
  }
}

class AppObjectListBuilder
    implements Builder<AppObjectList, AppObjectListBuilder> {
  _$AppObjectList _$v;

  List<NxCell> _items;
  List<NxCell> get items => _$this._items;
  set items(List<NxCell> items) => _$this._items = items;

  AppObjectListBuilder();

  AppObjectListBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppObjectList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$AppObjectList;
  }

  @override
  void update(void updates(AppObjectListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AppObjectList build() {
    final _$result = _$v ?? new _$AppObjectList._(items: items);
    replace(_$result);
    return _$result;
  }
}
