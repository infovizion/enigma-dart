// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_match_combination;

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

Serializer<SearchMatchCombination> _$searchMatchCombinationSerializer =
    new _$SearchMatchCombinationSerializer();

class _$SearchMatchCombinationSerializer
    implements StructuredSerializer<SearchMatchCombination> {
  @override
  final Iterable<Type> types = const [
    SearchMatchCombination,
    _$SearchMatchCombination
  ];
  @override
  final String wireName = 'SearchMatchCombination';

  @override
  Iterable serialize(Serializers serializers, SearchMatchCombination object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.fieldMatches != null) {
      result
        ..add('fieldMatches')
        ..add(serializers.serialize(object.fieldMatches,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  SearchMatchCombination deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SearchMatchCombinationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'fieldMatches':
          result.fieldMatches = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchMatchCombination extends SearchMatchCombination {
  @override
  final int id;
  @override
  final List<NxCell> fieldMatches;

  factory _$SearchMatchCombination(
          [void updates(SearchMatchCombinationBuilder b)]) =>
      (new SearchMatchCombinationBuilder()..update(updates)).build();

  _$SearchMatchCombination._({this.id, this.fieldMatches}) : super._();

  @override
  SearchMatchCombination rebuild(
          void updates(SearchMatchCombinationBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchMatchCombinationBuilder toBuilder() =>
      new SearchMatchCombinationBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchMatchCombination) return false;
    return id == other.id && fieldMatches == other.fieldMatches;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), fieldMatches.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchMatchCombination')
          ..add('id', id)
          ..add('fieldMatches', fieldMatches))
        .toString();
  }
}

class SearchMatchCombinationBuilder
    implements Builder<SearchMatchCombination, SearchMatchCombinationBuilder> {
  _$SearchMatchCombination _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  List<NxCell> _fieldMatches;
  List<NxCell> get fieldMatches => _$this._fieldMatches;
  set fieldMatches(List<NxCell> fieldMatches) =>
      _$this._fieldMatches = fieldMatches;

  SearchMatchCombinationBuilder();

  SearchMatchCombinationBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _fieldMatches = _$v.fieldMatches;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchMatchCombination other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchMatchCombination;
  }

  @override
  void update(void updates(SearchMatchCombinationBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchMatchCombination build() {
    final _$result = _$v ??
        new _$SearchMatchCombination._(id: id, fieldMatches: fieldMatches);
    replace(_$result);
    return _$result;
  }
}
