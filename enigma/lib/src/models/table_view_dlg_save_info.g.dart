// GENERATED CODE - DO NOT MODIFY BY HAND

part of table_view_dlg_save_info;

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

Serializer<TableViewDlgSaveInfo> _$tableViewDlgSaveInfoSerializer =
    new _$TableViewDlgSaveInfoSerializer();

class _$TableViewDlgSaveInfoSerializer
    implements StructuredSerializer<TableViewDlgSaveInfo> {
  @override
  final Iterable<Type> types = const [
    TableViewDlgSaveInfo,
    _$TableViewDlgSaveInfo
  ];
  @override
  final String wireName = 'TableViewDlgSaveInfo';

  @override
  Iterable serialize(Serializers serializers, TableViewDlgSaveInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.pos != null) {
      result
        ..add('qPos')
        ..add(serializers.serialize(object.pos,
            specifiedType: const FullType(Rect)));
    }
    if (object.ctlInfo != null) {
      result
        ..add('qCtlInfo')
        ..add(serializers.serialize(object.ctlInfo,
            specifiedType: const FullType(TableViewCtlSaveInfo)));
    }
    if (object.mode != null) {
      result
        ..add('qMode')
        ..add(serializers.serialize(object.mode,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  TableViewDlgSaveInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new TableViewDlgSaveInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qPos':
          result.pos.replace(serializers.deserialize(value,
              specifiedType: const FullType(Rect)) as Rect);
          break;
        case 'qCtlInfo':
          result.ctlInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TableViewCtlSaveInfo))
              as TableViewCtlSaveInfo);
          break;
        case 'qMode':
          result.mode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$TableViewDlgSaveInfo extends TableViewDlgSaveInfo {
  @override
  final Rect pos;
  @override
  final TableViewCtlSaveInfo ctlInfo;
  @override
  final int mode;

  factory _$TableViewDlgSaveInfo(
          [void updates(TableViewDlgSaveInfoBuilder b)]) =>
      (new TableViewDlgSaveInfoBuilder()..update(updates)).build();

  _$TableViewDlgSaveInfo._({this.pos, this.ctlInfo, this.mode}) : super._();

  @override
  TableViewDlgSaveInfo rebuild(void updates(TableViewDlgSaveInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TableViewDlgSaveInfoBuilder toBuilder() =>
      new TableViewDlgSaveInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! TableViewDlgSaveInfo) return false;
    return pos == other.pos && ctlInfo == other.ctlInfo && mode == other.mode;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, pos.hashCode), ctlInfo.hashCode), mode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TableViewDlgSaveInfo')
          ..add('pos', pos)
          ..add('ctlInfo', ctlInfo)
          ..add('mode', mode))
        .toString();
  }
}

class TableViewDlgSaveInfoBuilder
    implements Builder<TableViewDlgSaveInfo, TableViewDlgSaveInfoBuilder> {
  _$TableViewDlgSaveInfo _$v;

  RectBuilder _pos;
  RectBuilder get pos => _$this._pos ??= new RectBuilder();
  set pos(RectBuilder pos) => _$this._pos = pos;

  TableViewCtlSaveInfoBuilder _ctlInfo;
  TableViewCtlSaveInfoBuilder get ctlInfo =>
      _$this._ctlInfo ??= new TableViewCtlSaveInfoBuilder();
  set ctlInfo(TableViewCtlSaveInfoBuilder ctlInfo) => _$this._ctlInfo = ctlInfo;

  int _mode;
  int get mode => _$this._mode;
  set mode(int mode) => _$this._mode = mode;

  TableViewDlgSaveInfoBuilder();

  TableViewDlgSaveInfoBuilder get _$this {
    if (_$v != null) {
      _pos = _$v.pos?.toBuilder();
      _ctlInfo = _$v.ctlInfo?.toBuilder();
      _mode = _$v.mode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TableViewDlgSaveInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$TableViewDlgSaveInfo;
  }

  @override
  void update(void updates(TableViewDlgSaveInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TableViewDlgSaveInfo build() {
    _$TableViewDlgSaveInfo _$result;
    try {
      _$result = _$v ??
          new _$TableViewDlgSaveInfo._(
              pos: _pos?.build(), ctlInfo: _ctlInfo?.build(), mode: mode);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pos';
        _pos?.build();
        _$failedField = 'ctlInfo';
        _ctlInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TableViewDlgSaveInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
