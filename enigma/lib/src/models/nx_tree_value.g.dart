// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_tree_value;

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

Serializer<NxTreeValue> _$nxTreeValueSerializer = new _$NxTreeValueSerializer();

class _$NxTreeValueSerializer implements StructuredSerializer<NxTreeValue> {
  @override
  final Iterable<Type> types = const [NxTreeValue, _$NxTreeValue];
  @override
  final String wireName = 'NxTreeValue';

  @override
  Iterable serialize(Serializers serializers, NxTreeValue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('qText')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.value != null) {
      result
        ..add('qValue')
        ..add(serializers.serialize(object.value,
            specifiedType: const FullType(num)));
    }
    if (object.attrExps != null) {
      result
        ..add('qAttrExps')
        ..add(serializers.serialize(object.attrExps,
            specifiedType: const FullType(NxAttributeExpressionValues)));
    }
    if (object.attrDims != null) {
      result
        ..add('qAttrDims')
        ..add(serializers.serialize(object.attrDims,
            specifiedType: const FullType(NxAttributeDimValues)));
    }

    return result;
  }

  @override
  NxTreeValue deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxTreeValueBuilder();

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
        case 'qValue':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'qAttrExps':
          result.attrExps.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxAttributeExpressionValues))
              as NxAttributeExpressionValues);
          break;
        case 'qAttrDims':
          result.attrDims.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxAttributeDimValues))
              as NxAttributeDimValues);
          break;
      }
    }

    return result.build();
  }
}

class _$NxTreeValue extends NxTreeValue {
  @override
  final String text;
  @override
  final num value;
  @override
  final NxAttributeExpressionValues attrExps;
  @override
  final NxAttributeDimValues attrDims;

  factory _$NxTreeValue([void updates(NxTreeValueBuilder b)]) =>
      (new NxTreeValueBuilder()..update(updates)).build();

  _$NxTreeValue._({this.text, this.value, this.attrExps, this.attrDims})
      : super._();

  @override
  NxTreeValue rebuild(void updates(NxTreeValueBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxTreeValueBuilder toBuilder() => new NxTreeValueBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxTreeValue) return false;
    return text == other.text &&
        value == other.value &&
        attrExps == other.attrExps &&
        attrDims == other.attrDims;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, text.hashCode), value.hashCode), attrExps.hashCode),
        attrDims.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxTreeValue')
          ..add('text', text)
          ..add('value', value)
          ..add('attrExps', attrExps)
          ..add('attrDims', attrDims))
        .toString();
  }
}

class NxTreeValueBuilder implements Builder<NxTreeValue, NxTreeValueBuilder> {
  _$NxTreeValue _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  num _value;
  num get value => _$this._value;
  set value(num value) => _$this._value = value;

  NxAttributeExpressionValuesBuilder _attrExps;
  NxAttributeExpressionValuesBuilder get attrExps =>
      _$this._attrExps ??= new NxAttributeExpressionValuesBuilder();
  set attrExps(NxAttributeExpressionValuesBuilder attrExps) =>
      _$this._attrExps = attrExps;

  NxAttributeDimValuesBuilder _attrDims;
  NxAttributeDimValuesBuilder get attrDims =>
      _$this._attrDims ??= new NxAttributeDimValuesBuilder();
  set attrDims(NxAttributeDimValuesBuilder attrDims) =>
      _$this._attrDims = attrDims;

  NxTreeValueBuilder();

  NxTreeValueBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _value = _$v.value;
      _attrExps = _$v.attrExps?.toBuilder();
      _attrDims = _$v.attrDims?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxTreeValue other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxTreeValue;
  }

  @override
  void update(void updates(NxTreeValueBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxTreeValue build() {
    _$NxTreeValue _$result;
    try {
      _$result = _$v ??
          new _$NxTreeValue._(
              text: text,
              value: value,
              attrExps: _attrExps?.build(),
              attrDims: _attrDims?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'attrExps';
        _attrExps?.build();
        _$failedField = 'attrDims';
        _attrDims?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxTreeValue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
