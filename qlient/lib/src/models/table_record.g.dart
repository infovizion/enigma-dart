// GENERATED CODE - DO NOT MODIFY BY HAND

part of table_record;

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

Serializer<TableRecord> _$tableRecordSerializer = new _$TableRecordSerializer();

class _$TableRecordSerializer implements StructuredSerializer<TableRecord> {
  @override
  final Iterable<Type> types = const [TableRecord, _$TableRecord];
  @override
  final String wireName = 'TableRecord';

  @override
  Iterable serialize(Serializers serializers, TableRecord object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.loose != null) {
      result
        ..add('loose')
        ..add(serializers.serialize(object.loose,
            specifiedType: const FullType(bool)));
    }
    if (object.noOfRows != null) {
      result
        ..add('noOfRows')
        ..add(serializers.serialize(object.noOfRows,
            specifiedType: const FullType(int)));
    }
    if (object.fields != null) {
      result
        ..add('fields')
        ..add(serializers.serialize(object.fields,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.pos != null) {
      result
        ..add('pos')
        ..add(serializers.serialize(object.pos,
            specifiedType: const FullType(Point)));
    }
    if (object.comment != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(object.comment,
            specifiedType: const FullType(String)));
    }
    if (object.isDirectDiscovery != null) {
      result
        ..add('isDirectDiscovery')
        ..add(serializers.serialize(object.isDirectDiscovery,
            specifiedType: const FullType(bool)));
    }
    if (object.isSynthetic != null) {
      result
        ..add('isSynthetic')
        ..add(serializers.serialize(object.isSynthetic,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  TableRecord deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new TableRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'loose':
          result.loose = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'noOfRows':
          result.noOfRows = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'fields':
          result.fields = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'pos':
          result.pos.replace(serializers.deserialize(value,
              specifiedType: const FullType(Point)) as Point);
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isDirectDiscovery':
          result.isDirectDiscovery = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isSynthetic':
          result.isSynthetic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$TableRecord extends TableRecord {
  @override
  final String name;
  @override
  final bool loose;
  @override
  final int noOfRows;
  @override
  final List<NxCell> fields;
  @override
  final Point pos;
  @override
  final String comment;
  @override
  final bool isDirectDiscovery;
  @override
  final bool isSynthetic;

  factory _$TableRecord([void updates(TableRecordBuilder b)]) =>
      (new TableRecordBuilder()..update(updates)).build();

  _$TableRecord._(
      {this.name,
      this.loose,
      this.noOfRows,
      this.fields,
      this.pos,
      this.comment,
      this.isDirectDiscovery,
      this.isSynthetic})
      : super._();

  @override
  TableRecord rebuild(void updates(TableRecordBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TableRecordBuilder toBuilder() => new TableRecordBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! TableRecord) return false;
    return name == other.name &&
        loose == other.loose &&
        noOfRows == other.noOfRows &&
        fields == other.fields &&
        pos == other.pos &&
        comment == other.comment &&
        isDirectDiscovery == other.isDirectDiscovery &&
        isSynthetic == other.isSynthetic;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), loose.hashCode),
                            noOfRows.hashCode),
                        fields.hashCode),
                    pos.hashCode),
                comment.hashCode),
            isDirectDiscovery.hashCode),
        isSynthetic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TableRecord')
          ..add('name', name)
          ..add('loose', loose)
          ..add('noOfRows', noOfRows)
          ..add('fields', fields)
          ..add('pos', pos)
          ..add('comment', comment)
          ..add('isDirectDiscovery', isDirectDiscovery)
          ..add('isSynthetic', isSynthetic))
        .toString();
  }
}

class TableRecordBuilder implements Builder<TableRecord, TableRecordBuilder> {
  _$TableRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  bool _loose;
  bool get loose => _$this._loose;
  set loose(bool loose) => _$this._loose = loose;

  int _noOfRows;
  int get noOfRows => _$this._noOfRows;
  set noOfRows(int noOfRows) => _$this._noOfRows = noOfRows;

  List<NxCell> _fields;
  List<NxCell> get fields => _$this._fields;
  set fields(List<NxCell> fields) => _$this._fields = fields;

  PointBuilder _pos;
  PointBuilder get pos => _$this._pos ??= new PointBuilder();
  set pos(PointBuilder pos) => _$this._pos = pos;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  bool _isDirectDiscovery;
  bool get isDirectDiscovery => _$this._isDirectDiscovery;
  set isDirectDiscovery(bool isDirectDiscovery) =>
      _$this._isDirectDiscovery = isDirectDiscovery;

  bool _isSynthetic;
  bool get isSynthetic => _$this._isSynthetic;
  set isSynthetic(bool isSynthetic) => _$this._isSynthetic = isSynthetic;

  TableRecordBuilder();

  TableRecordBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _loose = _$v.loose;
      _noOfRows = _$v.noOfRows;
      _fields = _$v.fields;
      _pos = _$v.pos?.toBuilder();
      _comment = _$v.comment;
      _isDirectDiscovery = _$v.isDirectDiscovery;
      _isSynthetic = _$v.isSynthetic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TableRecord other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$TableRecord;
  }

  @override
  void update(void updates(TableRecordBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TableRecord build() {
    _$TableRecord _$result;
    try {
      _$result = _$v ??
          new _$TableRecord._(
              name: name,
              loose: loose,
              noOfRows: noOfRows,
              fields: fields,
              pos: _pos?.build(),
              comment: comment,
              isDirectDiscovery: isDirectDiscovery,
              isSynthetic: isSynthetic);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pos';
        _pos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TableRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
