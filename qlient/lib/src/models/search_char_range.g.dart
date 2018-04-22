// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_char_range;

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

Serializer<SearchCharRange> _$searchCharRangeSerializer =
    new _$SearchCharRangeSerializer();

class _$SearchCharRangeSerializer
    implements StructuredSerializer<SearchCharRange> {
  @override
  final Iterable<Type> types = const [SearchCharRange, _$SearchCharRange];
  @override
  final String wireName = 'SearchCharRange';

  @override
  Iterable serialize(Serializers serializers, SearchCharRange object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.charPos != null) {
      result
        ..add('charPos')
        ..add(serializers.serialize(object.charPos,
            specifiedType: const FullType(int)));
    }
    if (object.charCount != null) {
      result
        ..add('charCount')
        ..add(serializers.serialize(object.charCount,
            specifiedType: const FullType(int)));
    }
    if (object.term != null) {
      result
        ..add('term')
        ..add(serializers.serialize(object.term,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  SearchCharRange deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SearchCharRangeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'charPos':
          result.charPos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'charCount':
          result.charCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'term':
          result.term = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchCharRange extends SearchCharRange {
  @override
  final int charPos;
  @override
  final int charCount;
  @override
  final int term;

  factory _$SearchCharRange([void updates(SearchCharRangeBuilder b)]) =>
      (new SearchCharRangeBuilder()..update(updates)).build();

  _$SearchCharRange._({this.charPos, this.charCount, this.term}) : super._();

  @override
  SearchCharRange rebuild(void updates(SearchCharRangeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchCharRangeBuilder toBuilder() =>
      new SearchCharRangeBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchCharRange) return false;
    return charPos == other.charPos &&
        charCount == other.charCount &&
        term == other.term;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, charPos.hashCode), charCount.hashCode), term.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchCharRange')
          ..add('charPos', charPos)
          ..add('charCount', charCount)
          ..add('term', term))
        .toString();
  }
}

class SearchCharRangeBuilder
    implements Builder<SearchCharRange, SearchCharRangeBuilder> {
  _$SearchCharRange _$v;

  int _charPos;
  int get charPos => _$this._charPos;
  set charPos(int charPos) => _$this._charPos = charPos;

  int _charCount;
  int get charCount => _$this._charCount;
  set charCount(int charCount) => _$this._charCount = charCount;

  int _term;
  int get term => _$this._term;
  set term(int term) => _$this._term = term;

  SearchCharRangeBuilder();

  SearchCharRangeBuilder get _$this {
    if (_$v != null) {
      _charPos = _$v.charPos;
      _charCount = _$v.charCount;
      _term = _$v.term;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchCharRange other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchCharRange;
  }

  @override
  void update(void updates(SearchCharRangeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchCharRange build() {
    final _$result = _$v ??
        new _$SearchCharRange._(
            charPos: charPos, charCount: charCount, term: term);
    replace(_$result);
    return _$result;
  }
}
