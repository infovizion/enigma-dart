// GENERATED CODE - DO NOT MODIFY BY HAND

part of layout_exclude;

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

Serializer<LayoutExclude> _$layoutExcludeSerializer =
    new _$LayoutExcludeSerializer();

class _$LayoutExcludeSerializer implements StructuredSerializer<LayoutExclude> {
  @override
  final Iterable<Type> types = const [LayoutExclude, _$LayoutExclude];
  @override
  final String wireName = 'LayoutExclude';

  @override
  Iterable serialize(Serializers serializers, LayoutExclude object,
      {FullType specifiedType: FullType.unspecified}) {
    return <Object>[];
  }

  @override
  LayoutExclude deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    return new LayoutExcludeBuilder().build();
  }
}

class _$LayoutExclude extends LayoutExclude {
  factory _$LayoutExclude([void updates(LayoutExcludeBuilder b)]) =>
      (new LayoutExcludeBuilder()..update(updates)).build();

  _$LayoutExclude._() : super._();

  @override
  LayoutExclude rebuild(void updates(LayoutExcludeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LayoutExcludeBuilder toBuilder() => new LayoutExcludeBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! LayoutExclude) return false;
    return true;
  }

  @override
  int get hashCode {
    return 260857105;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('LayoutExclude').toString();
  }
}

class LayoutExcludeBuilder
    implements Builder<LayoutExclude, LayoutExcludeBuilder> {
  _$LayoutExclude _$v;

  LayoutExcludeBuilder();

  @override
  void replace(LayoutExclude other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$LayoutExclude;
  }

  @override
  void update(void updates(LayoutExcludeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LayoutExclude build() {
    final _$result = _$v ?? new _$LayoutExclude._();
    replace(_$result);
    return _$result;
  }
}
