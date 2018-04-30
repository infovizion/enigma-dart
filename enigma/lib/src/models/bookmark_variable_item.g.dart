// GENERATED CODE - DO NOT MODIFY BY HAND

part of bookmark_variable_item;

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

Serializer<BookmarkVariableItem> _$bookmarkVariableItemSerializer =
    new _$BookmarkVariableItemSerializer();

class _$BookmarkVariableItemSerializer
    implements StructuredSerializer<BookmarkVariableItem> {
  @override
  final Iterable<Type> types = const [
    BookmarkVariableItem,
    _$BookmarkVariableItem
  ];
  @override
  final String wireName = 'BookmarkVariableItem';

  @override
  Iterable serialize(Serializers serializers, BookmarkVariableItem object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.value != null) {
      result
        ..add('qValue')
        ..add(serializers.serialize(object.value,
            specifiedType: const FullType(FieldValue)));
    }

    return result;
  }

  @override
  BookmarkVariableItem deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new BookmarkVariableItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qName':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qValue':
          result.value.replace(serializers.deserialize(value,
              specifiedType: const FullType(FieldValue)) as FieldValue);
          break;
      }
    }

    return result.build();
  }
}

class _$BookmarkVariableItem extends BookmarkVariableItem {
  @override
  final String name;
  @override
  final FieldValue value;

  factory _$BookmarkVariableItem(
          [void updates(BookmarkVariableItemBuilder b)]) =>
      (new BookmarkVariableItemBuilder()..update(updates)).build();

  _$BookmarkVariableItem._({this.name, this.value}) : super._();

  @override
  BookmarkVariableItem rebuild(void updates(BookmarkVariableItemBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BookmarkVariableItemBuilder toBuilder() =>
      new BookmarkVariableItemBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! BookmarkVariableItem) return false;
    return name == other.name && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BookmarkVariableItem')
          ..add('name', name)
          ..add('value', value))
        .toString();
  }
}

class BookmarkVariableItemBuilder
    implements Builder<BookmarkVariableItem, BookmarkVariableItemBuilder> {
  _$BookmarkVariableItem _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  FieldValueBuilder _value;
  FieldValueBuilder get value => _$this._value ??= new FieldValueBuilder();
  set value(FieldValueBuilder value) => _$this._value = value;

  BookmarkVariableItemBuilder();

  BookmarkVariableItemBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _value = _$v.value?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookmarkVariableItem other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$BookmarkVariableItem;
  }

  @override
  void update(void updates(BookmarkVariableItemBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$BookmarkVariableItem build() {
    _$BookmarkVariableItem _$result;
    try {
      _$result = _$v ??
          new _$BookmarkVariableItem._(name: name, value: _value?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'value';
        _value?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BookmarkVariableItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
