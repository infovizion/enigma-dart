// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_derived_field;

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

Serializer<NxDerivedField> _$nxDerivedFieldSerializer =
    new _$NxDerivedFieldSerializer();

class _$NxDerivedFieldSerializer
    implements StructuredSerializer<NxDerivedField> {
  @override
  final Iterable<Type> types = const [NxDerivedField, _$NxDerivedField];
  @override
  final String wireName = 'NxDerivedField';

  @override
  Iterable serialize(Serializers serializers, NxDerivedField object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.method != null) {
      result
        ..add('method')
        ..add(serializers.serialize(object.method,
            specifiedType: const FullType(String)));
    }
    if (object.expr != null) {
      result
        ..add('expr')
        ..add(serializers.serialize(object.expr,
            specifiedType: const FullType(String)));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  NxDerivedField deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxDerivedFieldBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'method':
          result.method = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expr':
          result.expr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$NxDerivedField extends NxDerivedField {
  @override
  final String id;
  @override
  final String name;
  @override
  final String method;
  @override
  final String expr;
  @override
  final BuiltList<NxCell> tags;

  factory _$NxDerivedField([void updates(NxDerivedFieldBuilder b)]) =>
      (new NxDerivedFieldBuilder()..update(updates)).build();

  _$NxDerivedField._({this.id, this.name, this.method, this.expr, this.tags})
      : super._();

  @override
  NxDerivedField rebuild(void updates(NxDerivedFieldBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxDerivedFieldBuilder toBuilder() =>
      new NxDerivedFieldBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxDerivedField) return false;
    return id == other.id &&
        name == other.name &&
        method == other.method &&
        expr == other.expr &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), method.hashCode),
            expr.hashCode),
        tags.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxDerivedField')
          ..add('id', id)
          ..add('name', name)
          ..add('method', method)
          ..add('expr', expr)
          ..add('tags', tags))
        .toString();
  }
}

class NxDerivedFieldBuilder
    implements Builder<NxDerivedField, NxDerivedFieldBuilder> {
  _$NxDerivedField _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _method;
  String get method => _$this._method;
  set method(String method) => _$this._method = method;

  String _expr;
  String get expr => _$this._expr;
  set expr(String expr) => _$this._expr = expr;

  ListBuilder<NxCell> _tags;
  ListBuilder<NxCell> get tags => _$this._tags ??= new ListBuilder<NxCell>();
  set tags(ListBuilder<NxCell> tags) => _$this._tags = tags;

  NxDerivedFieldBuilder();

  NxDerivedFieldBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _method = _$v.method;
      _expr = _$v.expr;
      _tags = _$v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxDerivedField other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxDerivedField;
  }

  @override
  void update(void updates(NxDerivedFieldBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxDerivedField build() {
    _$NxDerivedField _$result;
    try {
      _$result = _$v ??
          new _$NxDerivedField._(
              id: id,
              name: name,
              method: method,
              expr: expr,
              tags: _tags?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxDerivedField', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
