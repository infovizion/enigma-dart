// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_derived_group;

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

Serializer<NxDerivedGroup> _$nxDerivedGroupSerializer =
    new _$NxDerivedGroupSerializer();

class _$NxDerivedGroupSerializer
    implements StructuredSerializer<NxDerivedGroup> {
  @override
  final Iterable<Type> types = const [NxDerivedGroup, _$NxDerivedGroup];
  @override
  final String wireName = 'NxDerivedGroup';

  @override
  Iterable serialize(Serializers serializers, NxDerivedGroup object,
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
    if (object.grouping != null) {
      result
        ..add('grouping')
        ..add(serializers.serialize(object.grouping,
            specifiedType: const FullType(String)));
    }
    if (object.fieldDefs != null) {
      result
        ..add('fieldDefs')
        ..add(serializers.serialize(object.fieldDefs,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  NxDerivedGroup deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxDerivedGroupBuilder();

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
        case 'grouping':
          result.grouping = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fieldDefs':
          result.fieldDefs = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
      }
    }

    return result.build();
  }
}

class _$NxDerivedGroup extends NxDerivedGroup {
  @override
  final String id;
  @override
  final String name;
  @override
  final String grouping;
  @override
  final List<NxCell> fieldDefs;

  factory _$NxDerivedGroup([void updates(NxDerivedGroupBuilder b)]) =>
      (new NxDerivedGroupBuilder()..update(updates)).build();

  _$NxDerivedGroup._({this.id, this.name, this.grouping, this.fieldDefs})
      : super._();

  @override
  NxDerivedGroup rebuild(void updates(NxDerivedGroupBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxDerivedGroupBuilder toBuilder() =>
      new NxDerivedGroupBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxDerivedGroup) return false;
    return id == other.id &&
        name == other.name &&
        grouping == other.grouping &&
        fieldDefs == other.fieldDefs;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), grouping.hashCode),
        fieldDefs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxDerivedGroup')
          ..add('id', id)
          ..add('name', name)
          ..add('grouping', grouping)
          ..add('fieldDefs', fieldDefs))
        .toString();
  }
}

class NxDerivedGroupBuilder
    implements Builder<NxDerivedGroup, NxDerivedGroupBuilder> {
  _$NxDerivedGroup _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _grouping;
  String get grouping => _$this._grouping;
  set grouping(String grouping) => _$this._grouping = grouping;

  List<NxCell> _fieldDefs;
  List<NxCell> get fieldDefs => _$this._fieldDefs;
  set fieldDefs(List<NxCell> fieldDefs) => _$this._fieldDefs = fieldDefs;

  NxDerivedGroupBuilder();

  NxDerivedGroupBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _grouping = _$v.grouping;
      _fieldDefs = _$v.fieldDefs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxDerivedGroup other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxDerivedGroup;
  }

  @override
  void update(void updates(NxDerivedGroupBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxDerivedGroup build() {
    final _$result = _$v ??
        new _$NxDerivedGroup._(
            id: id, name: name, grouping: grouping, fieldDefs: fieldDefs);
    replace(_$result);
    return _$result;
  }
}
