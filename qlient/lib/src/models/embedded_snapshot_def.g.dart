// GENERATED CODE - DO NOT MODIFY BY HAND

part of embedded_snapshot_def;

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

Serializer<EmbeddedSnapshotDef> _$embeddedSnapshotDefSerializer =
    new _$EmbeddedSnapshotDefSerializer();

class _$EmbeddedSnapshotDefSerializer
    implements StructuredSerializer<EmbeddedSnapshotDef> {
  @override
  final Iterable<Type> types = const [
    EmbeddedSnapshotDef,
    _$EmbeddedSnapshotDef
  ];
  @override
  final String wireName = 'EmbeddedSnapshotDef';

  @override
  Iterable serialize(Serializers serializers, EmbeddedSnapshotDef object,
      {FullType specifiedType: FullType.unspecified}) {
    return <Object>[];
  }

  @override
  EmbeddedSnapshotDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    return new EmbeddedSnapshotDefBuilder().build();
  }
}

class _$EmbeddedSnapshotDef extends EmbeddedSnapshotDef {
  factory _$EmbeddedSnapshotDef([void updates(EmbeddedSnapshotDefBuilder b)]) =>
      (new EmbeddedSnapshotDefBuilder()..update(updates)).build();

  _$EmbeddedSnapshotDef._() : super._();

  @override
  EmbeddedSnapshotDef rebuild(void updates(EmbeddedSnapshotDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  EmbeddedSnapshotDefBuilder toBuilder() =>
      new EmbeddedSnapshotDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! EmbeddedSnapshotDef) return false;
    return true;
  }

  @override
  int get hashCode {
    return 958687541;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('EmbeddedSnapshotDef').toString();
  }
}

class EmbeddedSnapshotDefBuilder
    implements Builder<EmbeddedSnapshotDef, EmbeddedSnapshotDefBuilder> {
  _$EmbeddedSnapshotDef _$v;

  EmbeddedSnapshotDefBuilder();

  @override
  void replace(EmbeddedSnapshotDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$EmbeddedSnapshotDef;
  }

  @override
  void update(void updates(EmbeddedSnapshotDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$EmbeddedSnapshotDef build() {
    final _$result = _$v ?? new _$EmbeddedSnapshotDef._();
    replace(_$result);
    return _$result;
  }
}
