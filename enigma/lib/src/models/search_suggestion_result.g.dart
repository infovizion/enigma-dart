// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_suggestion_result;

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

Serializer<SearchSuggestionResult> _$searchSuggestionResultSerializer =
    new _$SearchSuggestionResultSerializer();

class _$SearchSuggestionResultSerializer
    implements StructuredSerializer<SearchSuggestionResult> {
  @override
  final Iterable<Type> types = const [
    SearchSuggestionResult,
    _$SearchSuggestionResult
  ];
  @override
  final String wireName = 'SearchSuggestionResult';

  @override
  Iterable serialize(Serializers serializers, SearchSuggestionResult object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.suggestions != null) {
      result
        ..add('qSuggestions')
        ..add(serializers.serialize(object.suggestions,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SearchSuggestItem)])));
    }
    if (object.fieldNames != null) {
      result
        ..add('qFieldNames')
        ..add(serializers.serialize(object.fieldNames,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }

    return result;
  }

  @override
  SearchSuggestionResult deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SearchSuggestionResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qSuggestions':
          result.suggestions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SearchSuggestItem)]))
              as BuiltList);
          break;
        case 'qFieldNames':
          result.fieldNames.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$SearchSuggestionResult extends SearchSuggestionResult {
  @override
  final BuiltList<SearchSuggestItem> suggestions;
  @override
  final BuiltList<String> fieldNames;

  factory _$SearchSuggestionResult(
          [void updates(SearchSuggestionResultBuilder b)]) =>
      (new SearchSuggestionResultBuilder()..update(updates)).build();

  _$SearchSuggestionResult._({this.suggestions, this.fieldNames}) : super._();

  @override
  SearchSuggestionResult rebuild(
          void updates(SearchSuggestionResultBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchSuggestionResultBuilder toBuilder() =>
      new SearchSuggestionResultBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchSuggestionResult) return false;
    return suggestions == other.suggestions && fieldNames == other.fieldNames;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, suggestions.hashCode), fieldNames.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchSuggestionResult')
          ..add('suggestions', suggestions)
          ..add('fieldNames', fieldNames))
        .toString();
  }
}

class SearchSuggestionResultBuilder
    implements Builder<SearchSuggestionResult, SearchSuggestionResultBuilder> {
  _$SearchSuggestionResult _$v;

  ListBuilder<SearchSuggestItem> _suggestions;
  ListBuilder<SearchSuggestItem> get suggestions =>
      _$this._suggestions ??= new ListBuilder<SearchSuggestItem>();
  set suggestions(ListBuilder<SearchSuggestItem> suggestions) =>
      _$this._suggestions = suggestions;

  ListBuilder<String> _fieldNames;
  ListBuilder<String> get fieldNames =>
      _$this._fieldNames ??= new ListBuilder<String>();
  set fieldNames(ListBuilder<String> fieldNames) =>
      _$this._fieldNames = fieldNames;

  SearchSuggestionResultBuilder();

  SearchSuggestionResultBuilder get _$this {
    if (_$v != null) {
      _suggestions = _$v.suggestions?.toBuilder();
      _fieldNames = _$v.fieldNames?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchSuggestionResult other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchSuggestionResult;
  }

  @override
  void update(void updates(SearchSuggestionResultBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchSuggestionResult build() {
    _$SearchSuggestionResult _$result;
    try {
      _$result = _$v ??
          new _$SearchSuggestionResult._(
              suggestions: _suggestions?.build(),
              fieldNames: _fieldNames?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'suggestions';
        _suggestions?.build();
        _$failedField = 'fieldNames';
        _fieldNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchSuggestionResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
