// GENERATED CODE - DO NOT MODIFY BY HAND

part of string_expression;

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

Serializer<StringExpression> _$stringExpressionSerializer =
    new _$StringExpressionSerializer();

class _$StringExpressionSerializer
    implements StructuredSerializer<StringExpression> {
  @override
  final Iterable<Type> types = const [StringExpression, _$StringExpression];
  @override
  final String wireName = 'StringExpression';

  @override
  Iterable serialize(Serializers serializers, StringExpression object,
      {FullType specifiedType = FullType.unspecified}) {
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
  StringExpression deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StringExpressionBuilder();

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

class _$StringExpression extends StringExpression {
  @override
  final String expr;

  factory _$StringExpression([void updates(StringExpressionBuilder b)]) =>
      (new StringExpressionBuilder()..update(updates)).build();

  _$StringExpression._({this.expr}) : super._();

  @override
  StringExpression rebuild(void updates(StringExpressionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StringExpressionBuilder toBuilder() =>
      new StringExpressionBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! StringExpression) return false;
    return expr == other.expr;
  }

  @override
  int get hashCode {
    return $jf($jc(0, expr.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StringExpression')..add('expr', expr))
        .toString();
  }
}

class StringExpressionBuilder
    implements Builder<StringExpression, StringExpressionBuilder> {
  _$StringExpression _$v;

  String _expr;
  String get expr => _$this._expr;
  set expr(String expr) => _$this._expr = expr;

  StringExpressionBuilder();

  StringExpressionBuilder get _$this {
    if (_$v != null) {
      _expr = _$v.expr;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StringExpression other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$StringExpression;
  }

  @override
  void update(void updates(StringExpressionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$StringExpression build() {
    final _$result = _$v ?? new _$StringExpression._(expr: expr);
    replace(_$result);
    return _$result;
  }
}
