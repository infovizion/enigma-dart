// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_stacked_pivot_cell;

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

Serializer<NxStackedPivotCell> _$nxStackedPivotCellSerializer =
    new _$NxStackedPivotCellSerializer();

class _$NxStackedPivotCellSerializer
    implements StructuredSerializer<NxStackedPivotCell> {
  @override
  final Iterable<Type> types = const [NxStackedPivotCell, _$NxStackedPivotCell];
  @override
  final String wireName = 'NxStackedPivotCell';

  @override
  Iterable serialize(Serializers serializers, NxStackedPivotCell object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.elemNo != null) {
      result
        ..add('elemNo')
        ..add(serializers.serialize(object.elemNo,
            specifiedType: const FullType(int)));
    }
    if (object.value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(object.value,
            specifiedType: const FullType(num)));
    }
    if (object.canExpand != null) {
      result
        ..add('canExpand')
        ..add(serializers.serialize(object.canExpand,
            specifiedType: const FullType(bool)));
    }
    if (object.canCollapse != null) {
      result
        ..add('canCollapse')
        ..add(serializers.serialize(object.canCollapse,
            specifiedType: const FullType(bool)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.maxPos != null) {
      result
        ..add('maxPos')
        ..add(serializers.serialize(object.maxPos,
            specifiedType: const FullType(num)));
    }
    if (object.minNeg != null) {
      result
        ..add('minNeg')
        ..add(serializers.serialize(object.minNeg,
            specifiedType: const FullType(num)));
    }
    if (object.up != null) {
      result
        ..add('up')
        ..add(serializers.serialize(object.up,
            specifiedType: const FullType(int)));
    }
    if (object.down != null) {
      result
        ..add('down')
        ..add(serializers.serialize(object.down,
            specifiedType: const FullType(int)));
    }
    if (object.row != null) {
      result
        ..add('row')
        ..add(serializers.serialize(object.row,
            specifiedType: const FullType(int)));
    }
    if (object.subNodes != null) {
      result
        ..add('subNodes')
        ..add(serializers.serialize(object.subNodes,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.attrExps != null) {
      result
        ..add('attrExps')
        ..add(serializers.serialize(object.attrExps,
            specifiedType: const FullType(NxAttributeExpressionValues)));
    }
    if (object.attrDims != null) {
      result
        ..add('attrDims')
        ..add(serializers.serialize(object.attrDims,
            specifiedType: const FullType(NxAttributeDimValues)));
    }

    return result;
  }

  @override
  NxStackedPivotCell deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxStackedPivotCellBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'elemNo':
          result.elemNo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'canExpand':
          result.canExpand = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'canCollapse':
          result.canCollapse = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'maxPos':
          result.maxPos = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'minNeg':
          result.minNeg = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'up':
          result.up = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'down':
          result.down = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'row':
          result.row = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'subNodes':
          result.subNodes = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'attrExps':
          result.attrExps.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxAttributeExpressionValues))
              as NxAttributeExpressionValues);
          break;
        case 'attrDims':
          result.attrDims.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxAttributeDimValues))
              as NxAttributeDimValues);
          break;
      }
    }

    return result.build();
  }
}

class _$NxStackedPivotCell extends NxStackedPivotCell {
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
  final num maxPos;
  @override
  final num minNeg;
  @override
  final int up;
  @override
  final int down;
  @override
  final int row;
  @override
  final List<NxCell> subNodes;
  @override
  final NxAttributeExpressionValues attrExps;
  @override
  final NxAttributeDimValues attrDims;

  factory _$NxStackedPivotCell([void updates(NxStackedPivotCellBuilder b)]) =>
      (new NxStackedPivotCellBuilder()..update(updates)).build();

  _$NxStackedPivotCell._(
      {this.text,
      this.elemNo,
      this.value,
      this.canExpand,
      this.canCollapse,
      this.type,
      this.maxPos,
      this.minNeg,
      this.up,
      this.down,
      this.row,
      this.subNodes,
      this.attrExps,
      this.attrDims})
      : super._();

  @override
  NxStackedPivotCell rebuild(void updates(NxStackedPivotCellBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxStackedPivotCellBuilder toBuilder() =>
      new NxStackedPivotCellBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxStackedPivotCell) return false;
    return text == other.text &&
        elemNo == other.elemNo &&
        value == other.value &&
        canExpand == other.canExpand &&
        canCollapse == other.canCollapse &&
        type == other.type &&
        maxPos == other.maxPos &&
        minNeg == other.minNeg &&
        up == other.up &&
        down == other.down &&
        row == other.row &&
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
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, text.hashCode),
                                                        elemNo.hashCode),
                                                    value.hashCode),
                                                canExpand.hashCode),
                                            canCollapse.hashCode),
                                        type.hashCode),
                                    maxPos.hashCode),
                                minNeg.hashCode),
                            up.hashCode),
                        down.hashCode),
                    row.hashCode),
                subNodes.hashCode),
            attrExps.hashCode),
        attrDims.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxStackedPivotCell')
          ..add('text', text)
          ..add('elemNo', elemNo)
          ..add('value', value)
          ..add('canExpand', canExpand)
          ..add('canCollapse', canCollapse)
          ..add('type', type)
          ..add('maxPos', maxPos)
          ..add('minNeg', minNeg)
          ..add('up', up)
          ..add('down', down)
          ..add('row', row)
          ..add('subNodes', subNodes)
          ..add('attrExps', attrExps)
          ..add('attrDims', attrDims))
        .toString();
  }
}

class NxStackedPivotCellBuilder
    implements Builder<NxStackedPivotCell, NxStackedPivotCellBuilder> {
  _$NxStackedPivotCell _$v;

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

  num _maxPos;
  num get maxPos => _$this._maxPos;
  set maxPos(num maxPos) => _$this._maxPos = maxPos;

  num _minNeg;
  num get minNeg => _$this._minNeg;
  set minNeg(num minNeg) => _$this._minNeg = minNeg;

  int _up;
  int get up => _$this._up;
  set up(int up) => _$this._up = up;

  int _down;
  int get down => _$this._down;
  set down(int down) => _$this._down = down;

  int _row;
  int get row => _$this._row;
  set row(int row) => _$this._row = row;

  List<NxCell> _subNodes;
  List<NxCell> get subNodes => _$this._subNodes;
  set subNodes(List<NxCell> subNodes) => _$this._subNodes = subNodes;

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

  NxStackedPivotCellBuilder();

  NxStackedPivotCellBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _elemNo = _$v.elemNo;
      _value = _$v.value;
      _canExpand = _$v.canExpand;
      _canCollapse = _$v.canCollapse;
      _type = _$v.type;
      _maxPos = _$v.maxPos;
      _minNeg = _$v.minNeg;
      _up = _$v.up;
      _down = _$v.down;
      _row = _$v.row;
      _subNodes = _$v.subNodes;
      _attrExps = _$v.attrExps?.toBuilder();
      _attrDims = _$v.attrDims?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxStackedPivotCell other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxStackedPivotCell;
  }

  @override
  void update(void updates(NxStackedPivotCellBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxStackedPivotCell build() {
    _$NxStackedPivotCell _$result;
    try {
      _$result = _$v ??
          new _$NxStackedPivotCell._(
              text: text,
              elemNo: elemNo,
              value: value,
              canExpand: canExpand,
              canCollapse: canCollapse,
              type: type,
              maxPos: maxPos,
              minNeg: minNeg,
              up: up,
              down: down,
              row: row,
              subNodes: subNodes,
              attrExps: _attrExps?.build(),
              attrDims: _attrDims?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'attrExps';
        _attrExps?.build();
        _$failedField = 'attrDims';
        _attrDims?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxStackedPivotCell', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
