// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_object_list;

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

Serializer<AppObjectList> _$appObjectListSerializer =
    new _$AppObjectListSerializer();

class _$AppObjectListSerializer implements StructuredSerializer<AppObjectList> {
  @override
  final Iterable<Type> types = const [AppObjectList, _$AppObjectList];
  @override
  final String wireName = 'AppObjectList';

  @override
  Iterable serialize(Serializers serializers, AppObjectList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.items != null) {
      result
        ..add('qItems')
        ..add(serializers.serialize(object.items,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxContainerEntry)])));
    }

    return result;
  }

  @override
  AppObjectList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppObjectListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qItems':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxContainerEntry)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$AppObjectList extends AppObjectList {
  @override
  final BuiltList<NxContainerEntry> items;

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

  ListBuilder<NxContainerEntry> _items;
  ListBuilder<NxContainerEntry> get items =>
      _$this._items ??= new ListBuilder<NxContainerEntry>();
  set items(ListBuilder<NxContainerEntry> items) => _$this._items = items;

  AppObjectListBuilder();

  AppObjectListBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items?.toBuilder();
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
    _$AppObjectList _$result;
    try {
      _$result = _$v ?? new _$AppObjectList._(items: _items?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppObjectList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
