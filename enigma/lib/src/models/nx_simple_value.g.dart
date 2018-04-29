// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_simple_value;

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

Serializer<NxSimpleValue> _$nxSimpleValueSerializer =
    new _$NxSimpleValueSerializer();

class _$NxSimpleValueSerializer implements StructuredSerializer<NxSimpleValue> {
  @override
  final Iterable<Type> types = const [NxSimpleValue, _$NxSimpleValue];
  @override
  final String wireName = 'NxSimpleValue';

  @override
  Iterable serialize(Serializers serializers, NxSimpleValue object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.qNum != null) {
      result
        ..add('qNum')
        ..add(serializers.serialize(object.qNum,
            specifiedType: const FullType(num)));
    }

    return result;
  }

  @override
  NxSimpleValue deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxSimpleValueBuilder();

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
        case 'qNum':
          result.qNum = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
      }
    }

    return result.build();
  }
}

class _$NxSimpleValue extends NxSimpleValue {
  @override
  final String text;
  @override
  final num qNum;

  factory _$NxSimpleValue([void updates(NxSimpleValueBuilder b)]) =>
      (new NxSimpleValueBuilder()..update(updates)).build();

  _$NxSimpleValue._({this.text, this.qNum}) : super._();

  @override
  NxSimpleValue rebuild(void updates(NxSimpleValueBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxSimpleValueBuilder toBuilder() => new NxSimpleValueBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxSimpleValue) return false;
    return text == other.text && qNum == other.qNum;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, text.hashCode), qNum.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxSimpleValue')
          ..add('text', text)
          ..add('qNum', qNum))
        .toString();
  }
}

class NxSimpleValueBuilder
    implements Builder<NxSimpleValue, NxSimpleValueBuilder> {
  _$NxSimpleValue _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  num _qNum;
  num get qNum => _$this._qNum;
  set qNum(num qNum) => _$this._qNum = qNum;

  NxSimpleValueBuilder();

  NxSimpleValueBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _qNum = _$v.qNum;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxSimpleValue other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxSimpleValue;
  }

  @override
  void update(void updates(NxSimpleValueBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxSimpleValue build() {
    final _$result = _$v ?? new _$NxSimpleValue._(text: text, qNum: qNum);
    replace(_$result);
    return _$result;
  }
}
