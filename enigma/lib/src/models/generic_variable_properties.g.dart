// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_variable_properties;

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

Serializer<GenericVariableProperties> _$genericVariablePropertiesSerializer =
    new _$GenericVariablePropertiesSerializer();

class _$GenericVariablePropertiesSerializer
    implements StructuredSerializer<GenericVariableProperties> {
  @override
  final Iterable<Type> types = const [
    GenericVariableProperties,
    _$GenericVariableProperties
  ];
  @override
  final String wireName = 'GenericVariableProperties';

  @override
  Iterable serialize(Serializers serializers, GenericVariableProperties object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.info != null) {
      result
        ..add('qInfo')
        ..add(serializers.serialize(object.info,
            specifiedType: const FullType(NxInfo)));
    }
    if (object.metaDef != null) {
      result
        ..add('qMetaDef')
        ..add(serializers.serialize(object.metaDef,
            specifiedType: const FullType(JsonObject)));
    }
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.comment != null) {
      result
        ..add('qComment')
        ..add(serializers.serialize(object.comment,
            specifiedType: const FullType(String)));
    }
    if (object.numberPresentation != null) {
      result
        ..add('qNumberPresentation')
        ..add(serializers.serialize(object.numberPresentation,
            specifiedType: const FullType(FieldAttributes)));
    }
    if (object.includeInBookmark != null) {
      result
        ..add('qIncludeInBookmark')
        ..add(serializers.serialize(object.includeInBookmark,
            specifiedType: const FullType(bool)));
    }
    if (object.definition != null) {
      result
        ..add('qDefinition')
        ..add(serializers.serialize(object.definition,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  GenericVariableProperties deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenericVariablePropertiesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qInfo':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxInfo)) as NxInfo);
          break;
        case 'qMetaDef':
          result.metaDef = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
        case 'qName':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qComment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qNumberPresentation':
          result.numberPresentation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FieldAttributes))
              as FieldAttributes);
          break;
        case 'qIncludeInBookmark':
          result.includeInBookmark = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qDefinition':
          result.definition = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GenericVariableProperties extends GenericVariableProperties {
  @override
  final NxInfo info;
  @override
  final JsonObject metaDef;
  @override
  final String name;
  @override
  final String comment;
  @override
  final FieldAttributes numberPresentation;
  @override
  final bool includeInBookmark;
  @override
  final String definition;

  factory _$GenericVariableProperties(
          [void updates(GenericVariablePropertiesBuilder b)]) =>
      (new GenericVariablePropertiesBuilder()..update(updates)).build();

  _$GenericVariableProperties._(
      {this.info,
      this.metaDef,
      this.name,
      this.comment,
      this.numberPresentation,
      this.includeInBookmark,
      this.definition})
      : super._();

  @override
  GenericVariableProperties rebuild(
          void updates(GenericVariablePropertiesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GenericVariablePropertiesBuilder toBuilder() =>
      new GenericVariablePropertiesBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GenericVariableProperties) return false;
    return info == other.info &&
        metaDef == other.metaDef &&
        name == other.name &&
        comment == other.comment &&
        numberPresentation == other.numberPresentation &&
        includeInBookmark == other.includeInBookmark &&
        definition == other.definition;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, info.hashCode), metaDef.hashCode),
                        name.hashCode),
                    comment.hashCode),
                numberPresentation.hashCode),
            includeInBookmark.hashCode),
        definition.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenericVariableProperties')
          ..add('info', info)
          ..add('metaDef', metaDef)
          ..add('name', name)
          ..add('comment', comment)
          ..add('numberPresentation', numberPresentation)
          ..add('includeInBookmark', includeInBookmark)
          ..add('definition', definition))
        .toString();
  }
}

class GenericVariablePropertiesBuilder
    implements
        Builder<GenericVariableProperties, GenericVariablePropertiesBuilder> {
  _$GenericVariableProperties _$v;

  NxInfoBuilder _info;
  NxInfoBuilder get info => _$this._info ??= new NxInfoBuilder();
  set info(NxInfoBuilder info) => _$this._info = info;

  JsonObject _metaDef;
  JsonObject get metaDef => _$this._metaDef;
  set metaDef(JsonObject metaDef) => _$this._metaDef = metaDef;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  FieldAttributesBuilder _numberPresentation;
  FieldAttributesBuilder get numberPresentation =>
      _$this._numberPresentation ??= new FieldAttributesBuilder();
  set numberPresentation(FieldAttributesBuilder numberPresentation) =>
      _$this._numberPresentation = numberPresentation;

  bool _includeInBookmark;
  bool get includeInBookmark => _$this._includeInBookmark;
  set includeInBookmark(bool includeInBookmark) =>
      _$this._includeInBookmark = includeInBookmark;

  String _definition;
  String get definition => _$this._definition;
  set definition(String definition) => _$this._definition = definition;

  GenericVariablePropertiesBuilder();

  GenericVariablePropertiesBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _metaDef = _$v.metaDef;
      _name = _$v.name;
      _comment = _$v.comment;
      _numberPresentation = _$v.numberPresentation?.toBuilder();
      _includeInBookmark = _$v.includeInBookmark;
      _definition = _$v.definition;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenericVariableProperties other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GenericVariableProperties;
  }

  @override
  void update(void updates(GenericVariablePropertiesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GenericVariableProperties build() {
    _$GenericVariableProperties _$result;
    try {
      _$result = _$v ??
          new _$GenericVariableProperties._(
              info: _info?.build(),
              metaDef: metaDef,
              name: name,
              comment: comment,
              numberPresentation: _numberPresentation?.build(),
              includeInBookmark: includeInBookmark,
              definition: definition);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();

        _$failedField = 'numberPresentation';
        _numberPresentation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenericVariableProperties', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
