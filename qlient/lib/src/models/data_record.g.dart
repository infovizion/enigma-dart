// GENERATED CODE - DO NOT MODIFY BY HAND

part of data_record;

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

Serializer<DataRecord> _$dataRecordSerializer = new _$DataRecordSerializer();

class _$DataRecordSerializer implements StructuredSerializer<DataRecord> {
  @override
  final Iterable<Type> types = const [DataRecord, _$DataRecord];
  @override
  final String wireName = 'DataRecord';

  @override
  Iterable serialize(Serializers serializers, DataRecord object,
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
  DataRecord deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new DataRecordBuilder();

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

class _$DataRecord extends DataRecord {
  @override
  final List<NxCell> values;

  factory _$DataRecord([void updates(DataRecordBuilder b)]) =>
      (new DataRecordBuilder()..update(updates)).build();

  _$DataRecord._({this.values}) : super._();

  @override
  DataRecord rebuild(void updates(DataRecordBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DataRecordBuilder toBuilder() => new DataRecordBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! DataRecord) return false;
    return values == other.values;
  }

  @override
  int get hashCode {
    return $jf($jc(0, values.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataRecord')..add('values', values))
        .toString();
  }
}

class DataRecordBuilder implements Builder<DataRecord, DataRecordBuilder> {
  _$DataRecord _$v;

  List<NxCell> _values;
  List<NxCell> get values => _$this._values;
  set values(List<NxCell> values) => _$this._values = values;

  DataRecordBuilder();

  DataRecordBuilder get _$this {
    if (_$v != null) {
      _values = _$v.values;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataRecord other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$DataRecord;
  }

  @override
  void update(void updates(DataRecordBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DataRecord build() {
    final _$result = _$v ?? new _$DataRecord._(values: values);
    replace(_$result);
    return _$result;
  }
}
