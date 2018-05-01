// GENERATED CODE - DO NOT MODIFY BY HAND

part of static_content_list;

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

Serializer<StaticContentList> _$staticContentListSerializer =
    new _$StaticContentListSerializer();

class _$StaticContentListSerializer
    implements StructuredSerializer<StaticContentList> {
  @override
  final Iterable<Type> types = const [StaticContentList, _$StaticContentList];
  @override
  final String wireName = 'StaticContentList';

  @override
  Iterable serialize(Serializers serializers, StaticContentList object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.items != null) {
      result
        ..add('qItems')
        ..add(serializers.serialize(object.items,
            specifiedType: const FullType(
                BuiltList, const [const FullType(StaticContentListItem)])));
    }

    return result;
  }

  @override
  StaticContentList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new StaticContentListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qItems':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(StaticContentListItem)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$StaticContentList extends StaticContentList {
  @override
  final BuiltList<StaticContentListItem> items;

  factory _$StaticContentList([void updates(StaticContentListBuilder b)]) =>
      (new StaticContentListBuilder()..update(updates)).build();

  _$StaticContentList._({this.items}) : super._();

  @override
  StaticContentList rebuild(void updates(StaticContentListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StaticContentListBuilder toBuilder() =>
      new StaticContentListBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! StaticContentList) return false;
    return items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StaticContentList')
          ..add('items', items))
        .toString();
  }
}

class StaticContentListBuilder
    implements Builder<StaticContentList, StaticContentListBuilder> {
  _$StaticContentList _$v;

  ListBuilder<StaticContentListItem> _items;
  ListBuilder<StaticContentListItem> get items =>
      _$this._items ??= new ListBuilder<StaticContentListItem>();
  set items(ListBuilder<StaticContentListItem> items) => _$this._items = items;

  StaticContentListBuilder();

  StaticContentListBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StaticContentList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$StaticContentList;
  }

  @override
  void update(void updates(StaticContentListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$StaticContentList build() {
    _$StaticContentList _$result;
    try {
      _$result = _$v ?? new _$StaticContentList._(items: _items?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'StaticContentList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
