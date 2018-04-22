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
        ..add('suggestions')
        ..add(serializers.serialize(object.suggestions,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.fieldNames != null) {
      result
        ..add('fieldNames')
        ..add(serializers.serialize(object.fieldNames,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
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
        case 'suggestions':
          result.suggestions = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'fieldNames':
          result.fieldNames = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchSuggestionResult extends SearchSuggestionResult {
  @override
  final List<NxCell> suggestions;
  @override
  final List<NxCell> fieldNames;

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

  List<NxCell> _suggestions;
  List<NxCell> get suggestions => _$this._suggestions;
  set suggestions(List<NxCell> suggestions) =>
      _$this._suggestions = suggestions;

  List<NxCell> _fieldNames;
  List<NxCell> get fieldNames => _$this._fieldNames;
  set fieldNames(List<NxCell> fieldNames) => _$this._fieldNames = fieldNames;

  SearchSuggestionResultBuilder();

  SearchSuggestionResultBuilder get _$this {
    if (_$v != null) {
      _suggestions = _$v.suggestions;
      _fieldNames = _$v.fieldNames;
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
    final _$result = _$v ??
        new _$SearchSuggestionResult._(
            suggestions: suggestions, fieldNames: fieldNames);
    replace(_$result);
    return _$result;
  }
}
