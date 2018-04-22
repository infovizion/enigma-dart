// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_attribute_dim_values;

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

Serializer<NxAttributeDimValues> _$nxAttributeDimValuesSerializer =
    new _$NxAttributeDimValuesSerializer();

class _$NxAttributeDimValuesSerializer
    implements StructuredSerializer<NxAttributeDimValues> {
  @override
  final Iterable<Type> types = const [
    NxAttributeDimValues,
    _$NxAttributeDimValues
  ];
  @override
  final String wireName = 'NxAttributeDimValues';

  @override
  Iterable serialize(Serializers serializers, NxAttributeDimValues object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.values != null) {
      result
        ..add('values')
        ..add(serializers.serialize(object.values,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  NxAttributeDimValues deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxAttributeDimValuesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'values':
          result.values = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
      }
    }

    return result.build();
  }
}

class _$NxAttributeDimValues extends NxAttributeDimValues {
  @override
  final List<NxCell> values;

  factory _$NxAttributeDimValues(
          [void updates(NxAttributeDimValuesBuilder b)]) =>
      (new NxAttributeDimValuesBuilder()..update(updates)).build();

  _$NxAttributeDimValues._({this.values}) : super._();

  @override
  NxAttributeDimValues rebuild(void updates(NxAttributeDimValuesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxAttributeDimValuesBuilder toBuilder() =>
      new NxAttributeDimValuesBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxAttributeDimValues) return false;
    return values == other.values;
  }

  @override
  int get hashCode {
    return $jf($jc(0, values.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxAttributeDimValues')
          ..add('values', values))
        .toString();
  }
}

class NxAttributeDimValuesBuilder
    implements Builder<NxAttributeDimValues, NxAttributeDimValuesBuilder> {
  _$NxAttributeDimValues _$v;

  List<NxCell> _values;
  List<NxCell> get values => _$this._values;
  set values(List<NxCell> values) => _$this._values = values;

  NxAttributeDimValuesBuilder();

  NxAttributeDimValuesBuilder get _$this {
    if (_$v != null) {
      _values = _$v.values;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxAttributeDimValues other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxAttributeDimValues;
  }

  @override
  void update(void updates(NxAttributeDimValuesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxAttributeDimValues build() {
    final _$result = _$v ?? new _$NxAttributeDimValues._(values: values);
    replace(_$result);
    return _$result;
  }
}
