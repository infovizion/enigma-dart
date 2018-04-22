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
        ..add('derivedDefinitionName')
        ..add(serializers.serialize(object.derivedDefinitionName,
            specifiedType: const FullType(String)));
    }
    if (object.fieldDefs != null) {
      result
        ..add('fieldDefs')
        ..add(serializers.serialize(object.fieldDefs,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.groupDefs != null) {
      result
        ..add('groupDefs')
        ..add(serializers.serialize(object.groupDefs,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
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
        case 'derivedDefinitionName':
          result.derivedDefinitionName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fieldDefs':
          result.fieldDefs = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'groupDefs':
          result.groupDefs = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'tags':
          result.tags = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
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
  final List<NxCell> fieldDefs;
  @override
  final List<NxCell> groupDefs;
  @override
  final List<NxCell> tags;

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

  List<NxCell> _fieldDefs;
  List<NxCell> get fieldDefs => _$this._fieldDefs;
  set fieldDefs(List<NxCell> fieldDefs) => _$this._fieldDefs = fieldDefs;

  List<NxCell> _groupDefs;
  List<NxCell> get groupDefs => _$this._groupDefs;
  set groupDefs(List<NxCell> groupDefs) => _$this._groupDefs = groupDefs;

  List<NxCell> _tags;
  List<NxCell> get tags => _$this._tags;
  set tags(List<NxCell> tags) => _$this._tags = tags;

  NxDerivedFieldsDataBuilder();

  NxDerivedFieldsDataBuilder get _$this {
    if (_$v != null) {
      _derivedDefinitionName = _$v.derivedDefinitionName;
      _fieldDefs = _$v.fieldDefs;
      _groupDefs = _$v.groupDefs;
      _tags = _$v.tags;
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
    final _$result = _$v ??
        new _$NxDerivedFieldsData._(
            derivedDefinitionName: derivedDefinitionName,
            fieldDefs: fieldDefs,
            groupDefs: groupDefs,
            tags: tags);
    replace(_$result);
    return _$result;
  }
}
