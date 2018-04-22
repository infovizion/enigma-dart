// GENERATED CODE - DO NOT MODIFY BY HAND

part of rect;

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

Serializer<Rect> _$rectSerializer = new _$RectSerializer();

class _$RectSerializer implements StructuredSerializer<Rect> {
  @override
  final Iterable<Type> types = const [Rect, _$Rect];
  @override
  final String wireName = 'Rect';

  @override
  Iterable serialize(Serializers serializers, Rect object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.left != null) {
      result
        ..add('left')
        ..add(serializers.serialize(object.left,
            specifiedType: const FullType(int)));
    }
    if (object.top != null) {
      result
        ..add('top')
        ..add(serializers.serialize(object.top,
            specifiedType: const FullType(int)));
    }
    if (object.width != null) {
      result
        ..add('width')
        ..add(serializers.serialize(object.width,
            specifiedType: const FullType(int)));
    }
    if (object.height != null) {
      result
        ..add('height')
        ..add(serializers.serialize(object.height,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  Rect deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new RectBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'left':
          result.left = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'top':
          result.top = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Rect extends Rect {
  @override
  final int left;
  @override
  final int top;
  @override
  final int width;
  @override
  final int height;

  factory _$Rect([void updates(RectBuilder b)]) =>
      (new RectBuilder()..update(updates)).build();

  _$Rect._({this.left, this.top, this.width, this.height}) : super._();

  @override
  Rect rebuild(void updates(RectBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  RectBuilder toBuilder() => new RectBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Rect) return false;
    return left == other.left &&
        top == other.top &&
        width == other.width &&
        height == other.height;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, left.hashCode), top.hashCode), width.hashCode),
        height.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Rect')
          ..add('left', left)
          ..add('top', top)
          ..add('width', width)
          ..add('height', height))
        .toString();
  }
}

class RectBuilder implements Builder<Rect, RectBuilder> {
  _$Rect _$v;

  int _left;
  int get left => _$this._left;
  set left(int left) => _$this._left = left;

  int _top;
  int get top => _$this._top;
  set top(int top) => _$this._top = top;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  RectBuilder();

  RectBuilder get _$this {
    if (_$v != null) {
      _left = _$v.left;
      _top = _$v.top;
      _width = _$v.width;
      _height = _$v.height;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Rect other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Rect;
  }

  @override
  void update(void updates(RectBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Rect build() {
    final _$result =
        _$v ?? new _$Rect._(left: left, top: top, width: width, height: height);
    replace(_$result);
    return _$result;
  }
}
