// GENERATED CODE - DO NOT MODIFY BY HAND

part of field_value;

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

Serializer<FieldValue> _$fieldValueSerializer = new _$FieldValueSerializer();

class _$FieldValueSerializer implements StructuredSerializer<FieldValue> {
  @override
  final Iterable<Type> types = const [FieldValue, _$FieldValue];
  @override
  final String wireName = 'FieldValue';

  @override
  Iterable serialize(Serializers serializers, FieldValue object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('qText')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.isNumeric != null) {
      result
        ..add('qIsNumeric')
        ..add(serializers.serialize(object.isNumeric,
            specifiedType: const FullType(bool)));
    }
    if (object.number != null) {
      result
        ..add('qNumber')
        ..add(serializers.serialize(object.number,
            specifiedType: const FullType(num)));
    }

    return result;
  }

  @override
  FieldValue deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FieldValueBuilder();

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
        case 'qIsNumeric':
          result.isNumeric = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qNumber':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
      }
    }

    return result.build();
  }
}

class _$FieldValue extends FieldValue {
  @override
  final String text;
  @override
  final bool isNumeric;
  @override
  final num number;

  factory _$FieldValue([void updates(FieldValueBuilder b)]) =>
      (new FieldValueBuilder()..update(updates)).build();

  _$FieldValue._({this.text, this.isNumeric, this.number}) : super._();

  @override
  FieldValue rebuild(void updates(FieldValueBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldValueBuilder toBuilder() => new FieldValueBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FieldValue) return false;
    return text == other.text &&
        isNumeric == other.isNumeric &&
        number == other.number;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, text.hashCode), isNumeric.hashCode), number.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FieldValue')
          ..add('text', text)
          ..add('isNumeric', isNumeric)
          ..add('number', number))
        .toString();
  }
}

class FieldValueBuilder implements Builder<FieldValue, FieldValueBuilder> {
  _$FieldValue _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  bool _isNumeric;
  bool get isNumeric => _$this._isNumeric;
  set isNumeric(bool isNumeric) => _$this._isNumeric = isNumeric;

  num _number;
  num get number => _$this._number;
  set number(num number) => _$this._number = number;

  FieldValueBuilder();

  FieldValueBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _isNumeric = _$v.isNumeric;
      _number = _$v.number;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldValue other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FieldValue;
  }

  @override
  void update(void updates(FieldValueBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FieldValue build() {
    final _$result = _$v ??
        new _$FieldValue._(text: text, isNumeric: isNumeric, number: number);
    replace(_$result);
    return _$result;
  }
}
