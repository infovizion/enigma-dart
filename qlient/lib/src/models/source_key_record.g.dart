// GENERATED CODE - DO NOT MODIFY BY HAND

part of source_key_record;

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

Serializer<SourceKeyRecord> _$sourceKeyRecordSerializer =
    new _$SourceKeyRecordSerializer();

class _$SourceKeyRecordSerializer
    implements StructuredSerializer<SourceKeyRecord> {
  @override
  final Iterable<Type> types = const [SourceKeyRecord, _$SourceKeyRecord];
  @override
  final String wireName = 'SourceKeyRecord';

  @override
  Iterable serialize(Serializers serializers, SourceKeyRecord object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.keyFields != null) {
      result
        ..add('keyFields')
        ..add(serializers.serialize(object.keyFields,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.tables != null) {
      result
        ..add('tables')
        ..add(serializers.serialize(object.tables,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  SourceKeyRecord deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SourceKeyRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'keyFields':
          result.keyFields = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'tables':
          result.tables = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
      }
    }

    return result.build();
  }
}

class _$SourceKeyRecord extends SourceKeyRecord {
  @override
  final List<NxCell> keyFields;
  @override
  final List<NxCell> tables;

  factory _$SourceKeyRecord([void updates(SourceKeyRecordBuilder b)]) =>
      (new SourceKeyRecordBuilder()..update(updates)).build();

  _$SourceKeyRecord._({this.keyFields, this.tables}) : super._();

  @override
  SourceKeyRecord rebuild(void updates(SourceKeyRecordBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceKeyRecordBuilder toBuilder() =>
      new SourceKeyRecordBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SourceKeyRecord) return false;
    return keyFields == other.keyFields && tables == other.tables;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, keyFields.hashCode), tables.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SourceKeyRecord')
          ..add('keyFields', keyFields)
          ..add('tables', tables))
        .toString();
  }
}

class SourceKeyRecordBuilder
    implements Builder<SourceKeyRecord, SourceKeyRecordBuilder> {
  _$SourceKeyRecord _$v;

  List<NxCell> _keyFields;
  List<NxCell> get keyFields => _$this._keyFields;
  set keyFields(List<NxCell> keyFields) => _$this._keyFields = keyFields;

  List<NxCell> _tables;
  List<NxCell> get tables => _$this._tables;
  set tables(List<NxCell> tables) => _$this._tables = tables;

  SourceKeyRecordBuilder();

  SourceKeyRecordBuilder get _$this {
    if (_$v != null) {
      _keyFields = _$v.keyFields;
      _tables = _$v.tables;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceKeyRecord other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SourceKeyRecord;
  }

  @override
  void update(void updates(SourceKeyRecordBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SourceKeyRecord build() {
    final _$result =
        _$v ?? new _$SourceKeyRecord._(keyFields: keyFields, tables: tables);
    replace(_$result);
    return _$result;
  }
}
