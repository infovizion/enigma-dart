// GENERATED CODE - DO NOT MODIFY BY HAND

part of table_view_connection_point_save_info;

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

Serializer<TableViewConnectionPointSaveInfo>
    _$tableViewConnectionPointSaveInfoSerializer =
    new _$TableViewConnectionPointSaveInfoSerializer();

class _$TableViewConnectionPointSaveInfoSerializer
    implements StructuredSerializer<TableViewConnectionPointSaveInfo> {
  @override
  final Iterable<Type> types = const [
    TableViewConnectionPointSaveInfo,
    _$TableViewConnectionPointSaveInfo
  ];
  @override
  final String wireName = 'TableViewConnectionPointSaveInfo';

  @override
  Iterable serialize(
      Serializers serializers, TableViewConnectionPointSaveInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.pos != null) {
      result
        ..add('qPos')
        ..add(serializers.serialize(object.pos,
            specifiedType: const FullType(Point)));
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
  TableViewConnectionPointSaveInfo deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new TableViewConnectionPointSaveInfoBuilder();

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

class _$TableViewConnectionPointSaveInfo
    extends TableViewConnectionPointSaveInfo {
  @override
  final Point pos;
  @override
  final BuiltList<String> fields;

  factory _$TableViewConnectionPointSaveInfo(
          [void updates(TableViewConnectionPointSaveInfoBuilder b)]) =>
      (new TableViewConnectionPointSaveInfoBuilder()..update(updates)).build();

  _$TableViewConnectionPointSaveInfo._({this.pos, this.fields}) : super._();

  @override
  TableViewConnectionPointSaveInfo rebuild(
          void updates(TableViewConnectionPointSaveInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TableViewConnectionPointSaveInfoBuilder toBuilder() =>
      new TableViewConnectionPointSaveInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! TableViewConnectionPointSaveInfo) return false;
    return pos == other.pos && fields == other.fields;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, pos.hashCode), fields.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TableViewConnectionPointSaveInfo')
          ..add('pos', pos)
          ..add('fields', fields))
        .toString();
  }
}

class TableViewConnectionPointSaveInfoBuilder
    implements
        Builder<TableViewConnectionPointSaveInfo,
            TableViewConnectionPointSaveInfoBuilder> {
  _$TableViewConnectionPointSaveInfo _$v;

  PointBuilder _pos;
  PointBuilder get pos => _$this._pos ??= new PointBuilder();
  set pos(PointBuilder pos) => _$this._pos = pos;

  ListBuilder<String> _fields;
  ListBuilder<String> get fields =>
      _$this._fields ??= new ListBuilder<String>();
  set fields(ListBuilder<String> fields) => _$this._fields = fields;

  TableViewConnectionPointSaveInfoBuilder();

  TableViewConnectionPointSaveInfoBuilder get _$this {
    if (_$v != null) {
      _pos = _$v.pos?.toBuilder();
      _fields = _$v.fields?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TableViewConnectionPointSaveInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$TableViewConnectionPointSaveInfo;
  }

  @override
  void update(void updates(TableViewConnectionPointSaveInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TableViewConnectionPointSaveInfo build() {
    _$TableViewConnectionPointSaveInfo _$result;
    try {
      _$result = _$v ??
          new _$TableViewConnectionPointSaveInfo._(
              pos: _pos?.build(), fields: _fields?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pos';
        _pos?.build();
        _$failedField = 'fields';
        _fields?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TableViewConnectionPointSaveInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
