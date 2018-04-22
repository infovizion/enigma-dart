// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_match_combinations;

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

Serializer<SearchMatchCombinations> _$searchMatchCombinationsSerializer =
    new _$SearchMatchCombinationsSerializer();

class _$SearchMatchCombinationsSerializer
    implements StructuredSerializer<SearchMatchCombinations> {
  @override
  final Iterable<Type> types = const [
    SearchMatchCombinations,
    _$SearchMatchCombinations
  ];
  @override
  final String wireName = 'SearchMatchCombinations';

  @override
  Iterable serialize(Serializers serializers, SearchMatchCombinations object,
      {FullType specifiedType: FullType.unspecified}) {
    return <Object>[];
  }

  @override
  SearchMatchCombinations deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    return new SearchMatchCombinationsBuilder().build();
  }
}

class _$SearchMatchCombinations extends SearchMatchCombinations {
  factory _$SearchMatchCombinations(
          [void updates(SearchMatchCombinationsBuilder b)]) =>
      (new SearchMatchCombinationsBuilder()..update(updates)).build();

  _$SearchMatchCombinations._() : super._();

  @override
  SearchMatchCombinations rebuild(
          void updates(SearchMatchCombinationsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchMatchCombinationsBuilder toBuilder() =>
      new SearchMatchCombinationsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchMatchCombinations) return false;
    return true;
  }

  @override
  int get hashCode {
    return 970224615;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SearchMatchCombinations').toString();
  }
}

class SearchMatchCombinationsBuilder
    implements
        Builder<SearchMatchCombinations, SearchMatchCombinationsBuilder> {
  _$SearchMatchCombinations _$v;

  SearchMatchCombinationsBuilder();

  @override
  void replace(SearchMatchCombinations other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchMatchCombinations;
  }

  @override
  void update(void updates(SearchMatchCombinationsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchMatchCombinations build() {
    final _$result = _$v ?? new _$SearchMatchCombinations._();
    replace(_$result);
    return _$result;
  }
}
