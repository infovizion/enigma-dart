// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_selection_cell;

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

Serializer<NxSelectionCell> _$nxSelectionCellSerializer =
    new _$NxSelectionCellSerializer();

class _$NxSelectionCellSerializer
    implements StructuredSerializer<NxSelectionCell> {
  @override
  final Iterable<Type> types = const [NxSelectionCell, _$NxSelectionCell];
  @override
  final String wireName = 'NxSelectionCell';

  @override
  Iterable serialize(Serializers serializers, NxSelectionCell object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.col != null) {
      result
        ..add('col')
        ..add(serializers.serialize(object.col,
            specifiedType: const FullType(int)));
    }
    if (object.row != null) {
      result
        ..add('row')
        ..add(serializers.serialize(object.row,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  NxSelectionCell deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxSelectionCellBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'col':
          result.col = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'row':
          result.row = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$NxSelectionCell extends NxSelectionCell {
  @override
  final String type;
  @override
  final int col;
  @override
  final int row;

  factory _$NxSelectionCell([void updates(NxSelectionCellBuilder b)]) =>
      (new NxSelectionCellBuilder()..update(updates)).build();

  _$NxSelectionCell._({this.type, this.col, this.row}) : super._();

  @override
  NxSelectionCell rebuild(void updates(NxSelectionCellBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxSelectionCellBuilder toBuilder() =>
      new NxSelectionCellBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxSelectionCell) return false;
    return type == other.type && col == other.col && row == other.row;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, type.hashCode), col.hashCode), row.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxSelectionCell')
          ..add('type', type)
          ..add('col', col)
          ..add('row', row))
        .toString();
  }
}

class NxSelectionCellBuilder
    implements Builder<NxSelectionCell, NxSelectionCellBuilder> {
  _$NxSelectionCell _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _col;
  int get col => _$this._col;
  set col(int col) => _$this._col = col;

  int _row;
  int get row => _$this._row;
  set row(int row) => _$this._row = row;

  NxSelectionCellBuilder();

  NxSelectionCellBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _col = _$v.col;
      _row = _$v.row;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxSelectionCell other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxSelectionCell;
  }

  @override
  void update(void updates(NxSelectionCellBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxSelectionCell build() {
    final _$result =
        _$v ?? new _$NxSelectionCell._(type: type, col: col, row: row);
    replace(_$result);
    return _$result;
  }
}
