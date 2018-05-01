// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_pivot_dimension_cell;

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

Serializer<NxPivotDimensionCell> _$nxPivotDimensionCellSerializer =
    new _$NxPivotDimensionCellSerializer();

class _$NxPivotDimensionCellSerializer
    implements StructuredSerializer<NxPivotDimensionCell> {
  @override
  final Iterable<Type> types = const [
    NxPivotDimensionCell,
    _$NxPivotDimensionCell
  ];
  @override
  final String wireName = 'NxPivotDimensionCell';

  @override
  Iterable serialize(Serializers serializers, NxPivotDimensionCell object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('qText')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.elemNo != null) {
      result
        ..add('qElemNo')
        ..add(serializers.serialize(object.elemNo,
            specifiedType: const FullType(int)));
    }
    if (object.value != null) {
      result
        ..add('qValue')
        ..add(serializers.serialize(object.value,
            specifiedType: const FullType(num)));
    }
    if (object.canExpand != null) {
      result
        ..add('qCanExpand')
        ..add(serializers.serialize(object.canExpand,
            specifiedType: const FullType(bool)));
    }
    if (object.canCollapse != null) {
      result
        ..add('qCanCollapse')
        ..add(serializers.serialize(object.canCollapse,
            specifiedType: const FullType(bool)));
    }
    if (object.type != null) {
      result
        ..add('qType')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.up != null) {
      result
        ..add('qUp')
        ..add(serializers.serialize(object.up,
            specifiedType: const FullType(int)));
    }
    if (object.down != null) {
      result
        ..add('qDown')
        ..add(serializers.serialize(object.down,
            specifiedType: const FullType(int)));
    }
    if (object.subNodes != null) {
      result
        ..add('qSubNodes')
        ..add(serializers.serialize(object.subNodes,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxPivotDimensionCell)])));
    }
    if (object.attrExps != null) {
      result
        ..add('qAttrExps')
        ..add(serializers.serialize(object.attrExps,
            specifiedType: const FullType(NxAttributeExpressionValues)));
    }
    if (object.attrDims != null) {
      result
        ..add('qAttrDims')
        ..add(serializers.serialize(object.attrDims,
            specifiedType: const FullType(NxAttributeDimValues)));
    }

    return result;
  }

  @override
  NxPivotDimensionCell deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxPivotDimensionCellBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qText':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qElemNo':
          result.elemNo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qValue':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'qCanExpand':
          result.canExpand = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qCanCollapse':
          result.canCollapse = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qType':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qUp':
          result.up = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qDown':
          result.down = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qSubNodes':
          result.subNodes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxPivotDimensionCell)]))
              as BuiltList);
          break;
        case 'qAttrExps':
          result.attrExps.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxAttributeExpressionValues))
              as NxAttributeExpressionValues);
          break;
        case 'qAttrDims':
          result.attrDims.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxAttributeDimValues))
              as NxAttributeDimValues);
          break;
      }
    }

    return result.build();
  }
}

class _$NxPivotDimensionCell extends NxPivotDimensionCell {
  @override
  final String text;
  @override
  final int elemNo;
  @override
  final num value;
  @override
  final bool canExpand;
  @override
  final bool canCollapse;
  @override
  final String type;
  @override
  final int up;
  @override
  final int down;
  @override
  final BuiltList<NxPivotDimensionCell> subNodes;
  @override
  final NxAttributeExpressionValues attrExps;
  @override
  final NxAttributeDimValues attrDims;

  factory _$NxPivotDimensionCell(
          [void updates(NxPivotDimensionCellBuilder b)]) =>
      (new NxPivotDimensionCellBuilder()..update(updates)).build();

  _$NxPivotDimensionCell._(
      {this.text,
      this.elemNo,
      this.value,
      this.canExpand,
      this.canCollapse,
      this.type,
      this.up,
      this.down,
      this.subNodes,
      this.attrExps,
      this.attrDims})
      : super._();

  @override
  NxPivotDimensionCell rebuild(void updates(NxPivotDimensionCellBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxPivotDimensionCellBuilder toBuilder() =>
      new NxPivotDimensionCellBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxPivotDimensionCell) return false;
    return text == other.text &&
        elemNo == other.elemNo &&
        value == other.value &&
        canExpand == other.canExpand &&
        canCollapse == other.canCollapse &&
        type == other.type &&
        up == other.up &&
        down == other.down &&
        subNodes == other.subNodes &&
        attrExps == other.attrExps &&
        attrDims == other.attrDims;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, text.hashCode),
                                            elemNo.hashCode),
                                        value.hashCode),
                                    canExpand.hashCode),
                                canCollapse.hashCode),
                            type.hashCode),
                        up.hashCode),
                    down.hashCode),
                subNodes.hashCode),
            attrExps.hashCode),
        attrDims.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxPivotDimensionCell')
          ..add('text', text)
          ..add('elemNo', elemNo)
          ..add('value', value)
          ..add('canExpand', canExpand)
          ..add('canCollapse', canCollapse)
          ..add('type', type)
          ..add('up', up)
          ..add('down', down)
          ..add('subNodes', subNodes)
          ..add('attrExps', attrExps)
          ..add('attrDims', attrDims))
        .toString();
  }
}

class NxPivotDimensionCellBuilder
    implements Builder<NxPivotDimensionCell, NxPivotDimensionCellBuilder> {
  _$NxPivotDimensionCell _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  int _elemNo;
  int get elemNo => _$this._elemNo;
  set elemNo(int elemNo) => _$this._elemNo = elemNo;

  num _value;
  num get value => _$this._value;
  set value(num value) => _$this._value = value;

  bool _canExpand;
  bool get canExpand => _$this._canExpand;
  set canExpand(bool canExpand) => _$this._canExpand = canExpand;

  bool _canCollapse;
  bool get canCollapse => _$this._canCollapse;
  set canCollapse(bool canCollapse) => _$this._canCollapse = canCollapse;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _up;
  int get up => _$this._up;
  set up(int up) => _$this._up = up;

  int _down;
  int get down => _$this._down;
  set down(int down) => _$this._down = down;

  ListBuilder<NxPivotDimensionCell> _subNodes;
  ListBuilder<NxPivotDimensionCell> get subNodes =>
      _$this._subNodes ??= new ListBuilder<NxPivotDimensionCell>();
  set subNodes(ListBuilder<NxPivotDimensionCell> subNodes) =>
      _$this._subNodes = subNodes;

  NxAttributeExpressionValuesBuilder _attrExps;
  NxAttributeExpressionValuesBuilder get attrExps =>
      _$this._attrExps ??= new NxAttributeExpressionValuesBuilder();
  set attrExps(NxAttributeExpressionValuesBuilder attrExps) =>
      _$this._attrExps = attrExps;

  NxAttributeDimValuesBuilder _attrDims;
  NxAttributeDimValuesBuilder get attrDims =>
      _$this._attrDims ??= new NxAttributeDimValuesBuilder();
  set attrDims(NxAttributeDimValuesBuilder attrDims) =>
      _$this._attrDims = attrDims;

  NxPivotDimensionCellBuilder();

  NxPivotDimensionCellBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _elemNo = _$v.elemNo;
      _value = _$v.value;
      _canExpand = _$v.canExpand;
      _canCollapse = _$v.canCollapse;
      _type = _$v.type;
      _up = _$v.up;
      _down = _$v.down;
      _subNodes = _$v.subNodes?.toBuilder();
      _attrExps = _$v.attrExps?.toBuilder();
      _attrDims = _$v.attrDims?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxPivotDimensionCell other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxPivotDimensionCell;
  }

  @override
  void update(void updates(NxPivotDimensionCellBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxPivotDimensionCell build() {
    _$NxPivotDimensionCell _$result;
    try {
      _$result = _$v ??
          new _$NxPivotDimensionCell._(
              text: text,
              elemNo: elemNo,
              value: value,
              canExpand: canExpand,
              canCollapse: canCollapse,
              type: type,
              up: up,
              down: down,
              subNodes: _subNodes?.build(),
              attrExps: _attrExps?.build(),
              attrDims: _attrDims?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'subNodes';
        _subNodes?.build();
        _$failedField = 'attrExps';
        _attrExps?.build();
        _$failedField = 'attrDims';
        _attrDims?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxPivotDimensionCell', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
