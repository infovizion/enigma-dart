// GENERATED CODE - DO NOT MODIFY BY HAND

part of field_attributes;

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

Serializer<FieldAttributes> _$fieldAttributesSerializer =
    new _$FieldAttributesSerializer();

class _$FieldAttributesSerializer
    implements StructuredSerializer<FieldAttributes> {
  @override
  final Iterable<Type> types = const [FieldAttributes, _$FieldAttributes];
  @override
  final String wireName = 'FieldAttributes';

  @override
  Iterable serialize(Serializers serializers, FieldAttributes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.type != null) {
      result
        ..add('qType')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.nDec != null) {
      result
        ..add('qnDec')
        ..add(serializers.serialize(object.nDec,
            specifiedType: const FullType(int)));
    }
    if (object.useThou != null) {
      result
        ..add('qUseThou')
        ..add(serializers.serialize(object.useThou,
            specifiedType: const FullType(int)));
    }
    if (object.fmt != null) {
      result
        ..add('qFmt')
        ..add(serializers.serialize(object.fmt,
            specifiedType: const FullType(String)));
    }
    if (object.dec != null) {
      result
        ..add('qDec')
        ..add(serializers.serialize(object.dec,
            specifiedType: const FullType(String)));
    }
    if (object.thou != null) {
      result
        ..add('qThou')
        ..add(serializers.serialize(object.thou,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  FieldAttributes deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FieldAttributesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qType':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qnDec':
          result.nDec = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qUseThou':
          result.useThou = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qFmt':
          result.fmt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qDec':
          result.dec = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qThou':
          result.thou = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FieldAttributes extends FieldAttributes {
  @override
  final String type;
  @override
  final int nDec;
  @override
  final int useThou;
  @override
  final String fmt;
  @override
  final String dec;
  @override
  final String thou;

  factory _$FieldAttributes([void updates(FieldAttributesBuilder b)]) =>
      (new FieldAttributesBuilder()..update(updates)).build();

  _$FieldAttributes._(
      {this.type, this.nDec, this.useThou, this.fmt, this.dec, this.thou})
      : super._();

  @override
  FieldAttributes rebuild(void updates(FieldAttributesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldAttributesBuilder toBuilder() =>
      new FieldAttributesBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FieldAttributes) return false;
    return type == other.type &&
        nDec == other.nDec &&
        useThou == other.useThou &&
        fmt == other.fmt &&
        dec == other.dec &&
        thou == other.thou;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, type.hashCode), nDec.hashCode),
                    useThou.hashCode),
                fmt.hashCode),
            dec.hashCode),
        thou.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FieldAttributes')
          ..add('type', type)
          ..add('nDec', nDec)
          ..add('useThou', useThou)
          ..add('fmt', fmt)
          ..add('dec', dec)
          ..add('thou', thou))
        .toString();
  }
}

class FieldAttributesBuilder
    implements Builder<FieldAttributes, FieldAttributesBuilder> {
  _$FieldAttributes _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _nDec;
  int get nDec => _$this._nDec;
  set nDec(int nDec) => _$this._nDec = nDec;

  int _useThou;
  int get useThou => _$this._useThou;
  set useThou(int useThou) => _$this._useThou = useThou;

  String _fmt;
  String get fmt => _$this._fmt;
  set fmt(String fmt) => _$this._fmt = fmt;

  String _dec;
  String get dec => _$this._dec;
  set dec(String dec) => _$this._dec = dec;

  String _thou;
  String get thou => _$this._thou;
  set thou(String thou) => _$this._thou = thou;

  FieldAttributesBuilder();

  FieldAttributesBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _nDec = _$v.nDec;
      _useThou = _$v.useThou;
      _fmt = _$v.fmt;
      _dec = _$v.dec;
      _thou = _$v.thou;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldAttributes other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FieldAttributes;
  }

  @override
  void update(void updates(FieldAttributesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FieldAttributes build() {
    final _$result = _$v ??
        new _$FieldAttributes._(
            type: type,
            nDec: nDec,
            useThou: useThou,
            fmt: fmt,
            dec: dec,
            thou: thou);
    replace(_$result);
    return _$result;
  }
}
