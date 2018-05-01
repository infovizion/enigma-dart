// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_data_page;

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

Serializer<NxDataPage> _$nxDataPageSerializer = new _$NxDataPageSerializer();

class _$NxDataPageSerializer implements StructuredSerializer<NxDataPage> {
  @override
  final Iterable<Type> types = const [NxDataPage, _$NxDataPage];
  @override
  final String wireName = 'NxDataPage';

  @override
  Iterable serialize(Serializers serializers, NxDataPage object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.matrix != null) {
      result
        ..add('qMatrix')
        ..add(serializers.serialize(object.matrix,
            specifiedType: const FullType(BuiltList, const [
              const FullType(BuiltList, const [const FullType(NxCell)])
            ])));
    }
    if (object.tails != null) {
      result
        ..add('qTails')
        ..add(serializers.serialize(object.tails,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxGroupTail)])));
    }
    if (object.area != null) {
      result
        ..add('qArea')
        ..add(serializers.serialize(object.area,
            specifiedType: const FullType(Rect)));
    }
    if (object.isReduced != null) {
      result
        ..add('qIsReduced')
        ..add(serializers.serialize(object.isReduced,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  NxDataPage deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxDataPageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qMatrix':
          result.matrix.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltList, const [const FullType(NxCell)])
              ])) as BuiltList);
          break;
        case 'qTails':
          result.tails.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxGroupTail)]))
              as BuiltList);
          break;
        case 'qArea':
          result.area.replace(serializers.deserialize(value,
              specifiedType: const FullType(Rect)) as Rect);
          break;
        case 'qIsReduced':
          result.isReduced = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$NxDataPage extends NxDataPage {
  @override
  final BuiltList<BuiltList<NxCell>> matrix;
  @override
  final BuiltList<NxGroupTail> tails;
  @override
  final Rect area;
  @override
  final bool isReduced;

  factory _$NxDataPage([void updates(NxDataPageBuilder b)]) =>
      (new NxDataPageBuilder()..update(updates)).build();

  _$NxDataPage._({this.matrix, this.tails, this.area, this.isReduced})
      : super._();

  @override
  NxDataPage rebuild(void updates(NxDataPageBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxDataPageBuilder toBuilder() => new NxDataPageBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxDataPage) return false;
    return matrix == other.matrix &&
        tails == other.tails &&
        area == other.area &&
        isReduced == other.isReduced;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, matrix.hashCode), tails.hashCode), area.hashCode),
        isReduced.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxDataPage')
          ..add('matrix', matrix)
          ..add('tails', tails)
          ..add('area', area)
          ..add('isReduced', isReduced))
        .toString();
  }
}

class NxDataPageBuilder implements Builder<NxDataPage, NxDataPageBuilder> {
  _$NxDataPage _$v;

  ListBuilder<BuiltList<NxCell>> _matrix;
  ListBuilder<BuiltList<NxCell>> get matrix =>
      _$this._matrix ??= new ListBuilder<BuiltList<NxCell>>();
  set matrix(ListBuilder<BuiltList<NxCell>> matrix) => _$this._matrix = matrix;

  ListBuilder<NxGroupTail> _tails;
  ListBuilder<NxGroupTail> get tails =>
      _$this._tails ??= new ListBuilder<NxGroupTail>();
  set tails(ListBuilder<NxGroupTail> tails) => _$this._tails = tails;

  RectBuilder _area;
  RectBuilder get area => _$this._area ??= new RectBuilder();
  set area(RectBuilder area) => _$this._area = area;

  bool _isReduced;
  bool get isReduced => _$this._isReduced;
  set isReduced(bool isReduced) => _$this._isReduced = isReduced;

  NxDataPageBuilder();

  NxDataPageBuilder get _$this {
    if (_$v != null) {
      _matrix = _$v.matrix?.toBuilder();
      _tails = _$v.tails?.toBuilder();
      _area = _$v.area?.toBuilder();
      _isReduced = _$v.isReduced;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxDataPage other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxDataPage;
  }

  @override
  void update(void updates(NxDataPageBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxDataPage build() {
    _$NxDataPage _$result;
    try {
      _$result = _$v ??
          new _$NxDataPage._(
              matrix: _matrix?.build(),
              tails: _tails?.build(),
              area: _area?.build(),
              isReduced: isReduced);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'matrix';
        _matrix?.build();
        _$failedField = 'tails';
        _tails?.build();
        _$failedField = 'area';
        _area?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxDataPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
