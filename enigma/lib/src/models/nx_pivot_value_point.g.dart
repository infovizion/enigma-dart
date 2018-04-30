// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_pivot_value_point;

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

Serializer<NxPivotValuePoint> _$nxPivotValuePointSerializer =
    new _$NxPivotValuePointSerializer();

class _$NxPivotValuePointSerializer
    implements StructuredSerializer<NxPivotValuePoint> {
  @override
  final Iterable<Type> types = const [NxPivotValuePoint, _$NxPivotValuePoint];
  @override
  final String wireName = 'NxPivotValuePoint';

  @override
  Iterable serialize(Serializers serializers, NxPivotValuePoint object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.label != null) {
      result
        ..add('qLabel')
        ..add(serializers.serialize(object.label,
            specifiedType: const FullType(String)));
    }
    if (object.text != null) {
      result
        ..add('qText')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.qNum != null) {
      result
        ..add('qNum')
        ..add(serializers.serialize(object.qNum,
            specifiedType: const FullType(num)));
    }
    if (object.type != null) {
      result
        ..add('qType')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
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
  NxPivotValuePoint deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxPivotValuePointBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qLabel':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qText':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qNum':
          result.qNum = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'qType':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$NxPivotValuePoint extends NxPivotValuePoint {
  @override
  final String label;
  @override
  final String text;
  @override
  final num qNum;
  @override
  final String type;
  @override
  final NxAttributeExpressionValues attrExps;
  @override
  final NxAttributeDimValues attrDims;

  factory _$NxPivotValuePoint([void updates(NxPivotValuePointBuilder b)]) =>
      (new NxPivotValuePointBuilder()..update(updates)).build();

  _$NxPivotValuePoint._(
      {this.label,
      this.text,
      this.qNum,
      this.type,
      this.attrExps,
      this.attrDims})
      : super._();

  @override
  NxPivotValuePoint rebuild(void updates(NxPivotValuePointBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxPivotValuePointBuilder toBuilder() =>
      new NxPivotValuePointBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxPivotValuePoint) return false;
    return label == other.label &&
        text == other.text &&
        qNum == other.qNum &&
        type == other.type &&
        attrExps == other.attrExps &&
        attrDims == other.attrDims;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, label.hashCode), text.hashCode), qNum.hashCode),
                type.hashCode),
            attrExps.hashCode),
        attrDims.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxPivotValuePoint')
          ..add('label', label)
          ..add('text', text)
          ..add('qNum', qNum)
          ..add('type', type)
          ..add('attrExps', attrExps)
          ..add('attrDims', attrDims))
        .toString();
  }
}

class NxPivotValuePointBuilder
    implements Builder<NxPivotValuePoint, NxPivotValuePointBuilder> {
  _$NxPivotValuePoint _$v;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  num _qNum;
  num get qNum => _$this._qNum;
  set qNum(num qNum) => _$this._qNum = qNum;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

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

  NxPivotValuePointBuilder();

  NxPivotValuePointBuilder get _$this {
    if (_$v != null) {
      _label = _$v.label;
      _text = _$v.text;
      _qNum = _$v.qNum;
      _type = _$v.type;
      _attrExps = _$v.attrExps?.toBuilder();
      _attrDims = _$v.attrDims?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxPivotValuePoint other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxPivotValuePoint;
  }

  @override
  void update(void updates(NxPivotValuePointBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxPivotValuePoint build() {
    _$NxPivotValuePoint _$result;
    try {
      _$result = _$v ??
          new _$NxPivotValuePoint._(
              label: label,
              text: text,
              qNum: qNum,
              type: type,
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
            'NxPivotValuePoint', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
