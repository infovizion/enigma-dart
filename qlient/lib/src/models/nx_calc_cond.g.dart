// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_calc_cond;

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

Serializer<NxCalcCond> _$nxCalcCondSerializer = new _$NxCalcCondSerializer();

class _$NxCalcCondSerializer implements StructuredSerializer<NxCalcCond> {
  @override
  final Iterable<Type> types = const [NxCalcCond, _$NxCalcCond];
  @override
  final String wireName = 'NxCalcCond';

  @override
  Iterable serialize(Serializers serializers, NxCalcCond object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.cond != null) {
      result
        ..add('cond')
        ..add(serializers.serialize(object.cond,
            specifiedType: const FullType(ValueExpr)));
    }
    if (object.msg != null) {
      result
        ..add('msg')
        ..add(serializers.serialize(object.msg,
            specifiedType: const FullType(StringExpr)));
    }

    return result;
  }

  @override
  NxCalcCond deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxCalcCondBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'cond':
          result.cond.replace(serializers.deserialize(value,
              specifiedType: const FullType(ValueExpr)) as ValueExpr);
          break;
        case 'msg':
          result.msg.replace(serializers.deserialize(value,
              specifiedType: const FullType(StringExpr)) as StringExpr);
          break;
      }
    }

    return result.build();
  }
}

class _$NxCalcCond extends NxCalcCond {
  @override
  final ValueExpr cond;
  @override
  final StringExpr msg;

  factory _$NxCalcCond([void updates(NxCalcCondBuilder b)]) =>
      (new NxCalcCondBuilder()..update(updates)).build();

  _$NxCalcCond._({this.cond, this.msg}) : super._();

  @override
  NxCalcCond rebuild(void updates(NxCalcCondBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxCalcCondBuilder toBuilder() => new NxCalcCondBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxCalcCond) return false;
    return cond == other.cond && msg == other.msg;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, cond.hashCode), msg.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxCalcCond')
          ..add('cond', cond)
          ..add('msg', msg))
        .toString();
  }
}

class NxCalcCondBuilder implements Builder<NxCalcCond, NxCalcCondBuilder> {
  _$NxCalcCond _$v;

  ValueExprBuilder _cond;
  ValueExprBuilder get cond => _$this._cond ??= new ValueExprBuilder();
  set cond(ValueExprBuilder cond) => _$this._cond = cond;

  StringExprBuilder _msg;
  StringExprBuilder get msg => _$this._msg ??= new StringExprBuilder();
  set msg(StringExprBuilder msg) => _$this._msg = msg;

  NxCalcCondBuilder();

  NxCalcCondBuilder get _$this {
    if (_$v != null) {
      _cond = _$v.cond?.toBuilder();
      _msg = _$v.msg?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxCalcCond other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxCalcCond;
  }

  @override
  void update(void updates(NxCalcCondBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxCalcCond build() {
    _$NxCalcCond _$result;
    try {
      _$result =
          _$v ?? new _$NxCalcCond._(cond: _cond?.build(), msg: _msg?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cond';
        _cond?.build();
        _$failedField = 'msg';
        _msg?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxCalcCond', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
