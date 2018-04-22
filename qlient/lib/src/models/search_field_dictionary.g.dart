// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_field_dictionary;

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

Serializer<SearchFieldDictionary> _$searchFieldDictionarySerializer =
    new _$SearchFieldDictionarySerializer();

class _$SearchFieldDictionarySerializer
    implements StructuredSerializer<SearchFieldDictionary> {
  @override
  final Iterable<Type> types = const [
    SearchFieldDictionary,
    _$SearchFieldDictionary
  ];
  @override
  final String wireName = 'SearchFieldDictionary';

  @override
  Iterable serialize(Serializers serializers, SearchFieldDictionary object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.field != null) {
      result
        ..add('field')
        ..add(serializers.serialize(object.field,
            specifiedType: const FullType(int)));
    }
    if (object.result != null) {
      result
        ..add('result')
        ..add(serializers.serialize(object.result,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  SearchFieldDictionary deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SearchFieldDictionaryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'field':
          result.field = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'result':
          result.result = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchFieldDictionary extends SearchFieldDictionary {
  @override
  final int field;
  @override
  final List<NxCell> result;

  factory _$SearchFieldDictionary(
          [void updates(SearchFieldDictionaryBuilder b)]) =>
      (new SearchFieldDictionaryBuilder()..update(updates)).build();

  _$SearchFieldDictionary._({this.field, this.result}) : super._();

  @override
  SearchFieldDictionary rebuild(void updates(SearchFieldDictionaryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchFieldDictionaryBuilder toBuilder() =>
      new SearchFieldDictionaryBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchFieldDictionary) return false;
    return field == other.field && result == other.result;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, field.hashCode), result.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchFieldDictionary')
          ..add('field', field)
          ..add('result', result))
        .toString();
  }
}

class SearchFieldDictionaryBuilder
    implements Builder<SearchFieldDictionary, SearchFieldDictionaryBuilder> {
  _$SearchFieldDictionary _$v;

  int _field;
  int get field => _$this._field;
  set field(int field) => _$this._field = field;

  List<NxCell> _result;
  List<NxCell> get result => _$this._result;
  set result(List<NxCell> result) => _$this._result = result;

  SearchFieldDictionaryBuilder();

  SearchFieldDictionaryBuilder get _$this {
    if (_$v != null) {
      _field = _$v.field;
      _result = _$v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchFieldDictionary other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchFieldDictionary;
  }

  @override
  void update(void updates(SearchFieldDictionaryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchFieldDictionary build() {
    final _$result =
        _$v ?? new _$SearchFieldDictionary._(field: field, result: result);
    replace(_$result);
    return _$result;
  }
}
