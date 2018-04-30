// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_stack_page;

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

Serializer<NxStackPage> _$nxStackPageSerializer = new _$NxStackPageSerializer();

class _$NxStackPageSerializer implements StructuredSerializer<NxStackPage> {
  @override
  final Iterable<Type> types = const [NxStackPage, _$NxStackPage];
  @override
  final String wireName = 'NxStackPage';

  @override
  Iterable serialize(Serializers serializers, NxStackPage object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.data != null) {
      result
        ..add('qData')
        ..add(serializers.serialize(object.data,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
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
  NxStackPage deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxStackPageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qData':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
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

class _$NxStackPage extends NxStackPage {
  @override
  final BuiltList<NxCell> data;
  @override
  final Rect area;

  factory _$NxStackPage([void updates(NxStackPageBuilder b)]) =>
      (new NxStackPageBuilder()..update(updates)).build();

  _$NxStackPage._({this.data, this.area}) : super._();

  @override
  NxStackPage rebuild(void updates(NxStackPageBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxStackPageBuilder toBuilder() => new NxStackPageBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxStackPage) return false;
    return data == other.data && area == other.area;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), area.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxStackPage')
          ..add('data', data)
          ..add('area', area))
        .toString();
  }
}

class NxStackPageBuilder implements Builder<NxStackPage, NxStackPageBuilder> {
  _$NxStackPage _$v;

  ListBuilder<NxCell> _data;
  ListBuilder<NxCell> get data => _$this._data ??= new ListBuilder<NxCell>();
  set data(ListBuilder<NxCell> data) => _$this._data = data;

  RectBuilder _area;
  RectBuilder get area => _$this._area ??= new RectBuilder();
  set area(RectBuilder area) => _$this._area = area;

  NxStackPageBuilder();

  NxStackPageBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _area = _$v.area?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxStackPage other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxStackPage;
  }

  @override
  void update(void updates(NxStackPageBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxStackPage build() {
    _$NxStackPage _$result;
    try {
      _$result = _$v ??
          new _$NxStackPage._(data: _data?.build(), area: _area?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'area';
        _area?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxStackPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
