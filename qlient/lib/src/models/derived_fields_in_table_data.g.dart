// GENERATED CODE - DO NOT MODIFY BY HAND

part of derived_fields_in_table_data;

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

Serializer<DerivedFieldsInTableData> _$derivedFieldsInTableDataSerializer =
    new _$DerivedFieldsInTableDataSerializer();

class _$DerivedFieldsInTableDataSerializer
    implements StructuredSerializer<DerivedFieldsInTableData> {
  @override
  final Iterable<Type> types = const [
    DerivedFieldsInTableData,
    _$DerivedFieldsInTableData
  ];
  @override
  final String wireName = 'DerivedFieldsInTableData';

  @override
  Iterable serialize(Serializers serializers, DerivedFieldsInTableData object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.definitionName != null) {
      result
        ..add('definitionName')
        ..add(serializers.serialize(object.definitionName,
            specifiedType: const FullType(String)));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.active != null) {
      result
        ..add('active')
        ..add(serializers.serialize(object.active,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  DerivedFieldsInTableData deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new DerivedFieldsInTableDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'definitionName':
          result.definitionName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tags':
          result.tags = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$DerivedFieldsInTableData extends DerivedFieldsInTableData {
  @override
  final String definitionName;
  @override
  final List<NxCell> tags;
  @override
  final bool active;

  factory _$DerivedFieldsInTableData(
          [void updates(DerivedFieldsInTableDataBuilder b)]) =>
      (new DerivedFieldsInTableDataBuilder()..update(updates)).build();

  _$DerivedFieldsInTableData._({this.definitionName, this.tags, this.active})
      : super._();

  @override
  DerivedFieldsInTableData rebuild(
          void updates(DerivedFieldsInTableDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DerivedFieldsInTableDataBuilder toBuilder() =>
      new DerivedFieldsInTableDataBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! DerivedFieldsInTableData) return false;
    return definitionName == other.definitionName &&
        tags == other.tags &&
        active == other.active;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, definitionName.hashCode), tags.hashCode), active.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DerivedFieldsInTableData')
          ..add('definitionName', definitionName)
          ..add('tags', tags)
          ..add('active', active))
        .toString();
  }
}

class DerivedFieldsInTableDataBuilder
    implements
        Builder<DerivedFieldsInTableData, DerivedFieldsInTableDataBuilder> {
  _$DerivedFieldsInTableData _$v;

  String _definitionName;
  String get definitionName => _$this._definitionName;
  set definitionName(String definitionName) =>
      _$this._definitionName = definitionName;

  List<NxCell> _tags;
  List<NxCell> get tags => _$this._tags;
  set tags(List<NxCell> tags) => _$this._tags = tags;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  DerivedFieldsInTableDataBuilder();

  DerivedFieldsInTableDataBuilder get _$this {
    if (_$v != null) {
      _definitionName = _$v.definitionName;
      _tags = _$v.tags;
      _active = _$v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DerivedFieldsInTableData other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$DerivedFieldsInTableData;
  }

  @override
  void update(void updates(DerivedFieldsInTableDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DerivedFieldsInTableData build() {
    final _$result = _$v ??
        new _$DerivedFieldsInTableData._(
            definitionName: definitionName, tags: tags, active: active);
    replace(_$result);
    return _$result;
  }
}
