// GENERATED CODE - DO NOT MODIFY BY HAND

part of string_expr;

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

Serializer<StringExpr> _$stringExprSerializer = new _$StringExprSerializer();

class _$StringExprSerializer implements StructuredSerializer<StringExpr> {
  @override
  final Iterable<Type> types = const [StringExpr, _$StringExpr];
  @override
  final String wireName = 'StringExpr';

  @override
  Iterable serialize(Serializers serializers, StringExpr object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.v != null) {
      result
        ..add('qv')
        ..add(serializers.serialize(object.v,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  StringExpr deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StringExprBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qv':
          result.v = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StringExpr extends StringExpr {
  @override
  final String v;

  factory _$StringExpr([void updates(StringExprBuilder b)]) =>
      (new StringExprBuilder()..update(updates)).build();

  _$StringExpr._({this.v}) : super._();

  @override
  StringExpr rebuild(void updates(StringExprBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StringExprBuilder toBuilder() => new StringExprBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! StringExpr) return false;
    return v == other.v;
  }

  @override
  int get hashCode {
    return $jf($jc(0, v.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StringExpr')..add('v', v)).toString();
  }
}

class StringExprBuilder implements Builder<StringExpr, StringExprBuilder> {
  _$StringExpr _$v;

  String _v;
  String get v => _$this._v;
  set v(String v) => _$this._v = v;

  StringExprBuilder();

  StringExprBuilder get _$this {
    if (_$v != null) {
      _v = _$v.v;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StringExpr other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$StringExpr;
  }

  @override
  void update(void updates(StringExprBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$StringExpr build() {
    final _$result = _$v ?? new _$StringExpr._(v: v);
    replace(_$result);
    return _$result;
  }
}
