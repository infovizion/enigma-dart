// GENERATED CODE - DO NOT MODIFY BY HAND

part of hyper_cube;

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

Serializer<HyperCube> _$hyperCubeSerializer = new _$HyperCubeSerializer();

class _$HyperCubeSerializer implements StructuredSerializer<HyperCube> {
  @override
  final Iterable<Type> types = const [HyperCube, _$HyperCube];
  @override
  final String wireName = 'HyperCube';

  @override
  Iterable serialize(Serializers serializers, HyperCube object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.stateName != null) {
      result
        ..add('stateName')
        ..add(serializers.serialize(object.stateName,
            specifiedType: const FullType(String)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(Size)));
    }
    if (object.error != null) {
      result
        ..add('error')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(NxValidationError)));
    }
    if (object.dimensionInfo != null) {
      result
        ..add('dimensionInfo')
        ..add(serializers.serialize(object.dimensionInfo,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.measureInfo != null) {
      result
        ..add('measureInfo')
        ..add(serializers.serialize(object.measureInfo,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.effectiveInterColumnSortOrder != null) {
      result
        ..add('effectiveInterColumnSortOrder')
        ..add(serializers.serialize(object.effectiveInterColumnSortOrder,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.grandTotalRow != null) {
      result
        ..add('grandTotalRow')
        ..add(serializers.serialize(object.grandTotalRow,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.dataPages != null) {
      result
        ..add('dataPages')
        ..add(serializers.serialize(object.dataPages,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.pivotDataPages != null) {
      result
        ..add('pivotDataPages')
        ..add(serializers.serialize(object.pivotDataPages,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.stackedDataPages != null) {
      result
        ..add('stackedDataPages')
        ..add(serializers.serialize(object.stackedDataPages,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.mode != null) {
      result
        ..add('mode')
        ..add(serializers.serialize(object.mode,
            specifiedType: const FullType(String)));
    }
    if (object.noOfLeftDims != null) {
      result
        ..add('noOfLeftDims')
        ..add(serializers.serialize(object.noOfLeftDims,
            specifiedType: const FullType(int)));
    }
    if (object.indentMode != null) {
      result
        ..add('indentMode')
        ..add(serializers.serialize(object.indentMode,
            specifiedType: const FullType(bool)));
    }
    if (object.lastExpandedPos != null) {
      result
        ..add('lastExpandedPos')
        ..add(serializers.serialize(object.lastExpandedPos,
            specifiedType: const FullType(NxCellPosition)));
    }
    if (object.hasOtherValues != null) {
      result
        ..add('hasOtherValues')
        ..add(serializers.serialize(object.hasOtherValues,
            specifiedType: const FullType(bool)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.treeNodesOnDim != null) {
      result
        ..add('treeNodesOnDim')
        ..add(serializers.serialize(object.treeNodesOnDim,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.calcCondMsg != null) {
      result
        ..add('calcCondMsg')
        ..add(serializers.serialize(object.calcCondMsg,
            specifiedType: const FullType(String)));
    }
    if (object.columnOrder != null) {
      result
        ..add('columnOrder')
        ..add(serializers.serialize(object.columnOrder,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  HyperCube deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new HyperCubeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'stateName':
          result.stateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'size':
          result.size.replace(serializers.deserialize(value,
              specifiedType: const FullType(Size)) as Size);
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxValidationError))
              as NxValidationError);
          break;
        case 'dimensionInfo':
          result.dimensionInfo = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'measureInfo':
          result.measureInfo = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'effectiveInterColumnSortOrder':
          result.effectiveInterColumnSortOrder = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'grandTotalRow':
          result.grandTotalRow = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'dataPages':
          result.dataPages = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'pivotDataPages':
          result.pivotDataPages = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'stackedDataPages':
          result.stackedDataPages = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'mode':
          result.mode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'noOfLeftDims':
          result.noOfLeftDims = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'indentMode':
          result.indentMode = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'lastExpandedPos':
          result.lastExpandedPos.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxCellPosition)) as NxCellPosition);
          break;
        case 'hasOtherValues':
          result.hasOtherValues = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'treeNodesOnDim':
          result.treeNodesOnDim = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'calcCondMsg':
          result.calcCondMsg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'columnOrder':
          result.columnOrder = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
      }
    }

    return result.build();
  }
}

class _$HyperCube extends HyperCube {
  @override
  final String stateName;
  @override
  final Size size;
  @override
  final NxValidationError error;
  @override
  final List<NxCell> dimensionInfo;
  @override
  final List<NxCell> measureInfo;
  @override
  final List<NxCell> effectiveInterColumnSortOrder;
  @override
  final List<NxCell> grandTotalRow;
  @override
  final List<NxCell> dataPages;
  @override
  final List<NxCell> pivotDataPages;
  @override
  final List<NxCell> stackedDataPages;
  @override
  final String mode;
  @override
  final int noOfLeftDims;
  @override
  final bool indentMode;
  @override
  final NxCellPosition lastExpandedPos;
  @override
  final bool hasOtherValues;
  @override
  final String title;
  @override
  final List<NxCell> treeNodesOnDim;
  @override
  final String calcCondMsg;
  @override
  final List<NxCell> columnOrder;

  factory _$HyperCube([void updates(HyperCubeBuilder b)]) =>
      (new HyperCubeBuilder()..update(updates)).build();

  _$HyperCube._(
      {this.stateName,
      this.size,
      this.error,
      this.dimensionInfo,
      this.measureInfo,
      this.effectiveInterColumnSortOrder,
      this.grandTotalRow,
      this.dataPages,
      this.pivotDataPages,
      this.stackedDataPages,
      this.mode,
      this.noOfLeftDims,
      this.indentMode,
      this.lastExpandedPos,
      this.hasOtherValues,
      this.title,
      this.treeNodesOnDim,
      this.calcCondMsg,
      this.columnOrder})
      : super._();

  @override
  HyperCube rebuild(void updates(HyperCubeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  HyperCubeBuilder toBuilder() => new HyperCubeBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! HyperCube) return false;
    return stateName == other.stateName &&
        size == other.size &&
        error == other.error &&
        dimensionInfo == other.dimensionInfo &&
        measureInfo == other.measureInfo &&
        effectiveInterColumnSortOrder == other.effectiveInterColumnSortOrder &&
        grandTotalRow == other.grandTotalRow &&
        dataPages == other.dataPages &&
        pivotDataPages == other.pivotDataPages &&
        stackedDataPages == other.stackedDataPages &&
        mode == other.mode &&
        noOfLeftDims == other.noOfLeftDims &&
        indentMode == other.indentMode &&
        lastExpandedPos == other.lastExpandedPos &&
        hasOtherValues == other.hasOtherValues &&
        title == other.title &&
        treeNodesOnDim == other.treeNodesOnDim &&
        calcCondMsg == other.calcCondMsg &&
        columnOrder == other.columnOrder;
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
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                stateName
                                                                                    .hashCode),
                                                                            size
                                                                                .hashCode),
                                                                        error
                                                                            .hashCode),
                                                                    dimensionInfo
                                                                        .hashCode),
                                                                measureInfo
                                                                    .hashCode),
                                                            effectiveInterColumnSortOrder
                                                                .hashCode),
                                                        grandTotalRow.hashCode),
                                                    dataPages.hashCode),
                                                pivotDataPages.hashCode),
                                            stackedDataPages.hashCode),
                                        mode.hashCode),
                                    noOfLeftDims.hashCode),
                                indentMode.hashCode),
                            lastExpandedPos.hashCode),
                        hasOtherValues.hashCode),
                    title.hashCode),
                treeNodesOnDim.hashCode),
            calcCondMsg.hashCode),
        columnOrder.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HyperCube')
          ..add('stateName', stateName)
          ..add('size', size)
          ..add('error', error)
          ..add('dimensionInfo', dimensionInfo)
          ..add('measureInfo', measureInfo)
          ..add('effectiveInterColumnSortOrder', effectiveInterColumnSortOrder)
          ..add('grandTotalRow', grandTotalRow)
          ..add('dataPages', dataPages)
          ..add('pivotDataPages', pivotDataPages)
          ..add('stackedDataPages', stackedDataPages)
          ..add('mode', mode)
          ..add('noOfLeftDims', noOfLeftDims)
          ..add('indentMode', indentMode)
          ..add('lastExpandedPos', lastExpandedPos)
          ..add('hasOtherValues', hasOtherValues)
          ..add('title', title)
          ..add('treeNodesOnDim', treeNodesOnDim)
          ..add('calcCondMsg', calcCondMsg)
          ..add('columnOrder', columnOrder))
        .toString();
  }
}

class HyperCubeBuilder implements Builder<HyperCube, HyperCubeBuilder> {
  _$HyperCube _$v;

  String _stateName;
  String get stateName => _$this._stateName;
  set stateName(String stateName) => _$this._stateName = stateName;

  SizeBuilder _size;
  SizeBuilder get size => _$this._size ??= new SizeBuilder();
  set size(SizeBuilder size) => _$this._size = size;

  NxValidationErrorBuilder _error;
  NxValidationErrorBuilder get error =>
      _$this._error ??= new NxValidationErrorBuilder();
  set error(NxValidationErrorBuilder error) => _$this._error = error;

  List<NxCell> _dimensionInfo;
  List<NxCell> get dimensionInfo => _$this._dimensionInfo;
  set dimensionInfo(List<NxCell> dimensionInfo) =>
      _$this._dimensionInfo = dimensionInfo;

  List<NxCell> _measureInfo;
  List<NxCell> get measureInfo => _$this._measureInfo;
  set measureInfo(List<NxCell> measureInfo) =>
      _$this._measureInfo = measureInfo;

  List<NxCell> _effectiveInterColumnSortOrder;
  List<NxCell> get effectiveInterColumnSortOrder =>
      _$this._effectiveInterColumnSortOrder;
  set effectiveInterColumnSortOrder(
          List<NxCell> effectiveInterColumnSortOrder) =>
      _$this._effectiveInterColumnSortOrder = effectiveInterColumnSortOrder;

  List<NxCell> _grandTotalRow;
  List<NxCell> get grandTotalRow => _$this._grandTotalRow;
  set grandTotalRow(List<NxCell> grandTotalRow) =>
      _$this._grandTotalRow = grandTotalRow;

  List<NxCell> _dataPages;
  List<NxCell> get dataPages => _$this._dataPages;
  set dataPages(List<NxCell> dataPages) => _$this._dataPages = dataPages;

  List<NxCell> _pivotDataPages;
  List<NxCell> get pivotDataPages => _$this._pivotDataPages;
  set pivotDataPages(List<NxCell> pivotDataPages) =>
      _$this._pivotDataPages = pivotDataPages;

  List<NxCell> _stackedDataPages;
  List<NxCell> get stackedDataPages => _$this._stackedDataPages;
  set stackedDataPages(List<NxCell> stackedDataPages) =>
      _$this._stackedDataPages = stackedDataPages;

  String _mode;
  String get mode => _$this._mode;
  set mode(String mode) => _$this._mode = mode;

  int _noOfLeftDims;
  int get noOfLeftDims => _$this._noOfLeftDims;
  set noOfLeftDims(int noOfLeftDims) => _$this._noOfLeftDims = noOfLeftDims;

  bool _indentMode;
  bool get indentMode => _$this._indentMode;
  set indentMode(bool indentMode) => _$this._indentMode = indentMode;

  NxCellPositionBuilder _lastExpandedPos;
  NxCellPositionBuilder get lastExpandedPos =>
      _$this._lastExpandedPos ??= new NxCellPositionBuilder();
  set lastExpandedPos(NxCellPositionBuilder lastExpandedPos) =>
      _$this._lastExpandedPos = lastExpandedPos;

  bool _hasOtherValues;
  bool get hasOtherValues => _$this._hasOtherValues;
  set hasOtherValues(bool hasOtherValues) =>
      _$this._hasOtherValues = hasOtherValues;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  List<NxCell> _treeNodesOnDim;
  List<NxCell> get treeNodesOnDim => _$this._treeNodesOnDim;
  set treeNodesOnDim(List<NxCell> treeNodesOnDim) =>
      _$this._treeNodesOnDim = treeNodesOnDim;

  String _calcCondMsg;
  String get calcCondMsg => _$this._calcCondMsg;
  set calcCondMsg(String calcCondMsg) => _$this._calcCondMsg = calcCondMsg;

  List<NxCell> _columnOrder;
  List<NxCell> get columnOrder => _$this._columnOrder;
  set columnOrder(List<NxCell> columnOrder) =>
      _$this._columnOrder = columnOrder;

  HyperCubeBuilder();

  HyperCubeBuilder get _$this {
    if (_$v != null) {
      _stateName = _$v.stateName;
      _size = _$v.size?.toBuilder();
      _error = _$v.error?.toBuilder();
      _dimensionInfo = _$v.dimensionInfo;
      _measureInfo = _$v.measureInfo;
      _effectiveInterColumnSortOrder = _$v.effectiveInterColumnSortOrder;
      _grandTotalRow = _$v.grandTotalRow;
      _dataPages = _$v.dataPages;
      _pivotDataPages = _$v.pivotDataPages;
      _stackedDataPages = _$v.stackedDataPages;
      _mode = _$v.mode;
      _noOfLeftDims = _$v.noOfLeftDims;
      _indentMode = _$v.indentMode;
      _lastExpandedPos = _$v.lastExpandedPos?.toBuilder();
      _hasOtherValues = _$v.hasOtherValues;
      _title = _$v.title;
      _treeNodesOnDim = _$v.treeNodesOnDim;
      _calcCondMsg = _$v.calcCondMsg;
      _columnOrder = _$v.columnOrder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HyperCube other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$HyperCube;
  }

  @override
  void update(void updates(HyperCubeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$HyperCube build() {
    _$HyperCube _$result;
    try {
      _$result = _$v ??
          new _$HyperCube._(
              stateName: stateName,
              size: _size?.build(),
              error: _error?.build(),
              dimensionInfo: dimensionInfo,
              measureInfo: measureInfo,
              effectiveInterColumnSortOrder: effectiveInterColumnSortOrder,
              grandTotalRow: grandTotalRow,
              dataPages: dataPages,
              pivotDataPages: pivotDataPages,
              stackedDataPages: stackedDataPages,
              mode: mode,
              noOfLeftDims: noOfLeftDims,
              indentMode: indentMode,
              lastExpandedPos: _lastExpandedPos?.build(),
              hasOtherValues: hasOtherValues,
              title: title,
              treeNodesOnDim: treeNodesOnDim,
              calcCondMsg: calcCondMsg,
              columnOrder: columnOrder);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'size';
        _size?.build();
        _$failedField = 'error';
        _error?.build();

        _$failedField = 'lastExpandedPos';
        _lastExpandedPos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HyperCube', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
