// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_meta_def;

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

Serializer<NxMetaDef> _$nxMetaDefSerializer = new _$NxMetaDefSerializer();

class _$NxMetaDefSerializer implements StructuredSerializer<NxMetaDef> {
  @override
  final Iterable<Type> types = const [NxMetaDef, _$NxMetaDef];
  @override
  final String wireName = 'NxMetaDef';

  @override
  Iterable serialize(Serializers serializers, NxMetaDef object,
      {FullType specifiedType: FullType.unspecified}) {
    return <Object>[];
  }

  @override
  NxMetaDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    return new NxMetaDefBuilder().build();
  }
}

class _$NxMetaDef extends NxMetaDef {
  factory _$NxMetaDef([void updates(NxMetaDefBuilder b)]) =>
      (new NxMetaDefBuilder()..update(updates)).build();

  _$NxMetaDef._() : super._();

  @override
  NxMetaDef rebuild(void updates(NxMetaDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxMetaDefBuilder toBuilder() => new NxMetaDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxMetaDef) return false;
    return true;
  }

  @override
  int get hashCode {
    return 665783479;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('NxMetaDef').toString();
  }
}

class NxMetaDefBuilder implements Builder<NxMetaDef, NxMetaDefBuilder> {
  _$NxMetaDef _$v;

  NxMetaDefBuilder();

  @override
  void replace(NxMetaDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxMetaDef;
  }

  @override
  void update(void updates(NxMetaDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxMetaDef build() {
    final _$result = _$v ?? new _$NxMetaDef._();
    replace(_$result);
    return _$result;
  }
}
