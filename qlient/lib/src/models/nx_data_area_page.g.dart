// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_data_area_page;

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

Serializer<NxDataAreaPage> _$nxDataAreaPageSerializer =
    new _$NxDataAreaPageSerializer();

class _$NxDataAreaPageSerializer
    implements StructuredSerializer<NxDataAreaPage> {
  @override
  final Iterable<Type> types = const [NxDataAreaPage, _$NxDataAreaPage];
  @override
  final String wireName = 'NxDataAreaPage';

  @override
  Iterable serialize(Serializers serializers, NxDataAreaPage object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.left != null) {
      result
        ..add('left')
        ..add(serializers.serialize(object.left,
            specifiedType: const FullType(num)));
    }
    if (object.top != null) {
      result
        ..add('top')
        ..add(serializers.serialize(object.top,
            specifiedType: const FullType(num)));
    }
    if (object.width != null) {
      result
        ..add('width')
        ..add(serializers.serialize(object.width,
            specifiedType: const FullType(num)));
    }
    if (object.height != null) {
      result
        ..add('height')
        ..add(serializers.serialize(object.height,
            specifiedType: const FullType(num)));
    }

    return result;
  }

  @override
  NxDataAreaPage deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxDataAreaPageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'left':
          result.left = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'top':
          result.top = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
      }
    }

    return result.build();
  }
}

class _$NxDataAreaPage extends NxDataAreaPage {
  @override
  final num left;
  @override
  final num top;
  @override
  final num width;
  @override
  final num height;

  factory _$NxDataAreaPage([void updates(NxDataAreaPageBuilder b)]) =>
      (new NxDataAreaPageBuilder()..update(updates)).build();

  _$NxDataAreaPage._({this.left, this.top, this.width, this.height})
      : super._();

  @override
  NxDataAreaPage rebuild(void updates(NxDataAreaPageBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxDataAreaPageBuilder toBuilder() =>
      new NxDataAreaPageBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxDataAreaPage) return false;
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
    return (newBuiltValueToStringHelper('NxDataAreaPage')
          ..add('left', left)
          ..add('top', top)
          ..add('width', width)
          ..add('height', height))
        .toString();
  }
}

class NxDataAreaPageBuilder
    implements Builder<NxDataAreaPage, NxDataAreaPageBuilder> {
  _$NxDataAreaPage _$v;

  num _left;
  num get left => _$this._left;
  set left(num left) => _$this._left = left;

  num _top;
  num get top => _$this._top;
  set top(num top) => _$this._top = top;

  num _width;
  num get width => _$this._width;
  set width(num width) => _$this._width = width;

  num _height;
  num get height => _$this._height;
  set height(num height) => _$this._height = height;

  NxDataAreaPageBuilder();

  NxDataAreaPageBuilder get _$this {
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
  void replace(NxDataAreaPage other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxDataAreaPage;
  }

  @override
  void update(void updates(NxDataAreaPageBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxDataAreaPage build() {
    final _$result = _$v ??
        new _$NxDataAreaPage._(
            left: left, top: top, width: width, height: height);
    replace(_$result);
    return _$result;
  }
}
