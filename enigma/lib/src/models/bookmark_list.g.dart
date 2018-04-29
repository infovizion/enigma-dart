// GENERATED CODE - DO NOT MODIFY BY HAND

part of bookmark_list;

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

Serializer<BookmarkList> _$bookmarkListSerializer =
    new _$BookmarkListSerializer();

class _$BookmarkListSerializer implements StructuredSerializer<BookmarkList> {
  @override
  final Iterable<Type> types = const [BookmarkList, _$BookmarkList];
  @override
  final String wireName = 'BookmarkList';

  @override
  Iterable serialize(Serializers serializers, BookmarkList object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.items != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  BookmarkList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new BookmarkListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$BookmarkList extends BookmarkList {
  @override
  final BuiltList<NxCell> items;

  factory _$BookmarkList([void updates(BookmarkListBuilder b)]) =>
      (new BookmarkListBuilder()..update(updates)).build();

  _$BookmarkList._({this.items}) : super._();

  @override
  BookmarkList rebuild(void updates(BookmarkListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BookmarkListBuilder toBuilder() => new BookmarkListBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! BookmarkList) return false;
    return items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BookmarkList')..add('items', items))
        .toString();
  }
}

class BookmarkListBuilder
    implements Builder<BookmarkList, BookmarkListBuilder> {
  _$BookmarkList _$v;

  ListBuilder<NxCell> _items;
  ListBuilder<NxCell> get items => _$this._items ??= new ListBuilder<NxCell>();
  set items(ListBuilder<NxCell> items) => _$this._items = items;

  BookmarkListBuilder();

  BookmarkListBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookmarkList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$BookmarkList;
  }

  @override
  void update(void updates(BookmarkListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$BookmarkList build() {
    _$BookmarkList _$result;
    try {
      _$result = _$v ?? new _$BookmarkList._(items: _items?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BookmarkList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
