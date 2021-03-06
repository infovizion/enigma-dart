// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_group_item;

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

Serializer<SearchGroupItem> _$searchGroupItemSerializer =
    new _$SearchGroupItemSerializer();

class _$SearchGroupItemSerializer
    implements StructuredSerializer<SearchGroupItem> {
  @override
  final Iterable<Type> types = const [SearchGroupItem, _$SearchGroupItem];
  @override
  final String wireName = 'SearchGroupItem';

  @override
  Iterable serialize(Serializers serializers, SearchGroupItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.itemType != null) {
      result
        ..add('qItemType')
        ..add(serializers.serialize(object.itemType,
            specifiedType: const FullType(String)));
    }
    if (object.totalNumberOfMatches != null) {
      result
        ..add('qTotalNumberOfMatches')
        ..add(serializers.serialize(object.totalNumberOfMatches,
            specifiedType: const FullType(int)));
    }
    if (object.identifier != null) {
      result
        ..add('qIdentifier')
        ..add(serializers.serialize(object.identifier,
            specifiedType: const FullType(String)));
    }
    if (object.itemMatches != null) {
      result
        ..add('qItemMatches')
        ..add(serializers.serialize(object.itemMatches,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SearchGroupItemMatch)])));
    }
    if (object.searchTermsMatched != null) {
      result
        ..add('qSearchTermsMatched')
        ..add(serializers.serialize(object.searchTermsMatched,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }

    return result;
  }

  @override
  SearchGroupItem deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchGroupItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qItemType':
          result.itemType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qTotalNumberOfMatches':
          result.totalNumberOfMatches = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qIdentifier':
          result.identifier = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qItemMatches':
          result.itemMatches.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SearchGroupItemMatch)]))
              as BuiltList);
          break;
        case 'qSearchTermsMatched':
          result.searchTermsMatched.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$SearchGroupItem extends SearchGroupItem {
  @override
  final String itemType;
  @override
  final int totalNumberOfMatches;
  @override
  final String identifier;
  @override
  final BuiltList<SearchGroupItemMatch> itemMatches;
  @override
  final BuiltList<int> searchTermsMatched;

  factory _$SearchGroupItem([void updates(SearchGroupItemBuilder b)]) =>
      (new SearchGroupItemBuilder()..update(updates)).build();

  _$SearchGroupItem._(
      {this.itemType,
      this.totalNumberOfMatches,
      this.identifier,
      this.itemMatches,
      this.searchTermsMatched})
      : super._();

  @override
  SearchGroupItem rebuild(void updates(SearchGroupItemBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchGroupItemBuilder toBuilder() =>
      new SearchGroupItemBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchGroupItem) return false;
    return itemType == other.itemType &&
        totalNumberOfMatches == other.totalNumberOfMatches &&
        identifier == other.identifier &&
        itemMatches == other.itemMatches &&
        searchTermsMatched == other.searchTermsMatched;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, itemType.hashCode), totalNumberOfMatches.hashCode),
                identifier.hashCode),
            itemMatches.hashCode),
        searchTermsMatched.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchGroupItem')
          ..add('itemType', itemType)
          ..add('totalNumberOfMatches', totalNumberOfMatches)
          ..add('identifier', identifier)
          ..add('itemMatches', itemMatches)
          ..add('searchTermsMatched', searchTermsMatched))
        .toString();
  }
}

class SearchGroupItemBuilder
    implements Builder<SearchGroupItem, SearchGroupItemBuilder> {
  _$SearchGroupItem _$v;

  String _itemType;
  String get itemType => _$this._itemType;
  set itemType(String itemType) => _$this._itemType = itemType;

  int _totalNumberOfMatches;
  int get totalNumberOfMatches => _$this._totalNumberOfMatches;
  set totalNumberOfMatches(int totalNumberOfMatches) =>
      _$this._totalNumberOfMatches = totalNumberOfMatches;

  String _identifier;
  String get identifier => _$this._identifier;
  set identifier(String identifier) => _$this._identifier = identifier;

  ListBuilder<SearchGroupItemMatch> _itemMatches;
  ListBuilder<SearchGroupItemMatch> get itemMatches =>
      _$this._itemMatches ??= new ListBuilder<SearchGroupItemMatch>();
  set itemMatches(ListBuilder<SearchGroupItemMatch> itemMatches) =>
      _$this._itemMatches = itemMatches;

  ListBuilder<int> _searchTermsMatched;
  ListBuilder<int> get searchTermsMatched =>
      _$this._searchTermsMatched ??= new ListBuilder<int>();
  set searchTermsMatched(ListBuilder<int> searchTermsMatched) =>
      _$this._searchTermsMatched = searchTermsMatched;

  SearchGroupItemBuilder();

  SearchGroupItemBuilder get _$this {
    if (_$v != null) {
      _itemType = _$v.itemType;
      _totalNumberOfMatches = _$v.totalNumberOfMatches;
      _identifier = _$v.identifier;
      _itemMatches = _$v.itemMatches?.toBuilder();
      _searchTermsMatched = _$v.searchTermsMatched?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchGroupItem other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchGroupItem;
  }

  @override
  void update(void updates(SearchGroupItemBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchGroupItem build() {
    _$SearchGroupItem _$result;
    try {
      _$result = _$v ??
          new _$SearchGroupItem._(
              itemType: itemType,
              totalNumberOfMatches: totalNumberOfMatches,
              identifier: identifier,
              itemMatches: _itemMatches?.build(),
              searchTermsMatched: _searchTermsMatched?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'itemMatches';
        _itemMatches?.build();
        _$failedField = 'searchTermsMatched';
        _searchTermsMatched?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchGroupItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
