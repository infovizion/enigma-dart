// GENERATED CODE - DO NOT MODIFY BY HAND

part of value_expr;

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

Serializer<ValueExpr> _$valueExprSerializer = new _$ValueExprSerializer();

class _$ValueExprSerializer implements StructuredSerializer<ValueExpr> {
  @override
  final Iterable<Type> types = const [ValueExpr, _$ValueExpr];
  @override
  final String wireName = 'ValueExpr';

  @override
  Iterable serialize(Serializers serializers, ValueExpr object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.v != null) {
      result
        ..add('v')
        ..add(serializers.serialize(object.v,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  ValueExpr deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ValueExprBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'v':
          result.v = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ValueExpr extends ValueExpr {
  @override
  final String v;

  factory _$ValueExpr([void updates(ValueExprBuilder b)]) =>
      (new ValueExprBuilder()..update(updates)).build();

  _$ValueExpr._({this.v}) : super._();

  @override
  ValueExpr rebuild(void updates(ValueExprBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ValueExprBuilder toBuilder() => new ValueExprBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ValueExpr) return false;
    return v == other.v;
  }

  @override
  int get hashCode {
    return $jf($jc(0, v.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ValueExpr')..add('v', v)).toString();
  }
}

class ValueExprBuilder implements Builder<ValueExpr, ValueExprBuilder> {
  _$ValueExpr _$v;

  String _v;
  String get v => _$this._v;
  set v(String v) => _$this._v = v;

  ValueExprBuilder();

  ValueExprBuilder get _$this {
    if (_$v != null) {
      _v = _$v.v;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValueExpr other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ValueExpr;
  }

  @override
  void update(void updates(ValueExprBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ValueExpr build() {
    final _$result = _$v ?? new _$ValueExpr._(v: v);
    replace(_$result);
    return _$result;
  }
}
