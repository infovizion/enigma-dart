// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_group_item_match;

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

Serializer<SearchGroupItemMatch> _$searchGroupItemMatchSerializer =
    new _$SearchGroupItemMatchSerializer();

class _$SearchGroupItemMatchSerializer
    implements StructuredSerializer<SearchGroupItemMatch> {
  @override
  final Iterable<Type> types = const [
    SearchGroupItemMatch,
    _$SearchGroupItemMatch
  ];
  @override
  final String wireName = 'SearchGroupItemMatch';

  @override
  Iterable serialize(Serializers serializers, SearchGroupItemMatch object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('qText')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.ranges != null) {
      result
        ..add('qRanges')
        ..add(serializers.serialize(object.ranges,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SearchCharRange)])));
    }
    if (object.attributes != null) {
      result
        ..add('qAttributes')
        ..add(serializers.serialize(object.attributes,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SearchAttribute)])));
    }

    return result;
  }

  @override
  SearchGroupItemMatch deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SearchGroupItemMatchBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qText':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qRanges':
          result.ranges.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SearchCharRange)]))
              as BuiltList);
          break;
        case 'qAttributes':
          result.attributes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SearchAttribute)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$SearchGroupItemMatch extends SearchGroupItemMatch {
  @override
  final String text;
  @override
  final BuiltList<SearchCharRange> ranges;
  @override
  final BuiltList<SearchAttribute> attributes;

  factory _$SearchGroupItemMatch(
          [void updates(SearchGroupItemMatchBuilder b)]) =>
      (new SearchGroupItemMatchBuilder()..update(updates)).build();

  _$SearchGroupItemMatch._({this.text, this.ranges, this.attributes})
      : super._();

  @override
  SearchGroupItemMatch rebuild(void updates(SearchGroupItemMatchBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchGroupItemMatchBuilder toBuilder() =>
      new SearchGroupItemMatchBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchGroupItemMatch) return false;
    return text == other.text &&
        ranges == other.ranges &&
        attributes == other.attributes;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, text.hashCode), ranges.hashCode), attributes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchGroupItemMatch')
          ..add('text', text)
          ..add('ranges', ranges)
          ..add('attributes', attributes))
        .toString();
  }
}

class SearchGroupItemMatchBuilder
    implements Builder<SearchGroupItemMatch, SearchGroupItemMatchBuilder> {
  _$SearchGroupItemMatch _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  ListBuilder<SearchCharRange> _ranges;
  ListBuilder<SearchCharRange> get ranges =>
      _$this._ranges ??= new ListBuilder<SearchCharRange>();
  set ranges(ListBuilder<SearchCharRange> ranges) => _$this._ranges = ranges;

  ListBuilder<SearchAttribute> _attributes;
  ListBuilder<SearchAttribute> get attributes =>
      _$this._attributes ??= new ListBuilder<SearchAttribute>();
  set attributes(ListBuilder<SearchAttribute> attributes) =>
      _$this._attributes = attributes;

  SearchGroupItemMatchBuilder();

  SearchGroupItemMatchBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _ranges = _$v.ranges?.toBuilder();
      _attributes = _$v.attributes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchGroupItemMatch other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchGroupItemMatch;
  }

  @override
  void update(void updates(SearchGroupItemMatchBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchGroupItemMatch build() {
    _$SearchGroupItemMatch _$result;
    try {
      _$result = _$v ??
          new _$SearchGroupItemMatch._(
              text: text,
              ranges: _ranges?.build(),
              attributes: _attributes?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ranges';
        _ranges?.build();
        _$failedField = 'attributes';
        _attributes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchGroupItemMatch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
