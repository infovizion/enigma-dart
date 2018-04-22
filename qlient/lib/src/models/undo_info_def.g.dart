// GENERATED CODE - DO NOT MODIFY BY HAND

part of undo_info_def;

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

Serializer<UndoInfoDef> _$undoInfoDefSerializer = new _$UndoInfoDefSerializer();

class _$UndoInfoDefSerializer implements StructuredSerializer<UndoInfoDef> {
  @override
  final Iterable<Type> types = const [UndoInfoDef, _$UndoInfoDef];
  @override
  final String wireName = 'UndoInfoDef';

  @override
  Iterable serialize(Serializers serializers, UndoInfoDef object,
      {FullType specifiedType: FullType.unspecified}) {
    return <Object>[];
  }

  @override
  UndoInfoDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    return new UndoInfoDefBuilder().build();
  }
}

class _$UndoInfoDef extends UndoInfoDef {
  factory _$UndoInfoDef([void updates(UndoInfoDefBuilder b)]) =>
      (new UndoInfoDefBuilder()..update(updates)).build();

  _$UndoInfoDef._() : super._();

  @override
  UndoInfoDef rebuild(void updates(UndoInfoDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UndoInfoDefBuilder toBuilder() => new UndoInfoDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! UndoInfoDef) return false;
    return true;
  }

  @override
  int get hashCode {
    return 379275917;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('UndoInfoDef').toString();
  }
}

class UndoInfoDefBuilder implements Builder<UndoInfoDef, UndoInfoDefBuilder> {
  _$UndoInfoDef _$v;

  UndoInfoDefBuilder();

  @override
  void replace(UndoInfoDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$UndoInfoDef;
  }

  @override
  void update(void updates(UndoInfoDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UndoInfoDef build() {
    final _$result = _$v ?? new _$UndoInfoDef._();
    replace(_$result);
    return _$result;
  }
}
