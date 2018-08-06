// GENERATED CODE - DO NOT MODIFY BY HAND

part of table_view_broom_point_save_info;

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

Serializer<TableViewBroomPointSaveInfo>
    _$tableViewBroomPointSaveInfoSerializer =
    new _$TableViewBroomPointSaveInfoSerializer();

class _$TableViewBroomPointSaveInfoSerializer
    implements StructuredSerializer<TableViewBroomPointSaveInfo> {
  @override
  final Iterable<Type> types = const [
    TableViewBroomPointSaveInfo,
    _$TableViewBroomPointSaveInfo
  ];
  @override
  final String wireName = 'TableViewBroomPointSaveInfo';

  @override
  Iterable serialize(
      Serializers serializers, TableViewBroomPointSaveInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.pos != null) {
      result
        ..add('qPos')
        ..add(serializers.serialize(object.pos,
            specifiedType: const FullType(Point)));
    }
    if (object.table != null) {
      result
        ..add('qTable')
        ..add(serializers.serialize(object.table,
            specifiedType: const FullType(String)));
    }
    if (object.fields != null) {
      result
        ..add('qFields')
        ..add(serializers.serialize(object.fields,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }

    return result;
  }

  @override
  TableViewBroomPointSaveInfo deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TableViewBroomPointSaveInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qPos':
          result.pos.replace(serializers.deserialize(value,
              specifiedType: const FullType(Point)) as Point);
          break;
        case 'qTable':
          result.table = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qFields':
          result.fields.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$TableViewBroomPointSaveInfo extends TableViewBroomPointSaveInfo {
  @override
  final Point pos;
  @override
  final String table;
  @override
  final BuiltList<String> fields;

  factory _$TableViewBroomPointSaveInfo(
          [void updates(TableViewBroomPointSaveInfoBuilder b)]) =>
      (new TableViewBroomPointSaveInfoBuilder()..update(updates)).build();

  _$TableViewBroomPointSaveInfo._({this.pos, this.table, this.fields})
      : super._();

  @override
  TableViewBroomPointSaveInfo rebuild(
          void updates(TableViewBroomPointSaveInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TableViewBroomPointSaveInfoBuilder toBuilder() =>
      new TableViewBroomPointSaveInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! TableViewBroomPointSaveInfo) return false;
    return pos == other.pos && table == other.table && fields == other.fields;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, pos.hashCode), table.hashCode), fields.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TableViewBroomPointSaveInfo')
          ..add('pos', pos)
          ..add('table', table)
          ..add('fields', fields))
        .toString();
  }
}

class TableViewBroomPointSaveInfoBuilder
    implements
        Builder<TableViewBroomPointSaveInfo,
            TableViewBroomPointSaveInfoBuilder> {
  _$TableViewBroomPointSaveInfo _$v;

  PointBuilder _pos;
  PointBuilder get pos => _$this._pos ??= new PointBuilder();
  set pos(PointBuilder pos) => _$this._pos = pos;

  String _table;
  String get table => _$this._table;
  set table(String table) => _$this._table = table;

  ListBuilder<String> _fields;
  ListBuilder<String> get fields =>
      _$this._fields ??= new ListBuilder<String>();
  set fields(ListBuilder<String> fields) => _$this._fields = fields;

  TableViewBroomPointSaveInfoBuilder();

  TableViewBroomPointSaveInfoBuilder get _$this {
    if (_$v != null) {
      _pos = _$v.pos?.toBuilder();
      _table = _$v.table;
      _fields = _$v.fields?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TableViewBroomPointSaveInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$TableViewBroomPointSaveInfo;
  }

  @override
  void update(void updates(TableViewBroomPointSaveInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TableViewBroomPointSaveInfo build() {
    _$TableViewBroomPointSaveInfo _$result;
    try {
      _$result = _$v ??
          new _$TableViewBroomPointSaveInfo._(
              pos: _pos?.build(), table: table, fields: _fields?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pos';
        _pos?.build();

        _$failedField = 'fields';
        _fields?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TableViewBroomPointSaveInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
