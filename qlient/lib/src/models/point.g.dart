// GENERATED CODE - DO NOT MODIFY BY HAND

part of point;

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

Serializer<Point> _$pointSerializer = new _$PointSerializer();

class _$PointSerializer implements StructuredSerializer<Point> {
  @override
  final Iterable<Type> types = const [Point, _$Point];
  @override
  final String wireName = 'Point';

  @override
  Iterable serialize(Serializers serializers, Point object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.x != null) {
      result
        ..add('x')
        ..add(serializers.serialize(object.x,
            specifiedType: const FullType(int)));
    }
    if (object.y != null) {
      result
        ..add('y')
        ..add(serializers.serialize(object.y,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  Point deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new PointBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'x':
          result.x = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'y':
          result.y = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Point extends Point {
  @override
  final int x;
  @override
  final int y;

  factory _$Point([void updates(PointBuilder b)]) =>
      (new PointBuilder()..update(updates)).build();

  _$Point._({this.x, this.y}) : super._();

  @override
  Point rebuild(void updates(PointBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PointBuilder toBuilder() => new PointBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Point) return false;
    return x == other.x && y == other.y;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, x.hashCode), y.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Point')..add('x', x)..add('y', y))
        .toString();
  }
}

class PointBuilder implements Builder<Point, PointBuilder> {
  _$Point _$v;

  int _x;
  int get x => _$this._x;
  set x(int x) => _$this._x = x;

  int _y;
  int get y => _$this._y;
  set y(int y) => _$this._y = y;

  PointBuilder();

  PointBuilder get _$this {
    if (_$v != null) {
      _x = _$v.x;
      _y = _$v.y;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Point other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Point;
  }

  @override
  void update(void updates(PointBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Point build() {
    final _$result = _$v ?? new _$Point._(x: x, y: y);
    replace(_$result);
    return _$result;
  }
}
