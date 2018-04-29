// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_suggest_item;

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

Serializer<SearchSuggestItem> _$searchSuggestItemSerializer =
    new _$SearchSuggestItemSerializer();

class _$SearchSuggestItemSerializer
    implements StructuredSerializer<SearchSuggestItem> {
  @override
  final Iterable<Type> types = const [SearchSuggestItem, _$SearchSuggestItem];
  @override
  final String wireName = 'SearchSuggestItem';

  @override
  Iterable serialize(Serializers serializers, SearchSuggestItem object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(object.value,
            specifiedType: const FullType(String)));
    }
    if (object.term != null) {
      result
        ..add('term')
        ..add(serializers.serialize(object.term,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  SearchSuggestItem deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SearchSuggestItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'term':
          result.term = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchSuggestItem extends SearchSuggestItem {
  @override
  final String value;
  @override
  final int term;

  factory _$SearchSuggestItem([void updates(SearchSuggestItemBuilder b)]) =>
      (new SearchSuggestItemBuilder()..update(updates)).build();

  _$SearchSuggestItem._({this.value, this.term}) : super._();

  @override
  SearchSuggestItem rebuild(void updates(SearchSuggestItemBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchSuggestItemBuilder toBuilder() =>
      new SearchSuggestItemBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchSuggestItem) return false;
    return value == other.value && term == other.term;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, value.hashCode), term.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchSuggestItem')
          ..add('value', value)
          ..add('term', term))
        .toString();
  }
}

class SearchSuggestItemBuilder
    implements Builder<SearchSuggestItem, SearchSuggestItemBuilder> {
  _$SearchSuggestItem _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  int _term;
  int get term => _$this._term;
  set term(int term) => _$this._term = term;

  SearchSuggestItemBuilder();

  SearchSuggestItemBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _term = _$v.term;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchSuggestItem other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchSuggestItem;
  }

  @override
  void update(void updates(SearchSuggestItemBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchSuggestItem build() {
    final _$result = _$v ?? new _$SearchSuggestItem._(value: value, term: term);
    replace(_$result);
    return _$result;
  }
}
