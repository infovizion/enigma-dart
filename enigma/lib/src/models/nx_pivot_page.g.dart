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
        ..add('qLeft')
        ..add(serializers.serialize(object.left,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxPivotDimensionCell)])));
    }
    if (object.top != null) {
      result
        ..add('qTop')
        ..add(serializers.serialize(object.top,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxPivotDimensionCell)])));
    }
    if (object.data != null) {
      result
        ..add('qData')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  BuiltList, const [const FullType(NxPivotValuePoint)])
            ])));
    }
    if (object.area != null) {
      result
        ..add('qArea')
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
        case 'qLeft':
          result.left.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxPivotDimensionCell)]))
              as BuiltList);
          break;
        case 'qTop':
          result.top.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxPivotDimensionCell)]))
              as BuiltList);
          break;
        case 'qData':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    BuiltList, const [const FullType(NxPivotValuePoint)])
              ])) as BuiltList);
          break;
        case 'qArea':
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
  final BuiltList<NxPivotDimensionCell> left;
  @override
  final BuiltList<NxPivotDimensionCell> top;
  @override
  final BuiltList<BuiltList<NxPivotValuePoint>> data;
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

  ListBuilder<NxPivotDimensionCell> _left;
  ListBuilder<NxPivotDimensionCell> get left =>
      _$this._left ??= new ListBuilder<NxPivotDimensionCell>();
  set left(ListBuilder<NxPivotDimensionCell> left) => _$this._left = left;

  ListBuilder<NxPivotDimensionCell> _top;
  ListBuilder<NxPivotDimensionCell> get top =>
      _$this._top ??= new ListBuilder<NxPivotDimensionCell>();
  set top(ListBuilder<NxPivotDimensionCell> top) => _$this._top = top;

  ListBuilder<BuiltList<NxPivotValuePoint>> _data;
  ListBuilder<BuiltList<NxPivotValuePoint>> get data =>
      _$this._data ??= new ListBuilder<BuiltList<NxPivotValuePoint>>();
  set data(ListBuilder<BuiltList<NxPivotValuePoint>> data) =>
      _$this._data = data;

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
