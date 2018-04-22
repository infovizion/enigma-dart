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
        ..add('searchTerms')
        ..add(serializers.serialize(object.searchTerms,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.totalNumberOfGroups != null) {
      result
        ..add('totalNumberOfGroups')
        ..add(serializers.serialize(object.totalNumberOfGroups,
            specifiedType: const FullType(int)));
    }
    if (object.searchGroupArray != null) {
      result
        ..add('searchGroupArray')
        ..add(serializers.serialize(object.searchGroupArray,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
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
        case 'searchTerms':
          result.searchTerms = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'totalNumberOfGroups':
          result.totalNumberOfGroups = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'searchGroupArray':
          result.searchGroupArray = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchResult extends SearchResult {
  @override
  final List<NxCell> searchTerms;
  @override
  final int totalNumberOfGroups;
  @override
  final List<NxCell> searchGroupArray;

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

  List<NxCell> _searchTerms;
  List<NxCell> get searchTerms => _$this._searchTerms;
  set searchTerms(List<NxCell> searchTerms) =>
      _$this._searchTerms = searchTerms;

  int _totalNumberOfGroups;
  int get totalNumberOfGroups => _$this._totalNumberOfGroups;
  set totalNumberOfGroups(int totalNumberOfGroups) =>
      _$this._totalNumberOfGroups = totalNumberOfGroups;

  List<NxCell> _searchGroupArray;
  List<NxCell> get searchGroupArray => _$this._searchGroupArray;
  set searchGroupArray(List<NxCell> searchGroupArray) =>
      _$this._searchGroupArray = searchGroupArray;

  SearchResultBuilder();

  SearchResultBuilder get _$this {
    if (_$v != null) {
      _searchTerms = _$v.searchTerms;
      _totalNumberOfGroups = _$v.totalNumberOfGroups;
      _searchGroupArray = _$v.searchGroupArray;
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
    final _$result = _$v ??
        new _$SearchResult._(
            searchTerms: searchTerms,
            totalNumberOfGroups: totalNumberOfGroups,
            searchGroupArray: searchGroupArray);
    replace(_$result);
    return _$result;
  }
}
