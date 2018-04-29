// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_list_object_expression;

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

Serializer<NxListObjectExpression> _$nxListObjectExpressionSerializer =
    new _$NxListObjectExpressionSerializer();

class _$NxListObjectExpressionSerializer
    implements StructuredSerializer<NxListObjectExpression> {
  @override
  final Iterable<Type> types = const [
    NxListObjectExpression,
    _$NxListObjectExpression
  ];
  @override
  final String wireName = 'NxListObjectExpression';

  @override
  Iterable serialize(Serializers serializers, NxListObjectExpression object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.expr != null) {
      result
        ..add('expr')
        ..add(serializers.serialize(object.expr,
            specifiedType: const FullType(String)));
    }
    if (object.error != null) {
      result
        ..add('error')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(NxLayoutErrors)));
    }

    return result;
  }

  @override
  NxListObjectExpression deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxListObjectExpressionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'expr':
          result.expr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxLayoutErrors)) as NxLayoutErrors);
          break;
      }
    }

    return result.build();
  }
}

class _$NxListObjectExpression extends NxListObjectExpression {
  @override
  final String expr;
  @override
  final NxLayoutErrors error;

  factory _$NxListObjectExpression(
          [void updates(NxListObjectExpressionBuilder b)]) =>
      (new NxListObjectExpressionBuilder()..update(updates)).build();

  _$NxListObjectExpression._({this.expr, this.error}) : super._();

  @override
  NxListObjectExpression rebuild(
          void updates(NxListObjectExpressionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxListObjectExpressionBuilder toBuilder() =>
      new NxListObjectExpressionBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxListObjectExpression) return false;
    return expr == other.expr && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, expr.hashCode), error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxListObjectExpression')
          ..add('expr', expr)
          ..add('error', error))
        .toString();
  }
}

class NxListObjectExpressionBuilder
    implements Builder<NxListObjectExpression, NxListObjectExpressionBuilder> {
  _$NxListObjectExpression _$v;

  String _expr;
  String get expr => _$this._expr;
  set expr(String expr) => _$this._expr = expr;

  NxLayoutErrorsBuilder _error;
  NxLayoutErrorsBuilder get error =>
      _$this._error ??= new NxLayoutErrorsBuilder();
  set error(NxLayoutErrorsBuilder error) => _$this._error = error;

  NxListObjectExpressionBuilder();

  NxListObjectExpressionBuilder get _$this {
    if (_$v != null) {
      _expr = _$v.expr;
      _error = _$v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxListObjectExpression other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxListObjectExpression;
  }

  @override
  void update(void updates(NxListObjectExpressionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxListObjectExpression build() {
    _$NxListObjectExpression _$result;
    try {
      _$result = _$v ??
          new _$NxListObjectExpression._(expr: expr, error: _error?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxListObjectExpression', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
