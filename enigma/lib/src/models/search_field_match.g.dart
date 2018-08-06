// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_field_match;

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

Serializer<SearchFieldMatch> _$searchFieldMatchSerializer =
    new _$SearchFieldMatchSerializer();

class _$SearchFieldMatchSerializer
    implements StructuredSerializer<SearchFieldMatch> {
  @override
  final Iterable<Type> types = const [SearchFieldMatch, _$SearchFieldMatch];
  @override
  final String wireName = 'SearchFieldMatch';

  @override
  Iterable serialize(Serializers serializers, SearchFieldMatch object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.field != null) {
      result
        ..add('qField')
        ..add(serializers.serialize(object.field,
            specifiedType: const FullType(int)));
    }
    if (object.values != null) {
      result
        ..add('qValues')
        ..add(serializers.serialize(object.values,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.terms != null) {
      result
        ..add('qTerms')
        ..add(serializers.serialize(object.terms,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.noOfMatches != null) {
      result
        ..add('qNoOfMatches')
        ..add(serializers.serialize(object.noOfMatches,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  SearchFieldMatch deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchFieldMatchBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qField':
          result.field = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qValues':
          result.values.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
        case 'qTerms':
          result.terms.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
        case 'qNoOfMatches':
          result.noOfMatches = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchFieldMatch extends SearchFieldMatch {
  @override
  final int field;
  @override
  final BuiltList<int> values;
  @override
  final BuiltList<int> terms;
  @override
  final int noOfMatches;

  factory _$SearchFieldMatch([void updates(SearchFieldMatchBuilder b)]) =>
      (new SearchFieldMatchBuilder()..update(updates)).build();

  _$SearchFieldMatch._({this.field, this.values, this.terms, this.noOfMatches})
      : super._();

  @override
  SearchFieldMatch rebuild(void updates(SearchFieldMatchBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchFieldMatchBuilder toBuilder() =>
      new SearchFieldMatchBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchFieldMatch) return false;
    return field == other.field &&
        values == other.values &&
        terms == other.terms &&
        noOfMatches == other.noOfMatches;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, field.hashCode), values.hashCode), terms.hashCode),
        noOfMatches.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchFieldMatch')
          ..add('field', field)
          ..add('values', values)
          ..add('terms', terms)
          ..add('noOfMatches', noOfMatches))
        .toString();
  }
}

class SearchFieldMatchBuilder
    implements Builder<SearchFieldMatch, SearchFieldMatchBuilder> {
  _$SearchFieldMatch _$v;

  int _field;
  int get field => _$this._field;
  set field(int field) => _$this._field = field;

  ListBuilder<int> _values;
  ListBuilder<int> get values => _$this._values ??= new ListBuilder<int>();
  set values(ListBuilder<int> values) => _$this._values = values;

  ListBuilder<int> _terms;
  ListBuilder<int> get terms => _$this._terms ??= new ListBuilder<int>();
  set terms(ListBuilder<int> terms) => _$this._terms = terms;

  int _noOfMatches;
  int get noOfMatches => _$this._noOfMatches;
  set noOfMatches(int noOfMatches) => _$this._noOfMatches = noOfMatches;

  SearchFieldMatchBuilder();

  SearchFieldMatchBuilder get _$this {
    if (_$v != null) {
      _field = _$v.field;
      _values = _$v.values?.toBuilder();
      _terms = _$v.terms?.toBuilder();
      _noOfMatches = _$v.noOfMatches;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchFieldMatch other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchFieldMatch;
  }

  @override
  void update(void updates(SearchFieldMatchBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchFieldMatch build() {
    _$SearchFieldMatch _$result;
    try {
      _$result = _$v ??
          new _$SearchFieldMatch._(
              field: field,
              values: _values?.build(),
              terms: _terms?.build(),
              noOfMatches: noOfMatches);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'values';
        _values?.build();
        _$failedField = 'terms';
        _terms?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchFieldMatch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
