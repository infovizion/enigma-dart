// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_page;

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

Serializer<NxPage> _$nxPageSerializer = new _$NxPageSerializer();

class _$NxPageSerializer implements StructuredSerializer<NxPage> {
  @override
  final Iterable<Type> types = const [NxPage, _$NxPage];
  @override
  final String wireName = 'NxPage';

  @override
  Iterable serialize(Serializers serializers, NxPage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.left != null) {
      result
        ..add('qLeft')
        ..add(serializers.serialize(object.left,
            specifiedType: const FullType(int)));
    }
    if (object.top != null) {
      result
        ..add('qTop')
        ..add(serializers.serialize(object.top,
            specifiedType: const FullType(int)));
    }
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

    return result;
  }

  @override
  NxPage deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxPageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qLeft':
          result.left = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qTop':
          result.top = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qWidth':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qHeight':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$NxPage extends NxPage {
  @override
  final int left;
  @override
  final int top;
  @override
  final int width;
  @override
  final int height;

  factory _$NxPage([void updates(NxPageBuilder b)]) =>
      (new NxPageBuilder()..update(updates)).build();

  _$NxPage._({this.left, this.top, this.width, this.height}) : super._();

  @override
  NxPage rebuild(void updates(NxPageBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxPageBuilder toBuilder() => new NxPageBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxPage) return false;
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
    return (newBuiltValueToStringHelper('NxPage')
          ..add('left', left)
          ..add('top', top)
          ..add('width', width)
          ..add('height', height))
        .toString();
  }
}

class NxPageBuilder implements Builder<NxPage, NxPageBuilder> {
  _$NxPage _$v;

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

  NxPageBuilder();

  NxPageBuilder get _$this {
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
  void replace(NxPage other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxPage;
  }

  @override
  void update(void updates(NxPageBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxPage build() {
    final _$result = _$v ??
        new _$NxPage._(left: left, top: top, width: width, height: height);
    replace(_$result);
    return _$result;
  }
}
