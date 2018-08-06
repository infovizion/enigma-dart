// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_view_port;

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

Serializer<NxViewPort> _$nxViewPortSerializer = new _$NxViewPortSerializer();

class _$NxViewPortSerializer implements StructuredSerializer<NxViewPort> {
  @override
  final Iterable<Type> types = const [NxViewPort, _$NxViewPort];
  @override
  final String wireName = 'NxViewPort';

  @override
  Iterable serialize(Serializers serializers, NxViewPort object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.width != null) {
      result
        ..add('qWidth')
        ..add(serializers.serialize(object.width,
            specifiedType: const FullType(int)));
    }
    if (object.height != null) {
      result
        ..add('qHeight')
        ..add(serializers.serialize(object.height,
            specifiedType: const FullType(int)));
    }
    if (object.zoomLevel != null) {
      result
        ..add('qZoomLevel')
        ..add(serializers.serialize(object.zoomLevel,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  NxViewPort deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxViewPortBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qWidth':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qHeight':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qZoomLevel':
          result.zoomLevel = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$NxViewPort extends NxViewPort {
  @override
  final int width;
  @override
  final int height;
  @override
  final int zoomLevel;

  factory _$NxViewPort([void updates(NxViewPortBuilder b)]) =>
      (new NxViewPortBuilder()..update(updates)).build();

  _$NxViewPort._({this.width, this.height, this.zoomLevel}) : super._();

  @override
  NxViewPort rebuild(void updates(NxViewPortBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxViewPortBuilder toBuilder() => new NxViewPortBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxViewPort) return false;
    return width == other.width &&
        height == other.height &&
        zoomLevel == other.zoomLevel;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, width.hashCode), height.hashCode), zoomLevel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxViewPort')
          ..add('width', width)
          ..add('height', height)
          ..add('zoomLevel', zoomLevel))
        .toString();
  }
}

class NxViewPortBuilder implements Builder<NxViewPort, NxViewPortBuilder> {
  _$NxViewPort _$v;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  int _zoomLevel;
  int get zoomLevel => _$this._zoomLevel;
  set zoomLevel(int zoomLevel) => _$this._zoomLevel = zoomLevel;

  NxViewPortBuilder();

  NxViewPortBuilder get _$this {
    if (_$v != null) {
      _width = _$v.width;
      _height = _$v.height;
      _zoomLevel = _$v.zoomLevel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxViewPort other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxViewPort;
  }

  @override
  void update(void updates(NxViewPortBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxViewPort build() {
    final _$result = _$v ??
        new _$NxViewPort._(width: width, height: height, zoomLevel: zoomLevel);
    replace(_$result);
    return _$result;
  }
}
