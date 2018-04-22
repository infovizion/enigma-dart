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
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.ranges != null) {
      result
        ..add('ranges')
        ..add(serializers.serialize(object.ranges,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.attributes != null) {
      result
        ..add('attributes')
        ..add(serializers.serialize(object.attributes,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
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
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ranges':
          result.ranges = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'attributes':
          result.attributes = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
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
  final List<NxCell> ranges;
  @override
  final List<NxCell> attributes;

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

  List<NxCell> _ranges;
  List<NxCell> get ranges => _$this._ranges;
  set ranges(List<NxCell> ranges) => _$this._ranges = ranges;

  List<NxCell> _attributes;
  List<NxCell> get attributes => _$this._attributes;
  set attributes(List<NxCell> attributes) => _$this._attributes = attributes;

  SearchGroupItemMatchBuilder();

  SearchGroupItemMatchBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _ranges = _$v.ranges;
      _attributes = _$v.attributes;
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
    final _$result = _$v ??
        new _$SearchGroupItemMatch._(
            text: text, ranges: ranges, attributes: attributes);
    replace(_$result);
    return _$result;
  }
}
