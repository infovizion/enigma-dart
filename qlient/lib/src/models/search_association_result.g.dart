// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_association_result;

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

Serializer<SearchAssociationResult> _$searchAssociationResultSerializer =
    new _$SearchAssociationResultSerializer();

class _$SearchAssociationResultSerializer
    implements StructuredSerializer<SearchAssociationResult> {
  @override
  final Iterable<Type> types = const [
    SearchAssociationResult,
    _$SearchAssociationResult
  ];
  @override
  final String wireName = 'SearchAssociationResult';

  @override
  Iterable serialize(Serializers serializers, SearchAssociationResult object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.fieldNames != null) {
      result
        ..add('fieldNames')
        ..add(serializers.serialize(object.fieldNames,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.searchTerms != null) {
      result
        ..add('searchTerms')
        ..add(serializers.serialize(object.searchTerms,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.fieldDictionaries != null) {
      result
        ..add('fieldDictionaries')
        ..add(serializers.serialize(object.fieldDictionaries,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.searchTermsMatched != null) {
      result
        ..add('searchTermsMatched')
        ..add(serializers.serialize(object.searchTermsMatched,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.totalSearchResults != null) {
      result
        ..add('totalSearchResults')
        ..add(serializers.serialize(object.totalSearchResults,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  SearchAssociationResult deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SearchAssociationResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'fieldNames':
          result.fieldNames = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'searchTerms':
          result.searchTerms = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'fieldDictionaries':
          result.fieldDictionaries = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'searchTermsMatched':
          result.searchTermsMatched = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'totalSearchResults':
          result.totalSearchResults = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchAssociationResult extends SearchAssociationResult {
  @override
  final List<NxCell> fieldNames;
  @override
  final List<NxCell> searchTerms;
  @override
  final List<NxCell> fieldDictionaries;
  @override
  final List<NxCell> searchTermsMatched;
  @override
  final int totalSearchResults;

  factory _$SearchAssociationResult(
          [void updates(SearchAssociationResultBuilder b)]) =>
      (new SearchAssociationResultBuilder()..update(updates)).build();

  _$SearchAssociationResult._(
      {this.fieldNames,
      this.searchTerms,
      this.fieldDictionaries,
      this.searchTermsMatched,
      this.totalSearchResults})
      : super._();

  @override
  SearchAssociationResult rebuild(
          void updates(SearchAssociationResultBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchAssociationResultBuilder toBuilder() =>
      new SearchAssociationResultBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchAssociationResult) return false;
    return fieldNames == other.fieldNames &&
        searchTerms == other.searchTerms &&
        fieldDictionaries == other.fieldDictionaries &&
        searchTermsMatched == other.searchTermsMatched &&
        totalSearchResults == other.totalSearchResults;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, fieldNames.hashCode), searchTerms.hashCode),
                fieldDictionaries.hashCode),
            searchTermsMatched.hashCode),
        totalSearchResults.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchAssociationResult')
          ..add('fieldNames', fieldNames)
          ..add('searchTerms', searchTerms)
          ..add('fieldDictionaries', fieldDictionaries)
          ..add('searchTermsMatched', searchTermsMatched)
          ..add('totalSearchResults', totalSearchResults))
        .toString();
  }
}

class SearchAssociationResultBuilder
    implements
        Builder<SearchAssociationResult, SearchAssociationResultBuilder> {
  _$SearchAssociationResult _$v;

  List<NxCell> _fieldNames;
  List<NxCell> get fieldNames => _$this._fieldNames;
  set fieldNames(List<NxCell> fieldNames) => _$this._fieldNames = fieldNames;

  List<NxCell> _searchTerms;
  List<NxCell> get searchTerms => _$this._searchTerms;
  set searchTerms(List<NxCell> searchTerms) =>
      _$this._searchTerms = searchTerms;

  List<NxCell> _fieldDictionaries;
  List<NxCell> get fieldDictionaries => _$this._fieldDictionaries;
  set fieldDictionaries(List<NxCell> fieldDictionaries) =>
      _$this._fieldDictionaries = fieldDictionaries;

  List<NxCell> _searchTermsMatched;
  List<NxCell> get searchTermsMatched => _$this._searchTermsMatched;
  set searchTermsMatched(List<NxCell> searchTermsMatched) =>
      _$this._searchTermsMatched = searchTermsMatched;

  int _totalSearchResults;
  int get totalSearchResults => _$this._totalSearchResults;
  set totalSearchResults(int totalSearchResults) =>
      _$this._totalSearchResults = totalSearchResults;

  SearchAssociationResultBuilder();

  SearchAssociationResultBuilder get _$this {
    if (_$v != null) {
      _fieldNames = _$v.fieldNames;
      _searchTerms = _$v.searchTerms;
      _fieldDictionaries = _$v.fieldDictionaries;
      _searchTermsMatched = _$v.searchTermsMatched;
      _totalSearchResults = _$v.totalSearchResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchAssociationResult other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchAssociationResult;
  }

  @override
  void update(void updates(SearchAssociationResultBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchAssociationResult build() {
    final _$result = _$v ??
        new _$SearchAssociationResult._(
            fieldNames: fieldNames,
            searchTerms: searchTerms,
            fieldDictionaries: fieldDictionaries,
            searchTermsMatched: searchTermsMatched,
            totalSearchResults: totalSearchResults);
    replace(_$result);
    return _$result;
  }
}
