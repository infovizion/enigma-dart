// GENERATED CODE - DO NOT MODIFY BY HAND

part of table_view_save_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<TableViewSaveInfo> _$tableViewSaveInfoSerializer =
    new _$TableViewSaveInfoSerializer();

class _$TableViewSaveInfoSerializer
    implements StructuredSerializer<TableViewSaveInfo> {
  @override
  final Iterable<Type> types = const [TableViewSaveInfo, _$TableViewSaveInfo];
  @override
  final String wireName = 'TableViewSaveInfo';

  @override
  Iterable serialize(Serializers serializers, TableViewSaveInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.tables != null) {
      result
        ..add('qTables')
        ..add(serializers.serialize(object.tables,
            specifiedType: const FullType(
                BuiltList, const [const FullType(TableViewTableWinSaveInfo)])));
    }
    if (object.broomPoints != null) {
      result
        ..add('qBroomPoints')
        ..add(serializers.serialize(object.broomPoints,
            specifiedType: const FullType(BuiltList,
                const [const FullType(TableViewBroomPointSaveInfo)])));
    }
    if (object.connectionPoints != null) {
      result
        ..add('qConnectionPoints')
        ..add(serializers.serialize(object.connectionPoints,
            specifiedType: const FullType(BuiltList,
                const [const FullType(TableViewConnectionPointSaveInfo)])));
    }
    if (object.zoomFactor != null) {
      result
        ..add('qZoomFactor')
        ..add(serializers.serialize(object.zoomFactor,
            specifiedType: const FullType(num)));
    }

    return result;
  }

  @override
  TableViewSaveInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TableViewSaveInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qTables':
          result.tables.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(TableViewTableWinSaveInfo)
              ])) as BuiltList);
          break;
        case 'qBroomPoints':
          result.broomPoints.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(TableViewBroomPointSaveInfo)
              ])) as BuiltList);
          break;
        case 'qConnectionPoints':
          result.connectionPoints.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(TableViewConnectionPointSaveInfo)
              ])) as BuiltList);
          break;
        case 'qZoomFactor':
          result.zoomFactor = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
      }
    }

    return result.build();
  }
}

class _$TableViewSaveInfo extends TableViewSaveInfo {
  @override
  final BuiltList<TableViewTableWinSaveInfo> tables;
  @override
  final BuiltList<TableViewBroomPointSaveInfo> broomPoints;
  @override
  final BuiltList<TableViewConnectionPointSaveInfo> connectionPoints;
  @override
  final num zoomFactor;

  factory _$TableViewSaveInfo([void updates(TableViewSaveInfoBuilder b)]) =>
      (new TableViewSaveInfoBuilder()..update(updates)).build();

  _$TableViewSaveInfo._(
      {this.tables, this.broomPoints, this.connectionPoints, this.zoomFactor})
      : super._();

  @override
  TableViewSaveInfo rebuild(void updates(TableViewSaveInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TableViewSaveInfoBuilder toBuilder() =>
      new TableViewSaveInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! TableViewSaveInfo) return false;
    return tables == other.tables &&
        broomPoints == other.broomPoints &&
        connectionPoints == other.connectionPoints &&
        zoomFactor == other.zoomFactor;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, tables.hashCode), broomPoints.hashCode),
            connectionPoints.hashCode),
        zoomFactor.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TableViewSaveInfo')
          ..add('tables', tables)
          ..add('broomPoints', broomPoints)
          ..add('connectionPoints', connectionPoints)
          ..add('zoomFactor', zoomFactor))
        .toString();
  }
}

class TableViewSaveInfoBuilder
    implements Builder<TableViewSaveInfo, TableViewSaveInfoBuilder> {
  _$TableViewSaveInfo _$v;

  ListBuilder<TableViewTableWinSaveInfo> _tables;
  ListBuilder<TableViewTableWinSaveInfo> get tables =>
      _$this._tables ??= new ListBuilder<TableViewTableWinSaveInfo>();
  set tables(ListBuilder<TableViewTableWinSaveInfo> tables) =>
      _$this._tables = tables;

  ListBuilder<TableViewBroomPointSaveInfo> _broomPoints;
  ListBuilder<TableViewBroomPointSaveInfo> get broomPoints =>
      _$this._broomPoints ??= new ListBuilder<TableViewBroomPointSaveInfo>();
  set broomPoints(ListBuilder<TableViewBroomPointSaveInfo> broomPoints) =>
      _$this._broomPoints = broomPoints;

  ListBuilder<TableViewConnectionPointSaveInfo> _connectionPoints;
  ListBuilder<TableViewConnectionPointSaveInfo> get connectionPoints =>
      _$this._connectionPoints ??=
          new ListBuilder<TableViewConnectionPointSaveInfo>();
  set connectionPoints(
          ListBuilder<TableViewConnectionPointSaveInfo> connectionPoints) =>
      _$this._connectionPoints = connectionPoints;

  num _zoomFactor;
  num get zoomFactor => _$this._zoomFactor;
  set zoomFactor(num zoomFactor) => _$this._zoomFactor = zoomFactor;

  TableViewSaveInfoBuilder();

  TableViewSaveInfoBuilder get _$this {
    if (_$v != null) {
      _tables = _$v.tables?.toBuilder();
      _broomPoints = _$v.broomPoints?.toBuilder();
      _connectionPoints = _$v.connectionPoints?.toBuilder();
      _zoomFactor = _$v.zoomFactor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TableViewSaveInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$TableViewSaveInfo;
  }

  @override
  void update(void updates(TableViewSaveInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TableViewSaveInfo build() {
    _$TableViewSaveInfo _$result;
    try {
      _$result = _$v ??
          new _$TableViewSaveInfo._(
              tables: _tables?.build(),
              broomPoints: _broomPoints?.build(),
              connectionPoints: _connectionPoints?.build(),
              zoomFactor: zoomFactor);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tables';
        _tables?.build();
        _$failedField = 'broomPoints';
        _broomPoints?.build();
        _$failedField = 'connectionPoints';
        _connectionPoints?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TableViewSaveInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
