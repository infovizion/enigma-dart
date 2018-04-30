// GENERATED CODE - DO NOT MODIFY BY HAND

part of char_range;

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

Serializer<CharRange> _$charRangeSerializer = new _$CharRangeSerializer();

class _$CharRangeSerializer implements StructuredSerializer<CharRange> {
  @override
  final Iterable<Type> types = const [CharRange, _$CharRange];
  @override
  final String wireName = 'CharRange';

  @override
  Iterable serialize(Serializers serializers, CharRange object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.charPos != null) {
      result
        ..add('qCharPos')
        ..add(serializers.serialize(object.charPos,
            specifiedType: const FullType(int)));
    }
    if (object.charCount != null) {
      result
        ..add('qCharCount')
        ..add(serializers.serialize(object.charCount,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  CharRange deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new CharRangeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qCharPos':
          result.charPos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qCharCount':
          result.charCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CharRange extends CharRange {
  @override
  final int charPos;
  @override
  final int charCount;

  factory _$CharRange([void updates(CharRangeBuilder b)]) =>
      (new CharRangeBuilder()..update(updates)).build();

  _$CharRange._({this.charPos, this.charCount}) : super._();

  @override
  CharRange rebuild(void updates(CharRangeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CharRangeBuilder toBuilder() => new CharRangeBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! CharRange) return false;
    return charPos == other.charPos && charCount == other.charCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, charPos.hashCode), charCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CharRange')
          ..add('charPos', charPos)
          ..add('charCount', charCount))
        .toString();
  }
}

class CharRangeBuilder implements Builder<CharRange, CharRangeBuilder> {
  _$CharRange _$v;

  int _charPos;
  int get charPos => _$this._charPos;
  set charPos(int charPos) => _$this._charPos = charPos;

  int _charCount;
  int get charCount => _$this._charCount;
  set charCount(int charCount) => _$this._charCount = charCount;

  CharRangeBuilder();

  CharRangeBuilder get _$this {
    if (_$v != null) {
      _charPos = _$v.charPos;
      _charCount = _$v.charCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CharRange other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CharRange;
  }

  @override
  void update(void updates(CharRangeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CharRange build() {
    final _$result =
        _$v ?? new _$CharRange._(charPos: charPos, charCount: charCount);
    replace(_$result);
    return _$result;
  }
}
