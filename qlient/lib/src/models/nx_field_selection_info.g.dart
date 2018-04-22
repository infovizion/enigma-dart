// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_field_selection_info;

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

Serializer<NxFieldSelectionInfo> _$nxFieldSelectionInfoSerializer =
    new _$NxFieldSelectionInfoSerializer();

class _$NxFieldSelectionInfoSerializer
    implements StructuredSerializer<NxFieldSelectionInfo> {
  @override
  final Iterable<Type> types = const [
    NxFieldSelectionInfo,
    _$NxFieldSelectionInfo
  ];
  @override
  final String wireName = 'NxFieldSelectionInfo';

  @override
  Iterable serialize(Serializers serializers, NxFieldSelectionInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.fieldSelectionMode != null) {
      result
        ..add('fieldSelectionMode')
        ..add(serializers.serialize(object.fieldSelectionMode,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  NxFieldSelectionInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxFieldSelectionInfoBuilder();

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
        case 'fieldSelectionMode':
          result.fieldSelectionMode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NxFieldSelectionInfo extends NxFieldSelectionInfo {
  @override
  final String name;
  @override
  final String fieldSelectionMode;

  factory _$NxFieldSelectionInfo(
          [void updates(NxFieldSelectionInfoBuilder b)]) =>
      (new NxFieldSelectionInfoBuilder()..update(updates)).build();

  _$NxFieldSelectionInfo._({this.name, this.fieldSelectionMode}) : super._();

  @override
  NxFieldSelectionInfo rebuild(void updates(NxFieldSelectionInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxFieldSelectionInfoBuilder toBuilder() =>
      new NxFieldSelectionInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxFieldSelectionInfo) return false;
    return name == other.name && fieldSelectionMode == other.fieldSelectionMode;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), fieldSelectionMode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxFieldSelectionInfo')
          ..add('name', name)
          ..add('fieldSelectionMode', fieldSelectionMode))
        .toString();
  }
}

class NxFieldSelectionInfoBuilder
    implements Builder<NxFieldSelectionInfo, NxFieldSelectionInfoBuilder> {
  _$NxFieldSelectionInfo _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _fieldSelectionMode;
  String get fieldSelectionMode => _$this._fieldSelectionMode;
  set fieldSelectionMode(String fieldSelectionMode) =>
      _$this._fieldSelectionMode = fieldSelectionMode;

  NxFieldSelectionInfoBuilder();

  NxFieldSelectionInfoBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _fieldSelectionMode = _$v.fieldSelectionMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxFieldSelectionInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxFieldSelectionInfo;
  }

  @override
  void update(void updates(NxFieldSelectionInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxFieldSelectionInfo build() {
    final _$result = _$v ??
        new _$NxFieldSelectionInfo._(
            name: name, fieldSelectionMode: fieldSelectionMode);
    replace(_$result);
    return _$result;
  }
}
