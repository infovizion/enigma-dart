// GENERATED CODE - DO NOT MODIFY BY HAND

part of method;

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

Serializer<Method> _$methodSerializer = new _$MethodSerializer();

class _$MethodSerializer implements StructuredSerializer<Method> {
  @override
  final Iterable<Type> types = const [Method, _$Method];
  @override
  final String wireName = 'Method';

  @override
  Iterable serialize(Serializers serializers, Method object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'parameters',
      serializers.serialize(object.parameters,
          specifiedType:
              const FullType(BuiltList, const [const FullType(SchemaType)])),
      'responses',
      serializers.serialize(object.responses,
          specifiedType:
              const FullType(BuiltList, const [const FullType(SchemaType)])),
    ];

    return result;
  }

  @override
  Method deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new MethodBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parameters':
          result.parameters.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(SchemaType)])) as BuiltList);
          break;
        case 'responses':
          result.responses.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(SchemaType)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Method extends Method {
  @override
  final String description;
  @override
  final BuiltList<SchemaType> parameters;
  @override
  final BuiltList<SchemaType> responses;

  factory _$Method([void updates(MethodBuilder b)]) =>
      (new MethodBuilder()..update(updates)).build();

  _$Method._({this.description, this.parameters, this.responses}) : super._() {
    if (description == null)
      throw new BuiltValueNullFieldError('Method', 'description');
    if (parameters == null)
      throw new BuiltValueNullFieldError('Method', 'parameters');
    if (responses == null)
      throw new BuiltValueNullFieldError('Method', 'responses');
  }

  @override
  Method rebuild(void updates(MethodBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MethodBuilder toBuilder() => new MethodBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Method) return false;
    return description == other.description &&
        parameters == other.parameters &&
        responses == other.responses;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, description.hashCode), parameters.hashCode),
        responses.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Method')
          ..add('description', description)
          ..add('parameters', parameters)
          ..add('responses', responses))
        .toString();
  }
}

class MethodBuilder implements Builder<Method, MethodBuilder> {
  _$Method _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ListBuilder<SchemaType> _parameters;
  ListBuilder<SchemaType> get parameters =>
      _$this._parameters ??= new ListBuilder<SchemaType>();
  set parameters(ListBuilder<SchemaType> parameters) =>
      _$this._parameters = parameters;

  ListBuilder<SchemaType> _responses;
  ListBuilder<SchemaType> get responses =>
      _$this._responses ??= new ListBuilder<SchemaType>();
  set responses(ListBuilder<SchemaType> responses) =>
      _$this._responses = responses;

  MethodBuilder();

  MethodBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _parameters = _$v.parameters?.toBuilder();
      _responses = _$v.responses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Method other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Method;
  }

  @override
  void update(void updates(MethodBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Method build() {
    _$Method _$result;
    try {
      _$result = _$v ??
          new _$Method._(
              description: description,
              parameters: parameters.build(),
              responses: responses.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'parameters';
        parameters.build();
        _$failedField = 'responses';
        responses.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Method', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
