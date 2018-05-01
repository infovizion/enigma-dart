// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_derived_fields_data;

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

Serializer<NxDerivedFieldsData> _$nxDerivedFieldsDataSerializer =
    new _$NxDerivedFieldsDataSerializer();

class _$NxDerivedFieldsDataSerializer
    implements StructuredSerializer<NxDerivedFieldsData> {
  @override
  final Iterable<Type> types = const [
    NxDerivedFieldsData,
    _$NxDerivedFieldsData
  ];
  @override
  final String wireName = 'NxDerivedFieldsData';

  @override
  Iterable serialize(Serializers serializers, NxDerivedFieldsData object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.derivedDefinitionName != null) {
      result
        ..add('qDerivedDefinitionName')
        ..add(serializers.serialize(object.derivedDefinitionName,
            specifiedType: const FullType(String)));
    }
    if (object.fieldDefs != null) {
      result
        ..add('qFieldDefs')
        ..add(serializers.serialize(object.fieldDefs,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxDerivedField)])));
    }
    if (object.groupDefs != null) {
      result
        ..add('qGroupDefs')
        ..add(serializers.serialize(object.groupDefs,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxDerivedGroup)])));
    }
    if (object.tags != null) {
      result
        ..add('qTags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }

    return result;
  }

  @override
  NxDerivedFieldsData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxDerivedFieldsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qDerivedDefinitionName':
          result.derivedDefinitionName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qFieldDefs':
          result.fieldDefs.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxDerivedField)]))
              as BuiltList);
          break;
        case 'qGroupDefs':
          result.groupDefs.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxDerivedGroup)]))
              as BuiltList);
          break;
        case 'qTags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$NxDerivedFieldsData extends NxDerivedFieldsData {
  @override
  final String derivedDefinitionName;
  @override
  final BuiltList<NxDerivedField> fieldDefs;
  @override
  final BuiltList<NxDerivedGroup> groupDefs;
  @override
  final BuiltList<String> tags;

  factory _$NxDerivedFieldsData([void updates(NxDerivedFieldsDataBuilder b)]) =>
      (new NxDerivedFieldsDataBuilder()..update(updates)).build();

  _$NxDerivedFieldsData._(
      {this.derivedDefinitionName, this.fieldDefs, this.groupDefs, this.tags})
      : super._();

  @override
  NxDerivedFieldsData rebuild(void updates(NxDerivedFieldsDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxDerivedFieldsDataBuilder toBuilder() =>
      new NxDerivedFieldsDataBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxDerivedFieldsData) return false;
    return derivedDefinitionName == other.derivedDefinitionName &&
        fieldDefs == other.fieldDefs &&
        groupDefs == other.groupDefs &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, derivedDefinitionName.hashCode), fieldDefs.hashCode),
            groupDefs.hashCode),
        tags.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxDerivedFieldsData')
          ..add('derivedDefinitionName', derivedDefinitionName)
          ..add('fieldDefs', fieldDefs)
          ..add('groupDefs', groupDefs)
          ..add('tags', tags))
        .toString();
  }
}

class NxDerivedFieldsDataBuilder
    implements Builder<NxDerivedFieldsData, NxDerivedFieldsDataBuilder> {
  _$NxDerivedFieldsData _$v;

  String _derivedDefinitionName;
  String get derivedDefinitionName => _$this._derivedDefinitionName;
  set derivedDefinitionName(String derivedDefinitionName) =>
      _$this._derivedDefinitionName = derivedDefinitionName;

  ListBuilder<NxDerivedField> _fieldDefs;
  ListBuilder<NxDerivedField> get fieldDefs =>
      _$this._fieldDefs ??= new ListBuilder<NxDerivedField>();
  set fieldDefs(ListBuilder<NxDerivedField> fieldDefs) =>
      _$this._fieldDefs = fieldDefs;

  ListBuilder<NxDerivedGroup> _groupDefs;
  ListBuilder<NxDerivedGroup> get groupDefs =>
      _$this._groupDefs ??= new ListBuilder<NxDerivedGroup>();
  set groupDefs(ListBuilder<NxDerivedGroup> groupDefs) =>
      _$this._groupDefs = groupDefs;

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  NxDerivedFieldsDataBuilder();

  NxDerivedFieldsDataBuilder get _$this {
    if (_$v != null) {
      _derivedDefinitionName = _$v.derivedDefinitionName;
      _fieldDefs = _$v.fieldDefs?.toBuilder();
      _groupDefs = _$v.groupDefs?.toBuilder();
      _tags = _$v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxDerivedFieldsData other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxDerivedFieldsData;
  }

  @override
  void update(void updates(NxDerivedFieldsDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxDerivedFieldsData build() {
    _$NxDerivedFieldsData _$result;
    try {
      _$result = _$v ??
          new _$NxDerivedFieldsData._(
              derivedDefinitionName: derivedDefinitionName,
              fieldDefs: _fieldDefs?.build(),
              groupDefs: _groupDefs?.build(),
              tags: _tags?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'fieldDefs';
        _fieldDefs?.build();
        _$failedField = 'groupDefs';
        _groupDefs?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxDerivedFieldsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
