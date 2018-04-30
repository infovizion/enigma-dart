// GENERATED CODE - DO NOT MODIFY BY HAND

part of table_view_table_win_save_info;

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

Serializer<TableViewTableWinSaveInfo> _$tableViewTableWinSaveInfoSerializer =
    new _$TableViewTableWinSaveInfoSerializer();

class _$TableViewTableWinSaveInfoSerializer
    implements StructuredSerializer<TableViewTableWinSaveInfo> {
  @override
  final Iterable<Type> types = const [
    TableViewTableWinSaveInfo,
    _$TableViewTableWinSaveInfo
  ];
  @override
  final String wireName = 'TableViewTableWinSaveInfo';

  @override
  Iterable serialize(Serializers serializers, TableViewTableWinSaveInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.pos != null) {
      result
        ..add('qPos')
        ..add(serializers.serialize(object.pos,
            specifiedType: const FullType(Rect)));
    }
    if (object.caption != null) {
      result
        ..add('qCaption')
        ..add(serializers.serialize(object.caption,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  TableViewTableWinSaveInfo deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new TableViewTableWinSaveInfoBuilder();

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
        case 'qCaption':
          result.caption = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TableViewTableWinSaveInfo extends TableViewTableWinSaveInfo {
  @override
  final Rect pos;
  @override
  final String caption;

  factory _$TableViewTableWinSaveInfo(
          [void updates(TableViewTableWinSaveInfoBuilder b)]) =>
      (new TableViewTableWinSaveInfoBuilder()..update(updates)).build();

  _$TableViewTableWinSaveInfo._({this.pos, this.caption}) : super._();

  @override
  TableViewTableWinSaveInfo rebuild(
          void updates(TableViewTableWinSaveInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TableViewTableWinSaveInfoBuilder toBuilder() =>
      new TableViewTableWinSaveInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! TableViewTableWinSaveInfo) return false;
    return pos == other.pos && caption == other.caption;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, pos.hashCode), caption.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TableViewTableWinSaveInfo')
          ..add('pos', pos)
          ..add('caption', caption))
        .toString();
  }
}

class TableViewTableWinSaveInfoBuilder
    implements
        Builder<TableViewTableWinSaveInfo, TableViewTableWinSaveInfoBuilder> {
  _$TableViewTableWinSaveInfo _$v;

  RectBuilder _pos;
  RectBuilder get pos => _$this._pos ??= new RectBuilder();
  set pos(RectBuilder pos) => _$this._pos = pos;

  String _caption;
  String get caption => _$this._caption;
  set caption(String caption) => _$this._caption = caption;

  TableViewTableWinSaveInfoBuilder();

  TableViewTableWinSaveInfoBuilder get _$this {
    if (_$v != null) {
      _pos = _$v.pos?.toBuilder();
      _caption = _$v.caption;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TableViewTableWinSaveInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$TableViewTableWinSaveInfo;
  }

  @override
  void update(void updates(TableViewTableWinSaveInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TableViewTableWinSaveInfo build() {
    _$TableViewTableWinSaveInfo _$result;
    try {
      _$result = _$v ??
          new _$TableViewTableWinSaveInfo._(
              pos: _pos?.build(), caption: caption);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pos';
        _pos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TableViewTableWinSaveInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
