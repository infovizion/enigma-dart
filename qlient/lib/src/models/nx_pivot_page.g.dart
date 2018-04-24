// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_pivot_page;

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

Serializer<NxPivotPage> _$nxPivotPageSerializer = new _$NxPivotPageSerializer();

class _$NxPivotPageSerializer implements StructuredSerializer<NxPivotPage> {
  @override
  final Iterable<Type> types = const [NxPivotPage, _$NxPivotPage];
  @override
  final String wireName = 'NxPivotPage';

  @override
  Iterable serialize(Serializers serializers, NxPivotPage object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.left != null) {
      result
        ..add('left')
        ..add(serializers.serialize(object.left,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.top != null) {
      result
        ..add('top')
        ..add(serializers.serialize(object.top,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.area != null) {
      result
        ..add('area')
        ..add(serializers.serialize(object.area,
            specifiedType: const FullType(Rect)));
    }

    return result;
  }

  @override
  NxPivotPage deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxPivotPageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'left':
          result.left.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'top':
          result.top.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'area':
          result.area.replace(serializers.deserialize(value,
              specifiedType: const FullType(Rect)) as Rect);
          break;
      }
    }

    return result.build();
  }
}

class _$NxPivotPage extends NxPivotPage {
  @override
  final BuiltList<NxCell> left;
  @override
  final BuiltList<NxCell> top;
  @override
  final BuiltList<NxCell> data;
  @override
  final Rect area;

  factory _$NxPivotPage([void updates(NxPivotPageBuilder b)]) =>
      (new NxPivotPageBuilder()..update(updates)).build();

  _$NxPivotPage._({this.left, this.top, this.data, this.area}) : super._();

  @override
  NxPivotPage rebuild(void updates(NxPivotPageBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxPivotPageBuilder toBuilder() => new NxPivotPageBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxPivotPage) return false;
    return left == other.left &&
        top == other.top &&
        data == other.data &&
        area == other.area;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, left.hashCode), top.hashCode), data.hashCode),
        area.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxPivotPage')
          ..add('left', left)
          ..add('top', top)
          ..add('data', data)
          ..add('area', area))
        .toString();
  }
}

class NxPivotPageBuilder implements Builder<NxPivotPage, NxPivotPageBuilder> {
  _$NxPivotPage _$v;

  ListBuilder<NxCell> _left;
  ListBuilder<NxCell> get left => _$this._left ??= new ListBuilder<NxCell>();
  set left(ListBuilder<NxCell> left) => _$this._left = left;

  ListBuilder<NxCell> _top;
  ListBuilder<NxCell> get top => _$this._top ??= new ListBuilder<NxCell>();
  set top(ListBuilder<NxCell> top) => _$this._top = top;

  ListBuilder<NxCell> _data;
  ListBuilder<NxCell> get data => _$this._data ??= new ListBuilder<NxCell>();
  set data(ListBuilder<NxCell> data) => _$this._data = data;

  RectBuilder _area;
  RectBuilder get area => _$this._area ??= new RectBuilder();
  set area(RectBuilder area) => _$this._area = area;

  NxPivotPageBuilder();

  NxPivotPageBuilder get _$this {
    if (_$v != null) {
      _left = _$v.left?.toBuilder();
      _top = _$v.top?.toBuilder();
      _data = _$v.data?.toBuilder();
      _area = _$v.area?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxPivotPage other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxPivotPage;
  }

  @override
  void update(void updates(NxPivotPageBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxPivotPage build() {
    _$NxPivotPage _$result;
    try {
      _$result = _$v ??
          new _$NxPivotPage._(
              left: _left?.build(),
              top: _top?.build(),
              data: _data?.build(),
              area: _area?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'left';
        _left?.build();
        _$failedField = 'top';
        _top?.build();
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'area';
        _area?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxPivotPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
