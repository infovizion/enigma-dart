// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_list_object_expression_def;

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

Serializer<NxListObjectExpressionDef> _$nxListObjectExpressionDefSerializer =
    new _$NxListObjectExpressionDefSerializer();

class _$NxListObjectExpressionDefSerializer
    implements StructuredSerializer<NxListObjectExpressionDef> {
  @override
  final Iterable<Type> types = const [
    NxListObjectExpressionDef,
    _$NxListObjectExpressionDef
  ];
  @override
  final String wireName = 'NxListObjectExpressionDef';

  @override
  Iterable serialize(Serializers serializers, NxListObjectExpressionDef object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.expr != null) {
      result
        ..add('qExpr')
        ..add(serializers.serialize(object.expr,
            specifiedType: const FullType(String)));
    }
    if (object.libraryId != null) {
      result
        ..add('qLibraryId')
        ..add(serializers.serialize(object.libraryId,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  NxListObjectExpressionDef deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxListObjectExpressionDefBuilder();

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
        case 'qLibraryId':
          result.libraryId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NxListObjectExpressionDef extends NxListObjectExpressionDef {
  @override
  final String expr;
  @override
  final String libraryId;

  factory _$NxListObjectExpressionDef(
          [void updates(NxListObjectExpressionDefBuilder b)]) =>
      (new NxListObjectExpressionDefBuilder()..update(updates)).build();

  _$NxListObjectExpressionDef._({this.expr, this.libraryId}) : super._();

  @override
  NxListObjectExpressionDef rebuild(
          void updates(NxListObjectExpressionDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxListObjectExpressionDefBuilder toBuilder() =>
      new NxListObjectExpressionDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxListObjectExpressionDef) return false;
    return expr == other.expr && libraryId == other.libraryId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, expr.hashCode), libraryId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxListObjectExpressionDef')
          ..add('expr', expr)
          ..add('libraryId', libraryId))
        .toString();
  }
}

class NxListObjectExpressionDefBuilder
    implements
        Builder<NxListObjectExpressionDef, NxListObjectExpressionDefBuilder> {
  _$NxListObjectExpressionDef _$v;

  String _expr;
  String get expr => _$this._expr;
  set expr(String expr) => _$this._expr = expr;

  String _libraryId;
  String get libraryId => _$this._libraryId;
  set libraryId(String libraryId) => _$this._libraryId = libraryId;

  NxListObjectExpressionDefBuilder();

  NxListObjectExpressionDefBuilder get _$this {
    if (_$v != null) {
      _expr = _$v.expr;
      _libraryId = _$v.libraryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxListObjectExpressionDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxListObjectExpressionDef;
  }

  @override
  void update(void updates(NxListObjectExpressionDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxListObjectExpressionDef build() {
    final _$result = _$v ??
        new _$NxListObjectExpressionDef._(expr: expr, libraryId: libraryId);
    replace(_$result);
    return _$result;
  }
}
