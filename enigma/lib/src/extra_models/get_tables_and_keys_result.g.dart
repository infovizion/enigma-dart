// GENERATED CODE - DO NOT MODIFY BY HAND

part of get_tables_and_keys_result;

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

Serializer<GetTablesAndKeysResult> _$getTablesAndKeysResultSerializer =
    new _$GetTablesAndKeysResultSerializer();

class _$GetTablesAndKeysResultSerializer
    implements StructuredSerializer<GetTablesAndKeysResult> {
  @override
  final Iterable<Type> types = const [
    GetTablesAndKeysResult,
    _$GetTablesAndKeysResult
  ];
  @override
  final String wireName = 'GetTablesAndKeysResult';

  @override
  Iterable serialize(Serializers serializers, GetTablesAndKeysResult object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'qtr',
      serializers.serialize(object.qtr,
          specifiedType:
              const FullType(BuiltList, const [const FullType(TableRecord)])),
      'qk',
      serializers.serialize(object.qk,
          specifiedType: const FullType(
              BuiltList, const [const FullType(SourceKeyRecord)])),
    ];

    return result;
  }

  @override
  GetTablesAndKeysResult deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new GetTablesAndKeysResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qtr':
          result.qtr.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TableRecord)]))
              as BuiltList);
          break;
        case 'qk':
          result.qk.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SourceKeyRecord)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$GetTablesAndKeysResult extends GetTablesAndKeysResult {
  @override
  final BuiltList<TableRecord> qtr;
  @override
  final BuiltList<SourceKeyRecord> qk;

  factory _$GetTablesAndKeysResult(
          [void updates(GetTablesAndKeysResultBuilder b)]) =>
      (new GetTablesAndKeysResultBuilder()..update(updates)).build();

  _$GetTablesAndKeysResult._({this.qtr, this.qk}) : super._() {
    if (qtr == null)
      throw new BuiltValueNullFieldError('GetTablesAndKeysResult', 'qtr');
    if (qk == null)
      throw new BuiltValueNullFieldError('GetTablesAndKeysResult', 'qk');
  }

  @override
  GetTablesAndKeysResult rebuild(
          void updates(GetTablesAndKeysResultBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTablesAndKeysResultBuilder toBuilder() =>
      new GetTablesAndKeysResultBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GetTablesAndKeysResult) return false;
    return qtr == other.qtr && qk == other.qk;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, qtr.hashCode), qk.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetTablesAndKeysResult')
          ..add('qtr', qtr)
          ..add('qk', qk))
        .toString();
  }
}

class GetTablesAndKeysResultBuilder
    implements Builder<GetTablesAndKeysResult, GetTablesAndKeysResultBuilder> {
  _$GetTablesAndKeysResult _$v;

  ListBuilder<TableRecord> _qtr;
  ListBuilder<TableRecord> get qtr =>
      _$this._qtr ??= new ListBuilder<TableRecord>();
  set qtr(ListBuilder<TableRecord> qtr) => _$this._qtr = qtr;

  ListBuilder<SourceKeyRecord> _qk;
  ListBuilder<SourceKeyRecord> get qk =>
      _$this._qk ??= new ListBuilder<SourceKeyRecord>();
  set qk(ListBuilder<SourceKeyRecord> qk) => _$this._qk = qk;

  GetTablesAndKeysResultBuilder();

  GetTablesAndKeysResultBuilder get _$this {
    if (_$v != null) {
      _qtr = _$v.qtr?.toBuilder();
      _qk = _$v.qk?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTablesAndKeysResult other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GetTablesAndKeysResult;
  }

  @override
  void update(void updates(GetTablesAndKeysResultBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GetTablesAndKeysResult build() {
    _$GetTablesAndKeysResult _$result;
    try {
      _$result = _$v ??
          new _$GetTablesAndKeysResult._(qtr: qtr.build(), qk: qk.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'qtr';
        qtr.build();
        _$failedField = 'qk';
        qk.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetTablesAndKeysResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
