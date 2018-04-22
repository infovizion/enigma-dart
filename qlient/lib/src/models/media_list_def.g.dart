// GENERATED CODE - DO NOT MODIFY BY HAND

part of media_list_def;

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

Serializer<MediaListDef> _$mediaListDefSerializer =
    new _$MediaListDefSerializer();

class _$MediaListDefSerializer implements StructuredSerializer<MediaListDef> {
  @override
  final Iterable<Type> types = const [MediaListDef, _$MediaListDef];
  @override
  final String wireName = 'MediaListDef';

  @override
  Iterable serialize(Serializers serializers, MediaListDef object,
      {FullType specifiedType: FullType.unspecified}) {
    return <Object>[];
  }

  @override
  MediaListDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    return new MediaListDefBuilder().build();
  }
}

class _$MediaListDef extends MediaListDef {
  factory _$MediaListDef([void updates(MediaListDefBuilder b)]) =>
      (new MediaListDefBuilder()..update(updates)).build();

  _$MediaListDef._() : super._();

  @override
  MediaListDef rebuild(void updates(MediaListDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaListDefBuilder toBuilder() => new MediaListDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! MediaListDef) return false;
    return true;
  }

  @override
  int get hashCode {
    return 389800885;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('MediaListDef').toString();
  }
}

class MediaListDefBuilder
    implements Builder<MediaListDef, MediaListDefBuilder> {
  _$MediaListDef _$v;

  MediaListDefBuilder();

  @override
  void replace(MediaListDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$MediaListDef;
  }

  @override
  void update(void updates(MediaListDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MediaListDef build() {
    final _$result = _$v ?? new _$MediaListDef._();
    replace(_$result);
    return _$result;
  }
}
