// GENERATED CODE - DO NOT MODIFY BY HAND

part of value_expression;

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

Serializer<ValueExpression> _$valueExpressionSerializer =
    new _$ValueExpressionSerializer();

class _$ValueExpressionSerializer
    implements StructuredSerializer<ValueExpression> {
  @override
  final Iterable<Type> types = const [ValueExpression, _$ValueExpression];
  @override
  final String wireName = 'ValueExpression';

  @override
  Iterable serialize(Serializers serializers, ValueExpression object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.expr != null) {
      result
        ..add('qExpr')
        ..add(serializers.serialize(object.expr,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  ValueExpression deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ValueExpressionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qExpr':
          result.expr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ValueExpression extends ValueExpression {
  @override
  final String expr;

  factory _$ValueExpression([void updates(ValueExpressionBuilder b)]) =>
      (new ValueExpressionBuilder()..update(updates)).build();

  _$ValueExpression._({this.expr}) : super._();

  @override
  ValueExpression rebuild(void updates(ValueExpressionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ValueExpressionBuilder toBuilder() =>
      new ValueExpressionBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ValueExpression) return false;
    return expr == other.expr;
  }

  @override
  int get hashCode {
    return $jf($jc(0, expr.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ValueExpression')..add('expr', expr))
        .toString();
  }
}

class ValueExpressionBuilder
    implements Builder<ValueExpression, ValueExpressionBuilder> {
  _$ValueExpression _$v;

  String _expr;
  String get expr => _$this._expr;
  set expr(String expr) => _$this._expr = expr;

  ValueExpressionBuilder();

  ValueExpressionBuilder get _$this {
    if (_$v != null) {
      _expr = _$v.expr;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValueExpression other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ValueExpression;
  }

  @override
  void update(void updates(ValueExpressionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ValueExpression build() {
    final _$result = _$v ?? new _$ValueExpression._(expr: expr);
    replace(_$result);
    return _$result;
  }
}
