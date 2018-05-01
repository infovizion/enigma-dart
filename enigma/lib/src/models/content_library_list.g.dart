// GENERATED CODE - DO NOT MODIFY BY HAND

part of content_library_list;

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

Serializer<ContentLibraryList> _$contentLibraryListSerializer =
    new _$ContentLibraryListSerializer();

class _$ContentLibraryListSerializer
    implements StructuredSerializer<ContentLibraryList> {
  @override
  final Iterable<Type> types = const [ContentLibraryList, _$ContentLibraryList];
  @override
  final String wireName = 'ContentLibraryList';

  @override
  Iterable serialize(Serializers serializers, ContentLibraryList object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.items != null) {
      result
        ..add('qItems')
        ..add(serializers.serialize(object.items,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ContentLibraryListItem)])));
    }

    return result;
  }

  @override
  ContentLibraryList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ContentLibraryListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qItems':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ContentLibraryListItem)
              ])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ContentLibraryList extends ContentLibraryList {
  @override
  final BuiltList<ContentLibraryListItem> items;

  factory _$ContentLibraryList([void updates(ContentLibraryListBuilder b)]) =>
      (new ContentLibraryListBuilder()..update(updates)).build();

  _$ContentLibraryList._({this.items}) : super._();

  @override
  ContentLibraryList rebuild(void updates(ContentLibraryListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentLibraryListBuilder toBuilder() =>
      new ContentLibraryListBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ContentLibraryList) return false;
    return items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContentLibraryList')
          ..add('items', items))
        .toString();
  }
}

class ContentLibraryListBuilder
    implements Builder<ContentLibraryList, ContentLibraryListBuilder> {
  _$ContentLibraryList _$v;

  ListBuilder<ContentLibraryListItem> _items;
  ListBuilder<ContentLibraryListItem> get items =>
      _$this._items ??= new ListBuilder<ContentLibraryListItem>();
  set items(ListBuilder<ContentLibraryListItem> items) => _$this._items = items;

  ContentLibraryListBuilder();

  ContentLibraryListBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContentLibraryList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ContentLibraryList;
  }

  @override
  void update(void updates(ContentLibraryListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ContentLibraryList build() {
    _$ContentLibraryList _$result;
    try {
      _$result = _$v ?? new _$ContentLibraryList._(items: _items?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ContentLibraryList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
