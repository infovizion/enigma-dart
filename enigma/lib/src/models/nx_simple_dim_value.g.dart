// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_simple_dim_value;

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

Serializer<NxSimpleDimValue> _$nxSimpleDimValueSerializer =
    new _$NxSimpleDimValueSerializer();

class _$NxSimpleDimValueSerializer
    implements StructuredSerializer<NxSimpleDimValue> {
  @override
  final Iterable<Type> types = const [NxSimpleDimValue, _$NxSimpleDimValue];
  @override
  final String wireName = 'NxSimpleDimValue';

  @override
  Iterable serialize(Serializers serializers, NxSimpleDimValue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('qText')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.elemNo != null) {
      result
        ..add('qElemNo')
        ..add(serializers.serialize(object.elemNo,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  NxSimpleDimValue deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxSimpleDimValueBuilder();

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
        case 'qElemNo':
          result.elemNo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$NxSimpleDimValue extends NxSimpleDimValue {
  @override
  final String text;
  @override
  final int elemNo;

  factory _$NxSimpleDimValue([void updates(NxSimpleDimValueBuilder b)]) =>
      (new NxSimpleDimValueBuilder()..update(updates)).build();

  _$NxSimpleDimValue._({this.text, this.elemNo}) : super._();

  @override
  NxSimpleDimValue rebuild(void updates(NxSimpleDimValueBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxSimpleDimValueBuilder toBuilder() =>
      new NxSimpleDimValueBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxSimpleDimValue) return false;
    return text == other.text && elemNo == other.elemNo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, text.hashCode), elemNo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxSimpleDimValue')
          ..add('text', text)
          ..add('elemNo', elemNo))
        .toString();
  }
}

class NxSimpleDimValueBuilder
    implements Builder<NxSimpleDimValue, NxSimpleDimValueBuilder> {
  _$NxSimpleDimValue _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  int _elemNo;
  int get elemNo => _$this._elemNo;
  set elemNo(int elemNo) => _$this._elemNo = elemNo;

  NxSimpleDimValueBuilder();

  NxSimpleDimValueBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _elemNo = _$v.elemNo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxSimpleDimValue other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxSimpleDimValue;
  }

  @override
  void update(void updates(NxSimpleDimValueBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxSimpleDimValue build() {
    final _$result =
        _$v ?? new _$NxSimpleDimValue._(text: text, elemNo: elemNo);
    replace(_$result);
    return _$result;
  }
}
