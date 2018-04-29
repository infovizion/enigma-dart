// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_cell;

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

Serializer<NxCell> _$nxCellSerializer = new _$NxCellSerializer();

class _$NxCellSerializer implements StructuredSerializer<NxCell> {
  @override
  final Iterable<Type> types = const [NxCell, _$NxCell];
  @override
  final String wireName = 'NxCell';

  @override
  Iterable serialize(Serializers serializers, NxCell object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.qNum != null) {
      result
        ..add('qNum')
        ..add(serializers.serialize(object.qNum,
            specifiedType: const FullType(num)));
    }
    if (object.elemNumber != null) {
      result
        ..add('elemNumber')
        ..add(serializers.serialize(object.elemNumber,
            specifiedType: const FullType(int)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    if (object.isEmpty != null) {
      result
        ..add('isEmpty')
        ..add(serializers.serialize(object.isEmpty,
            specifiedType: const FullType(bool)));
    }
    if (object.isTotalCell != null) {
      result
        ..add('isTotalCell')
        ..add(serializers.serialize(object.isTotalCell,
            specifiedType: const FullType(bool)));
    }
    if (object.isOtherCell != null) {
      result
        ..add('isOtherCell')
        ..add(serializers.serialize(object.isOtherCell,
            specifiedType: const FullType(bool)));
    }
    if (object.frequency != null) {
      result
        ..add('frequency')
        ..add(serializers.serialize(object.frequency,
            specifiedType: const FullType(String)));
    }
    if (object.highlightRanges != null) {
      result
        ..add('highlightRanges')
        ..add(serializers.serialize(object.highlightRanges,
            specifiedType: const FullType(JsonObject)));
    }
    if (object.attrExps != null) {
      result
        ..add('attrExps')
        ..add(serializers.serialize(object.attrExps,
            specifiedType: const FullType(JsonObject)));
    }
    if (object.attrDims != null) {
      result
        ..add('attrDims')
        ..add(serializers.serialize(object.attrDims,
            specifiedType: const FullType(JsonObject)));
    }
    if (object.isNull != null) {
      result
        ..add('isNull')
        ..add(serializers.serialize(object.isNull,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  NxCell deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxCellBuilder();

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
        case 'qNum':
          result.qNum = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'elemNumber':
          result.elemNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isEmpty':
          result.isEmpty = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isTotalCell':
          result.isTotalCell = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isOtherCell':
          result.isOtherCell = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'frequency':
          result.frequency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'highlightRanges':
          result.highlightRanges = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
        case 'attrExps':
          result.attrExps = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
        case 'attrDims':
          result.attrDims = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
        case 'isNull':
          result.isNull = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$NxCell extends NxCell {
  @override
  final String text;
  @override
  final num qNum;
  @override
  final int elemNumber;
  @override
  final String state;
  @override
  final bool isEmpty;
  @override
  final bool isTotalCell;
  @override
  final bool isOtherCell;
  @override
  final String frequency;
  @override
  final JsonObject highlightRanges;
  @override
  final JsonObject attrExps;
  @override
  final JsonObject attrDims;
  @override
  final bool isNull;

  factory _$NxCell([void updates(NxCellBuilder b)]) =>
      (new NxCellBuilder()..update(updates)).build();

  _$NxCell._(
      {this.text,
      this.qNum,
      this.elemNumber,
      this.state,
      this.isEmpty,
      this.isTotalCell,
      this.isOtherCell,
      this.frequency,
      this.highlightRanges,
      this.attrExps,
      this.attrDims,
      this.isNull})
      : super._();

  @override
  NxCell rebuild(void updates(NxCellBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxCellBuilder toBuilder() => new NxCellBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxCell) return false;
    return text == other.text &&
        qNum == other.qNum &&
        elemNumber == other.elemNumber &&
        state == other.state &&
        isEmpty == other.isEmpty &&
        isTotalCell == other.isTotalCell &&
        isOtherCell == other.isOtherCell &&
        frequency == other.frequency &&
        highlightRanges == other.highlightRanges &&
        attrExps == other.attrExps &&
        attrDims == other.attrDims &&
        isNull == other.isNull;
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
                                            $jc($jc(0, text.hashCode),
                                                qNum.hashCode),
                                            elemNumber.hashCode),
                                        state.hashCode),
                                    isEmpty.hashCode),
                                isTotalCell.hashCode),
                            isOtherCell.hashCode),
                        frequency.hashCode),
                    highlightRanges.hashCode),
                attrExps.hashCode),
            attrDims.hashCode),
        isNull.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxCell')
          ..add('text', text)
          ..add('qNum', qNum)
          ..add('elemNumber', elemNumber)
          ..add('state', state)
          ..add('isEmpty', isEmpty)
          ..add('isTotalCell', isTotalCell)
          ..add('isOtherCell', isOtherCell)
          ..add('frequency', frequency)
          ..add('highlightRanges', highlightRanges)
          ..add('attrExps', attrExps)
          ..add('attrDims', attrDims)
          ..add('isNull', isNull))
        .toString();
  }
}

class NxCellBuilder implements Builder<NxCell, NxCellBuilder> {
  _$NxCell _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  num _qNum;
  num get qNum => _$this._qNum;
  set qNum(num qNum) => _$this._qNum = qNum;

  int _elemNumber;
  int get elemNumber => _$this._elemNumber;
  set elemNumber(int elemNumber) => _$this._elemNumber = elemNumber;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  bool _isEmpty;
  bool get isEmpty => _$this._isEmpty;
  set isEmpty(bool isEmpty) => _$this._isEmpty = isEmpty;

  bool _isTotalCell;
  bool get isTotalCell => _$this._isTotalCell;
  set isTotalCell(bool isTotalCell) => _$this._isTotalCell = isTotalCell;

  bool _isOtherCell;
  bool get isOtherCell => _$this._isOtherCell;
  set isOtherCell(bool isOtherCell) => _$this._isOtherCell = isOtherCell;

  String _frequency;
  String get frequency => _$this._frequency;
  set frequency(String frequency) => _$this._frequency = frequency;

  JsonObject _highlightRanges;
  JsonObject get highlightRanges => _$this._highlightRanges;
  set highlightRanges(JsonObject highlightRanges) =>
      _$this._highlightRanges = highlightRanges;

  JsonObject _attrExps;
  JsonObject get attrExps => _$this._attrExps;
  set attrExps(JsonObject attrExps) => _$this._attrExps = attrExps;

  JsonObject _attrDims;
  JsonObject get attrDims => _$this._attrDims;
  set attrDims(JsonObject attrDims) => _$this._attrDims = attrDims;

  bool _isNull;
  bool get isNull => _$this._isNull;
  set isNull(bool isNull) => _$this._isNull = isNull;

  NxCellBuilder();

  NxCellBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _qNum = _$v.qNum;
      _elemNumber = _$v.elemNumber;
      _state = _$v.state;
      _isEmpty = _$v.isEmpty;
      _isTotalCell = _$v.isTotalCell;
      _isOtherCell = _$v.isOtherCell;
      _frequency = _$v.frequency;
      _highlightRanges = _$v.highlightRanges;
      _attrExps = _$v.attrExps;
      _attrDims = _$v.attrDims;
      _isNull = _$v.isNull;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxCell other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxCell;
  }

  @override
  void update(void updates(NxCellBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxCell build() {
    final _$result = _$v ??
        new _$NxCell._(
            text: text,
            qNum: qNum,
            elemNumber: elemNumber,
            state: state,
            isEmpty: isEmpty,
            isTotalCell: isTotalCell,
            isOtherCell: isOtherCell,
            frequency: frequency,
            highlightRanges: highlightRanges,
            attrExps: attrExps,
            attrDims: attrDims,
            isNull: isNull);
    replace(_$result);
    return _$result;
  }
}
