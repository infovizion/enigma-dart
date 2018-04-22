// GENERATED CODE - DO NOT MODIFY BY HAND

part of extension_list_def;

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

Serializer<ExtensionListDef> _$extensionListDefSerializer =
    new _$ExtensionListDefSerializer();

class _$ExtensionListDefSerializer
    implements StructuredSerializer<ExtensionListDef> {
  @override
  final Iterable<Type> types = const [ExtensionListDef, _$ExtensionListDef];
  @override
  final String wireName = 'ExtensionListDef';

  @override
  Iterable serialize(Serializers serializers, ExtensionListDef object,
      {FullType specifiedType: FullType.unspecified}) {
    return <Object>[];
  }

  @override
  ExtensionListDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    return new ExtensionListDefBuilder().build();
  }
}

class _$ExtensionListDef extends ExtensionListDef {
  factory _$ExtensionListDef([void updates(ExtensionListDefBuilder b)]) =>
      (new ExtensionListDefBuilder()..update(updates)).build();

  _$ExtensionListDef._() : super._();

  @override
  ExtensionListDef rebuild(void updates(ExtensionListDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ExtensionListDefBuilder toBuilder() =>
      new ExtensionListDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ExtensionListDef) return false;
    return true;
  }

  @override
  int get hashCode {
    return 492528702;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ExtensionListDef').toString();
  }
}

class ExtensionListDefBuilder
    implements Builder<ExtensionListDef, ExtensionListDefBuilder> {
  _$ExtensionListDef _$v;

  ExtensionListDefBuilder();

  @override
  void replace(ExtensionListDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ExtensionListDef;
  }

  @override
  void update(void updates(ExtensionListDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ExtensionListDef build() {
    final _$result = _$v ?? new _$ExtensionListDef._();
    replace(_$result);
    return _$result;
  }
}
