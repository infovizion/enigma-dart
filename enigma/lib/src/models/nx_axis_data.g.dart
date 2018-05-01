// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_axis_data;

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

Serializer<NxAxisData> _$nxAxisDataSerializer = new _$NxAxisDataSerializer();

class _$NxAxisDataSerializer implements StructuredSerializer<NxAxisData> {
  @override
  final Iterable<Type> types = const [NxAxisData, _$NxAxisData];
  @override
  final String wireName = 'NxAxisData';

  @override
  Iterable serialize(Serializers serializers, NxAxisData object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.axis != null) {
      result
        ..add('qAxis')
        ..add(serializers.serialize(object.axis,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxAxisTicks)])));
    }

    return result;
  }

  @override
  NxAxisData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxAxisDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qAxis':
          result.axis.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxAxisTicks)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$NxAxisData extends NxAxisData {
  @override
  final BuiltList<NxAxisTicks> axis;

  factory _$NxAxisData([void updates(NxAxisDataBuilder b)]) =>
      (new NxAxisDataBuilder()..update(updates)).build();

  _$NxAxisData._({this.axis}) : super._();

  @override
  NxAxisData rebuild(void updates(NxAxisDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxAxisDataBuilder toBuilder() => new NxAxisDataBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxAxisData) return false;
    return axis == other.axis;
  }

  @override
  int get hashCode {
    return $jf($jc(0, axis.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxAxisData')..add('axis', axis))
        .toString();
  }
}

class NxAxisDataBuilder implements Builder<NxAxisData, NxAxisDataBuilder> {
  _$NxAxisData _$v;

  ListBuilder<NxAxisTicks> _axis;
  ListBuilder<NxAxisTicks> get axis =>
      _$this._axis ??= new ListBuilder<NxAxisTicks>();
  set axis(ListBuilder<NxAxisTicks> axis) => _$this._axis = axis;

  NxAxisDataBuilder();

  NxAxisDataBuilder get _$this {
    if (_$v != null) {
      _axis = _$v.axis?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxAxisData other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxAxisData;
  }

  @override
  void update(void updates(NxAxisDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxAxisData build() {
    _$NxAxisData _$result;
    try {
      _$result = _$v ?? new _$NxAxisData._(axis: _axis?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'axis';
        _axis?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxAxisData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
