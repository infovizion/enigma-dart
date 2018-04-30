// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_term_result;

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

Serializer<SearchTermResult> _$searchTermResultSerializer =
    new _$SearchTermResultSerializer();

class _$SearchTermResultSerializer
    implements StructuredSerializer<SearchTermResult> {
  @override
  final Iterable<Type> types = const [SearchTermResult, _$SearchTermResult];
  @override
  final String wireName = 'SearchTermResult';

  @override
  Iterable serialize(Serializers serializers, SearchTermResult object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('qText')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.elemNumber != null) {
      result
        ..add('qElemNumber')
        ..add(serializers.serialize(object.elemNumber,
            specifiedType: const FullType(int)));
    }
    if (object.ranges != null) {
      result
        ..add('qRanges')
        ..add(serializers.serialize(object.ranges,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  SearchTermResult deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SearchTermResultBuilder();

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
        case 'qElemNumber':
          result.elemNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qRanges':
          result.ranges.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$SearchTermResult extends SearchTermResult {
  @override
  final String text;
  @override
  final int elemNumber;
  @override
  final BuiltList<NxCell> ranges;

  factory _$SearchTermResult([void updates(SearchTermResultBuilder b)]) =>
      (new SearchTermResultBuilder()..update(updates)).build();

  _$SearchTermResult._({this.text, this.elemNumber, this.ranges}) : super._();

  @override
  SearchTermResult rebuild(void updates(SearchTermResultBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchTermResultBuilder toBuilder() =>
      new SearchTermResultBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchTermResult) return false;
    return text == other.text &&
        elemNumber == other.elemNumber &&
        ranges == other.ranges;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, text.hashCode), elemNumber.hashCode), ranges.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchTermResult')
          ..add('text', text)
          ..add('elemNumber', elemNumber)
          ..add('ranges', ranges))
        .toString();
  }
}

class SearchTermResultBuilder
    implements Builder<SearchTermResult, SearchTermResultBuilder> {
  _$SearchTermResult _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  int _elemNumber;
  int get elemNumber => _$this._elemNumber;
  set elemNumber(int elemNumber) => _$this._elemNumber = elemNumber;

  ListBuilder<NxCell> _ranges;
  ListBuilder<NxCell> get ranges =>
      _$this._ranges ??= new ListBuilder<NxCell>();
  set ranges(ListBuilder<NxCell> ranges) => _$this._ranges = ranges;

  SearchTermResultBuilder();

  SearchTermResultBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _elemNumber = _$v.elemNumber;
      _ranges = _$v.ranges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchTermResult other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchTermResult;
  }

  @override
  void update(void updates(SearchTermResultBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchTermResult build() {
    _$SearchTermResult _$result;
    try {
      _$result = _$v ??
          new _$SearchTermResult._(
              text: text, elemNumber: elemNumber, ranges: _ranges?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ranges';
        _ranges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchTermResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
