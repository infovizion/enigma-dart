// GENERATED CODE - DO NOT MODIFY BY HAND

part of embedded_snapshot;

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

Serializer<EmbeddedSnapshot> _$embeddedSnapshotSerializer =
    new _$EmbeddedSnapshotSerializer();

class _$EmbeddedSnapshotSerializer
    implements StructuredSerializer<EmbeddedSnapshot> {
  @override
  final Iterable<Type> types = const [EmbeddedSnapshot, _$EmbeddedSnapshot];
  @override
  final String wireName = 'EmbeddedSnapshot';

  @override
  Iterable serialize(Serializers serializers, EmbeddedSnapshot object,
      {FullType specifiedType: FullType.unspecified}) {
    return <Object>[];
  }

  @override
  EmbeddedSnapshot deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    return new EmbeddedSnapshotBuilder().build();
  }
}

class _$EmbeddedSnapshot extends EmbeddedSnapshot {
  factory _$EmbeddedSnapshot([void updates(EmbeddedSnapshotBuilder b)]) =>
      (new EmbeddedSnapshotBuilder()..update(updates)).build();

  _$EmbeddedSnapshot._() : super._();

  @override
  EmbeddedSnapshot rebuild(void updates(EmbeddedSnapshotBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  EmbeddedSnapshotBuilder toBuilder() =>
      new EmbeddedSnapshotBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! EmbeddedSnapshot) return false;
    return true;
  }

  @override
  int get hashCode {
    return 298282463;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('EmbeddedSnapshot').toString();
  }
}

class EmbeddedSnapshotBuilder
    implements Builder<EmbeddedSnapshot, EmbeddedSnapshotBuilder> {
  _$EmbeddedSnapshot _$v;

  EmbeddedSnapshotBuilder();

  @override
  void replace(EmbeddedSnapshot other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$EmbeddedSnapshot;
  }

  @override
  void update(void updates(EmbeddedSnapshotBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$EmbeddedSnapshot build() {
    final _$result = _$v ?? new _$EmbeddedSnapshot._();
    replace(_$result);
    return _$result;
  }
}
