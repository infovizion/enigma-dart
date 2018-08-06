// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_cell_position;

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

Serializer<NxCellPosition> _$nxCellPositionSerializer =
    new _$NxCellPositionSerializer();

class _$NxCellPositionSerializer
    implements StructuredSerializer<NxCellPosition> {
  @override
  final Iterable<Type> types = const [NxCellPosition, _$NxCellPosition];
  @override
  final String wireName = 'NxCellPosition';

  @override
  Iterable serialize(Serializers serializers, NxCellPosition object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.x != null) {
      result
        ..add('qx')
        ..add(serializers.serialize(object.x,
            specifiedType: const FullType(int)));
    }
    if (object.y != null) {
      result
        ..add('qy')
        ..add(serializers.serialize(object.y,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  NxCellPosition deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxCellPositionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qx':
          result.x = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qy':
          result.y = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$NxCellPosition extends NxCellPosition {
  @override
  final int x;
  @override
  final int y;

  factory _$NxCellPosition([void updates(NxCellPositionBuilder b)]) =>
      (new NxCellPositionBuilder()..update(updates)).build();

  _$NxCellPosition._({this.x, this.y}) : super._();

  @override
  NxCellPosition rebuild(void updates(NxCellPositionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxCellPositionBuilder toBuilder() =>
      new NxCellPositionBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxCellPosition) return false;
    return x == other.x && y == other.y;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, x.hashCode), y.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxCellPosition')
          ..add('x', x)
          ..add('y', y))
        .toString();
  }
}

class NxCellPositionBuilder
    implements Builder<NxCellPosition, NxCellPositionBuilder> {
  _$NxCellPosition _$v;

  int _x;
  int get x => _$this._x;
  set x(int x) => _$this._x = x;

  int _y;
  int get y => _$this._y;
  set y(int y) => _$this._y = y;

  NxCellPositionBuilder();

  NxCellPositionBuilder get _$this {
    if (_$v != null) {
      _x = _$v.x;
      _y = _$v.y;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxCellPosition other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxCellPosition;
  }

  @override
  void update(void updates(NxCellPositionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxCellPosition build() {
    final _$result = _$v ?? new _$NxCellPosition._(x: x, y: y);
    replace(_$result);
    return _$result;
  }
}
