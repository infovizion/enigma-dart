// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_variable_properties;

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

Serializer<NxVariableProperties> _$nxVariablePropertiesSerializer =
    new _$NxVariablePropertiesSerializer();

class _$NxVariablePropertiesSerializer
    implements StructuredSerializer<NxVariableProperties> {
  @override
  final Iterable<Type> types = const [
    NxVariableProperties,
    _$NxVariableProperties
  ];
  @override
  final String wireName = 'NxVariableProperties';

  @override
  Iterable serialize(Serializers serializers, NxVariableProperties object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.numberPresentation != null) {
      result
        ..add('numberPresentation')
        ..add(serializers.serialize(object.numberPresentation,
            specifiedType: const FullType(FieldAttributes)));
    }
    if (object.includeInBookmark != null) {
      result
        ..add('includeInBookmark')
        ..add(serializers.serialize(object.includeInBookmark,
            specifiedType: const FullType(bool)));
    }
    if (object.usePredefListedValues != null) {
      result
        ..add('usePredefListedValues')
        ..add(serializers.serialize(object.usePredefListedValues,
            specifiedType: const FullType(bool)));
    }
    if (object.preDefinedList != null) {
      result
        ..add('preDefinedList')
        ..add(serializers.serialize(object.preDefinedList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  NxVariableProperties deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxVariablePropertiesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'numberPresentation':
          result.numberPresentation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FieldAttributes))
              as FieldAttributes);
          break;
        case 'includeInBookmark':
          result.includeInBookmark = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'usePredefListedValues':
          result.usePredefListedValues = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'preDefinedList':
          result.preDefinedList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$NxVariableProperties extends NxVariableProperties {
  @override
  final String name;
  @override
  final FieldAttributes numberPresentation;
  @override
  final bool includeInBookmark;
  @override
  final bool usePredefListedValues;
  @override
  final BuiltList<NxCell> preDefinedList;

  factory _$NxVariableProperties(
          [void updates(NxVariablePropertiesBuilder b)]) =>
      (new NxVariablePropertiesBuilder()..update(updates)).build();

  _$NxVariableProperties._(
      {this.name,
      this.numberPresentation,
      this.includeInBookmark,
      this.usePredefListedValues,
      this.preDefinedList})
      : super._();

  @override
  NxVariableProperties rebuild(void updates(NxVariablePropertiesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxVariablePropertiesBuilder toBuilder() =>
      new NxVariablePropertiesBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxVariableProperties) return false;
    return name == other.name &&
        numberPresentation == other.numberPresentation &&
        includeInBookmark == other.includeInBookmark &&
        usePredefListedValues == other.usePredefListedValues &&
        preDefinedList == other.preDefinedList;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), numberPresentation.hashCode),
                includeInBookmark.hashCode),
            usePredefListedValues.hashCode),
        preDefinedList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxVariableProperties')
          ..add('name', name)
          ..add('numberPresentation', numberPresentation)
          ..add('includeInBookmark', includeInBookmark)
          ..add('usePredefListedValues', usePredefListedValues)
          ..add('preDefinedList', preDefinedList))
        .toString();
  }
}

class NxVariablePropertiesBuilder
    implements Builder<NxVariableProperties, NxVariablePropertiesBuilder> {
  _$NxVariableProperties _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  FieldAttributesBuilder _numberPresentation;
  FieldAttributesBuilder get numberPresentation =>
      _$this._numberPresentation ??= new FieldAttributesBuilder();
  set numberPresentation(FieldAttributesBuilder numberPresentation) =>
      _$this._numberPresentation = numberPresentation;

  bool _includeInBookmark;
  bool get includeInBookmark => _$this._includeInBookmark;
  set includeInBookmark(bool includeInBookmark) =>
      _$this._includeInBookmark = includeInBookmark;

  bool _usePredefListedValues;
  bool get usePredefListedValues => _$this._usePredefListedValues;
  set usePredefListedValues(bool usePredefListedValues) =>
      _$this._usePredefListedValues = usePredefListedValues;

  ListBuilder<NxCell> _preDefinedList;
  ListBuilder<NxCell> get preDefinedList =>
      _$this._preDefinedList ??= new ListBuilder<NxCell>();
  set preDefinedList(ListBuilder<NxCell> preDefinedList) =>
      _$this._preDefinedList = preDefinedList;

  NxVariablePropertiesBuilder();

  NxVariablePropertiesBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _numberPresentation = _$v.numberPresentation?.toBuilder();
      _includeInBookmark = _$v.includeInBookmark;
      _usePredefListedValues = _$v.usePredefListedValues;
      _preDefinedList = _$v.preDefinedList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxVariableProperties other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxVariableProperties;
  }

  @override
  void update(void updates(NxVariablePropertiesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxVariableProperties build() {
    _$NxVariableProperties _$result;
    try {
      _$result = _$v ??
          new _$NxVariableProperties._(
              name: name,
              numberPresentation: _numberPresentation?.build(),
              includeInBookmark: includeInBookmark,
              usePredefListedValues: usePredefListedValues,
              preDefinedList: _preDefinedList?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'numberPresentation';
        _numberPresentation?.build();

        _$failedField = 'preDefinedList';
        _preDefinedList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxVariableProperties', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
