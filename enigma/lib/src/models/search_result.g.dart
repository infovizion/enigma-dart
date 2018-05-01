// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_result;

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

Serializer<SearchResult> _$searchResultSerializer =
    new _$SearchResultSerializer();

class _$SearchResultSerializer implements StructuredSerializer<SearchResult> {
  @override
  final Iterable<Type> types = const [SearchResult, _$SearchResult];
  @override
  final String wireName = 'SearchResult';

  @override
  Iterable serialize(Serializers serializers, SearchResult object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.searchTerms != null) {
      result
        ..add('qSearchTerms')
        ..add(serializers.serialize(object.searchTerms,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.totalNumberOfGroups != null) {
      result
        ..add('qTotalNumberOfGroups')
        ..add(serializers.serialize(object.totalNumberOfGroups,
            specifiedType: const FullType(int)));
    }
    if (object.searchGroupArray != null) {
      result
        ..add('qSearchGroupArray')
        ..add(serializers.serialize(object.searchGroupArray,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SearchGroup)])));
    }

    return result;
  }

  @override
  SearchResult deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SearchResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qSearchTerms':
          result.searchTerms.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'qTotalNumberOfGroups':
          result.totalNumberOfGroups = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qSearchGroupArray':
          result.searchGroupArray.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SearchGroup)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$SearchResult extends SearchResult {
  @override
  final BuiltList<String> searchTerms;
  @override
  final int totalNumberOfGroups;
  @override
  final BuiltList<SearchGroup> searchGroupArray;

  factory _$SearchResult([void updates(SearchResultBuilder b)]) =>
      (new SearchResultBuilder()..update(updates)).build();

  _$SearchResult._(
      {this.searchTerms, this.totalNumberOfGroups, this.searchGroupArray})
      : super._();

  @override
  SearchResult rebuild(void updates(SearchResultBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchResultBuilder toBuilder() => new SearchResultBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchResult) return false;
    return searchTerms == other.searchTerms &&
        totalNumberOfGroups == other.totalNumberOfGroups &&
        searchGroupArray == other.searchGroupArray;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, searchTerms.hashCode), totalNumberOfGroups.hashCode),
        searchGroupArray.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchResult')
          ..add('searchTerms', searchTerms)
          ..add('totalNumberOfGroups', totalNumberOfGroups)
          ..add('searchGroupArray', searchGroupArray))
        .toString();
  }
}

class SearchResultBuilder
    implements Builder<SearchResult, SearchResultBuilder> {
  _$SearchResult _$v;

  ListBuilder<String> _searchTerms;
  ListBuilder<String> get searchTerms =>
      _$this._searchTerms ??= new ListBuilder<String>();
  set searchTerms(ListBuilder<String> searchTerms) =>
      _$this._searchTerms = searchTerms;

  int _totalNumberOfGroups;
  int get totalNumberOfGroups => _$this._totalNumberOfGroups;
  set totalNumberOfGroups(int totalNumberOfGroups) =>
      _$this._totalNumberOfGroups = totalNumberOfGroups;

  ListBuilder<SearchGroup> _searchGroupArray;
  ListBuilder<SearchGroup> get searchGroupArray =>
      _$this._searchGroupArray ??= new ListBuilder<SearchGroup>();
  set searchGroupArray(ListBuilder<SearchGroup> searchGroupArray) =>
      _$this._searchGroupArray = searchGroupArray;

  SearchResultBuilder();

  SearchResultBuilder get _$this {
    if (_$v != null) {
      _searchTerms = _$v.searchTerms?.toBuilder();
      _totalNumberOfGroups = _$v.totalNumberOfGroups;
      _searchGroupArray = _$v.searchGroupArray?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchResult other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchResult;
  }

  @override
  void update(void updates(SearchResultBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchResult build() {
    _$SearchResult _$result;
    try {
      _$result = _$v ??
          new _$SearchResult._(
              searchTerms: _searchTerms?.build(),
              totalNumberOfGroups: totalNumberOfGroups,
              searchGroupArray: _searchGroupArray?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'searchTerms';
        _searchTerms?.build();

        _$failedField = 'searchGroupArray';
        _searchGroupArray?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
