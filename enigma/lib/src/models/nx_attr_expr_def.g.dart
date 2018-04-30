// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_attr_expr_def;

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

Serializer<NxAttrExprDef> _$nxAttrExprDefSerializer =
    new _$NxAttrExprDefSerializer();

class _$NxAttrExprDefSerializer implements StructuredSerializer<NxAttrExprDef> {
  @override
  final Iterable<Type> types = const [NxAttrExprDef, _$NxAttrExprDef];
  @override
  final String wireName = 'NxAttrExprDef';

  @override
  Iterable serialize(Serializers serializers, NxAttrExprDef object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.expression != null) {
      result
        ..add('qExpression')
        ..add(serializers.serialize(object.expression,
            specifiedType: const FullType(String)));
    }
    if (object.libraryId != null) {
      result
        ..add('qLibraryId')
        ..add(serializers.serialize(object.libraryId,
            specifiedType: const FullType(String)));
    }
    if (object.attribute != null) {
      result
        ..add('qAttribute')
        ..add(serializers.serialize(object.attribute,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  NxAttrExprDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxAttrExprDefBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qExpression':
          result.expression = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qLibraryId':
          result.libraryId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qAttribute':
          result.attribute = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$NxAttrExprDef extends NxAttrExprDef {
  @override
  final String expression;
  @override
  final String libraryId;
  @override
  final bool attribute;

  factory _$NxAttrExprDef([void updates(NxAttrExprDefBuilder b)]) =>
      (new NxAttrExprDefBuilder()..update(updates)).build();

  _$NxAttrExprDef._({this.expression, this.libraryId, this.attribute})
      : super._();

  @override
  NxAttrExprDef rebuild(void updates(NxAttrExprDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxAttrExprDefBuilder toBuilder() => new NxAttrExprDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxAttrExprDef) return false;
    return expression == other.expression &&
        libraryId == other.libraryId &&
        attribute == other.attribute;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, expression.hashCode), libraryId.hashCode),
        attribute.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxAttrExprDef')
          ..add('expression', expression)
          ..add('libraryId', libraryId)
          ..add('attribute', attribute))
        .toString();
  }
}

class NxAttrExprDefBuilder
    implements Builder<NxAttrExprDef, NxAttrExprDefBuilder> {
  _$NxAttrExprDef _$v;

  String _expression;
  String get expression => _$this._expression;
  set expression(String expression) => _$this._expression = expression;

  String _libraryId;
  String get libraryId => _$this._libraryId;
  set libraryId(String libraryId) => _$this._libraryId = libraryId;

  bool _attribute;
  bool get attribute => _$this._attribute;
  set attribute(bool attribute) => _$this._attribute = attribute;

  NxAttrExprDefBuilder();

  NxAttrExprDefBuilder get _$this {
    if (_$v != null) {
      _expression = _$v.expression;
      _libraryId = _$v.libraryId;
      _attribute = _$v.attribute;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxAttrExprDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxAttrExprDef;
  }

  @override
  void update(void updates(NxAttrExprDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxAttrExprDef build() {
    final _$result = _$v ??
        new _$NxAttrExprDef._(
            expression: expression, libraryId: libraryId, attribute: attribute);
    replace(_$result);
    return _$result;
  }
}
