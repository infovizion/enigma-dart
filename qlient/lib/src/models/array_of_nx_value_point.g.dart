// GENERATED CODE - DO NOT MODIFY BY HAND

part of array_of_nx_value_point;

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

Serializer<ArrayOfNxValuePoint> _$arrayOfNxValuePointSerializer =
    new _$ArrayOfNxValuePointSerializer();

class _$ArrayOfNxValuePointSerializer
    implements StructuredSerializer<ArrayOfNxValuePoint> {
  @override
  final Iterable<Type> types = const [
    ArrayOfNxValuePoint,
    _$ArrayOfNxValuePoint
  ];
  @override
  final String wireName = 'ArrayOfNxValuePoint';

  @override
  Iterable serialize(Serializers serializers, ArrayOfNxValuePoint object,
      {FullType specifiedType: FullType.unspecified}) {
    return <Object>[];
  }

  @override
  ArrayOfNxValuePoint deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    return new ArrayOfNxValuePointBuilder().build();
  }
}

class _$ArrayOfNxValuePoint extends ArrayOfNxValuePoint {
  factory _$ArrayOfNxValuePoint([void updates(ArrayOfNxValuePointBuilder b)]) =>
      (new ArrayOfNxValuePointBuilder()..update(updates)).build();

  _$ArrayOfNxValuePoint._() : super._();

  @override
  ArrayOfNxValuePoint rebuild(void updates(ArrayOfNxValuePointBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ArrayOfNxValuePointBuilder toBuilder() =>
      new ArrayOfNxValuePointBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ArrayOfNxValuePoint) return false;
    return true;
  }

  @override
  int get hashCode {
    return 938222259;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ArrayOfNxValuePoint').toString();
  }
}

class ArrayOfNxValuePointBuilder
    implements Builder<ArrayOfNxValuePoint, ArrayOfNxValuePointBuilder> {
  _$ArrayOfNxValuePoint _$v;

  ArrayOfNxValuePointBuilder();

  @override
  void replace(ArrayOfNxValuePoint other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ArrayOfNxValuePoint;
  }

  @override
  void update(void updates(ArrayOfNxValuePointBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ArrayOfNxValuePoint build() {
    final _$result = _$v ?? new _$ArrayOfNxValuePoint._();
    replace(_$result);
    return _$result;
  }
}
