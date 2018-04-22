// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_object_entry;

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

Serializer<GenericObjectEntry> _$genericObjectEntrySerializer =
    new _$GenericObjectEntrySerializer();

class _$GenericObjectEntrySerializer
    implements StructuredSerializer<GenericObjectEntry> {
  @override
  final Iterable<Type> types = const [GenericObjectEntry, _$GenericObjectEntry];
  @override
  final String wireName = 'GenericObjectEntry';

  @override
  Iterable serialize(Serializers serializers, GenericObjectEntry object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.property != null) {
      result
        ..add('property')
        ..add(serializers.serialize(object.property,
            specifiedType: const FullType(GenericObjectProperties)));
    }
    if (object.children != null) {
      result
        ..add('children')
        ..add(serializers.serialize(object.children,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.embeddedSnapshotRef != null) {
      result
        ..add('embeddedSnapshotRef')
        ..add(serializers.serialize(object.embeddedSnapshotRef,
            specifiedType: const FullType(GenericBookmarkEntry)));
    }

    return result;
  }

  @override
  GenericObjectEntry deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new GenericObjectEntryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'property':
          result.property.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GenericObjectProperties))
              as GenericObjectProperties);
          break;
        case 'children':
          result.children = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'embeddedSnapshotRef':
          result.embeddedSnapshotRef.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GenericBookmarkEntry))
              as GenericBookmarkEntry);
          break;
      }
    }

    return result.build();
  }
}

class _$GenericObjectEntry extends GenericObjectEntry {
  @override
  final GenericObjectProperties property;
  @override
  final List<NxCell> children;
  @override
  final GenericBookmarkEntry embeddedSnapshotRef;

  factory _$GenericObjectEntry([void updates(GenericObjectEntryBuilder b)]) =>
      (new GenericObjectEntryBuilder()..update(updates)).build();

  _$GenericObjectEntry._(
      {this.property, this.children, this.embeddedSnapshotRef})
      : super._();

  @override
  GenericObjectEntry rebuild(void updates(GenericObjectEntryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GenericObjectEntryBuilder toBuilder() =>
      new GenericObjectEntryBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GenericObjectEntry) return false;
    return property == other.property &&
        children == other.children &&
        embeddedSnapshotRef == other.embeddedSnapshotRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, property.hashCode), children.hashCode),
        embeddedSnapshotRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenericObjectEntry')
          ..add('property', property)
          ..add('children', children)
          ..add('embeddedSnapshotRef', embeddedSnapshotRef))
        .toString();
  }
}

class GenericObjectEntryBuilder
    implements Builder<GenericObjectEntry, GenericObjectEntryBuilder> {
  _$GenericObjectEntry _$v;

  GenericObjectPropertiesBuilder _property;
  GenericObjectPropertiesBuilder get property =>
      _$this._property ??= new GenericObjectPropertiesBuilder();
  set property(GenericObjectPropertiesBuilder property) =>
      _$this._property = property;

  List<NxCell> _children;
  List<NxCell> get children => _$this._children;
  set children(List<NxCell> children) => _$this._children = children;

  GenericBookmarkEntryBuilder _embeddedSnapshotRef;
  GenericBookmarkEntryBuilder get embeddedSnapshotRef =>
      _$this._embeddedSnapshotRef ??= new GenericBookmarkEntryBuilder();
  set embeddedSnapshotRef(GenericBookmarkEntryBuilder embeddedSnapshotRef) =>
      _$this._embeddedSnapshotRef = embeddedSnapshotRef;

  GenericObjectEntryBuilder();

  GenericObjectEntryBuilder get _$this {
    if (_$v != null) {
      _property = _$v.property?.toBuilder();
      _children = _$v.children;
      _embeddedSnapshotRef = _$v.embeddedSnapshotRef?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenericObjectEntry other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GenericObjectEntry;
  }

  @override
  void update(void updates(GenericObjectEntryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GenericObjectEntry build() {
    _$GenericObjectEntry _$result;
    try {
      _$result = _$v ??
          new _$GenericObjectEntry._(
              property: _property?.build(),
              children: children,
              embeddedSnapshotRef: _embeddedSnapshotRef?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'property';
        _property?.build();

        _$failedField = 'embeddedSnapshotRef';
        _embeddedSnapshotRef?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenericObjectEntry', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
