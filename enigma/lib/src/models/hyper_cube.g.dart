// GENERATED CODE - DO NOT MODIFY BY HAND

part of hyper_cube;

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

Serializer<HyperCube> _$hyperCubeSerializer = new _$HyperCubeSerializer();

class _$HyperCubeSerializer implements StructuredSerializer<HyperCube> {
  @override
  final Iterable<Type> types = const [HyperCube, _$HyperCube];
  @override
  final String wireName = 'HyperCube';

  @override
  Iterable serialize(Serializers serializers, HyperCube object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.stateName != null) {
      result
        ..add('qStateName')
        ..add(serializers.serialize(object.stateName,
            specifiedType: const FullType(String)));
    }
    if (object.size != null) {
      result
        ..add('qSize')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(Size)));
    }
    if (object.error != null) {
      result
        ..add('qError')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(NxValidationError)));
    }
    if (object.dimensionInfo != null) {
      result
        ..add('qDimensionInfo')
        ..add(serializers.serialize(object.dimensionInfo,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxDimensionInfo)])));
    }
    if (object.measureInfo != null) {
      result
        ..add('qMeasureInfo')
        ..add(serializers.serialize(object.measureInfo,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxMeasureInfo)])));
    }
    if (object.effectiveInterColumnSortOrder != null) {
      result
        ..add('qEffectiveInterColumnSortOrder')
        ..add(serializers.serialize(object.effectiveInterColumnSortOrder,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.grandTotalRow != null) {
      result
        ..add('qGrandTotalRow')
        ..add(serializers.serialize(object.grandTotalRow,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.dataPages != null) {
      result
        ..add('qDataPages')
        ..add(serializers.serialize(object.dataPages,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxDataPage)])));
    }
    if (object.pivotDataPages != null) {
      result
        ..add('qPivotDataPages')
        ..add(serializers.serialize(object.pivotDataPages,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxPivotPage)])));
    }
    if (object.stackedDataPages != null) {
      result
        ..add('qStackedDataPages')
        ..add(serializers.serialize(object.stackedDataPages,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxStackPage)])));
    }
    if (object.mode != null) {
      result
        ..add('qMode')
        ..add(serializers.serialize(object.mode,
            specifiedType: const FullType(String)));
    }
    if (object.noOfLeftDims != null) {
      result
        ..add('qNoOfLeftDims')
        ..add(serializers.serialize(object.noOfLeftDims,
            specifiedType: const FullType(int)));
    }
    if (object.indentMode != null) {
      result
        ..add('qIndentMode')
        ..add(serializers.serialize(object.indentMode,
            specifiedType: const FullType(bool)));
    }
    if (object.lastExpandedPos != null) {
      result
        ..add('qLastExpandedPos')
        ..add(serializers.serialize(object.lastExpandedPos,
            specifiedType: const FullType(NxCellPosition)));
    }
    if (object.hasOtherValues != null) {
      result
        ..add('qHasOtherValues')
        ..add(serializers.serialize(object.hasOtherValues,
            specifiedType: const FullType(bool)));
    }
    if (object.title != null) {
      result
        ..add('qTitle')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.treeNodesOnDim != null) {
      result
        ..add('qTreeNodesOnDim')
        ..add(serializers.serialize(object.treeNodesOnDim,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.calcCondMsg != null) {
      result
        ..add('qCalcCondMsg')
        ..add(serializers.serialize(object.calcCondMsg,
            specifiedType: const FullType(String)));
    }
    if (object.columnOrder != null) {
      result
        ..add('qColumnOrder')
        ..add(serializers.serialize(object.columnOrder,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }

    return result;
  }

  @override
  HyperCube deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HyperCubeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qStateName':
          result.stateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qSize':
          result.size.replace(serializers.deserialize(value,
              specifiedType: const FullType(Size)) as Size);
          break;
        case 'qError':
          result.error.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxValidationError))
              as NxValidationError);
          break;
        case 'qDimensionInfo':
          result.dimensionInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxDimensionInfo)]))
              as BuiltList);
          break;
        case 'qMeasureInfo':
          result.measureInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxMeasureInfo)]))
              as BuiltList);
          break;
        case 'qEffectiveInterColumnSortOrder':
          result.effectiveInterColumnSortOrder.replace(serializers.deserialize(
                  value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
        case 'qGrandTotalRow':
          result.grandTotalRow.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qDataPages':
          result.dataPages.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(NxDataPage)])) as BuiltList);
          break;
        case 'qPivotDataPages':
          result.pivotDataPages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxPivotPage)]))
              as BuiltList);
          break;
        case 'qStackedDataPages':
          result.stackedDataPages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxStackPage)]))
              as BuiltList);
          break;
        case 'qMode':
          result.mode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qNoOfLeftDims':
          result.noOfLeftDims = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qIndentMode':
          result.indentMode = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qLastExpandedPos':
          result.lastExpandedPos.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxCellPosition)) as NxCellPosition);
          break;
        case 'qHasOtherValues':
          result.hasOtherValues = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qTitle':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qTreeNodesOnDim':
          result.treeNodesOnDim.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
        case 'qCalcCondMsg':
          result.calcCondMsg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qColumnOrder':
          result.columnOrder.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
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
  final BuiltList<NxDimensionInfo> dimensionInfo;
  @override
  final BuiltList<NxMeasureInfo> measureInfo;
  @override
  final BuiltList<int> effectiveInterColumnSortOrder;
  @override
  final BuiltList<NxCell> grandTotalRow;
  @override
  final BuiltList<NxDataPage> dataPages;
  @override
  final BuiltList<NxPivotPage> pivotDataPages;
  @override
  final BuiltList<NxStackPage> stackedDataPages;
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
  final BuiltList<int> treeNodesOnDim;
  @override
  final String calcCondMsg;
  @override
  final BuiltList<int> columnOrder;

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

  ListBuilder<NxDimensionInfo> _dimensionInfo;
  ListBuilder<NxDimensionInfo> get dimensionInfo =>
      _$this._dimensionInfo ??= new ListBuilder<NxDimensionInfo>();
  set dimensionInfo(ListBuilder<NxDimensionInfo> dimensionInfo) =>
      _$this._dimensionInfo = dimensionInfo;

  ListBuilder<NxMeasureInfo> _measureInfo;
  ListBuilder<NxMeasureInfo> get measureInfo =>
      _$this._measureInfo ??= new ListBuilder<NxMeasureInfo>();
  set measureInfo(ListBuilder<NxMeasureInfo> measureInfo) =>
      _$this._measureInfo = measureInfo;

  ListBuilder<int> _effectiveInterColumnSortOrder;
  ListBuilder<int> get effectiveInterColumnSortOrder =>
      _$this._effectiveInterColumnSortOrder ??= new ListBuilder<int>();
  set effectiveInterColumnSortOrder(
          ListBuilder<int> effectiveInterColumnSortOrder) =>
      _$this._effectiveInterColumnSortOrder = effectiveInterColumnSortOrder;

  ListBuilder<NxCell> _grandTotalRow;
  ListBuilder<NxCell> get grandTotalRow =>
      _$this._grandTotalRow ??= new ListBuilder<NxCell>();
  set grandTotalRow(ListBuilder<NxCell> grandTotalRow) =>
      _$this._grandTotalRow = grandTotalRow;

  ListBuilder<NxDataPage> _dataPages;
  ListBuilder<NxDataPage> get dataPages =>
      _$this._dataPages ??= new ListBuilder<NxDataPage>();
  set dataPages(ListBuilder<NxDataPage> dataPages) =>
      _$this._dataPages = dataPages;

  ListBuilder<NxPivotPage> _pivotDataPages;
  ListBuilder<NxPivotPage> get pivotDataPages =>
      _$this._pivotDataPages ??= new ListBuilder<NxPivotPage>();
  set pivotDataPages(ListBuilder<NxPivotPage> pivotDataPages) =>
      _$this._pivotDataPages = pivotDataPages;

  ListBuilder<NxStackPage> _stackedDataPages;
  ListBuilder<NxStackPage> get stackedDataPages =>
      _$this._stackedDataPages ??= new ListBuilder<NxStackPage>();
  set stackedDataPages(ListBuilder<NxStackPage> stackedDataPages) =>
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

  ListBuilder<int> _treeNodesOnDim;
  ListBuilder<int> get treeNodesOnDim =>
      _$this._treeNodesOnDim ??= new ListBuilder<int>();
  set treeNodesOnDim(ListBuilder<int> treeNodesOnDim) =>
      _$this._treeNodesOnDim = treeNodesOnDim;

  String _calcCondMsg;
  String get calcCondMsg => _$this._calcCondMsg;
  set calcCondMsg(String calcCondMsg) => _$this._calcCondMsg = calcCondMsg;

  ListBuilder<int> _columnOrder;
  ListBuilder<int> get columnOrder =>
      _$this._columnOrder ??= new ListBuilder<int>();
  set columnOrder(ListBuilder<int> columnOrder) =>
      _$this._columnOrder = columnOrder;

  HyperCubeBuilder();

  HyperCubeBuilder get _$this {
    if (_$v != null) {
      _stateName = _$v.stateName;
      _size = _$v.size?.toBuilder();
      _error = _$v.error?.toBuilder();
      _dimensionInfo = _$v.dimensionInfo?.toBuilder();
      _measureInfo = _$v.measureInfo?.toBuilder();
      _effectiveInterColumnSortOrder =
          _$v.effectiveInterColumnSortOrder?.toBuilder();
      _grandTotalRow = _$v.grandTotalRow?.toBuilder();
      _dataPages = _$v.dataPages?.toBuilder();
      _pivotDataPages = _$v.pivotDataPages?.toBuilder();
      _stackedDataPages = _$v.stackedDataPages?.toBuilder();
      _mode = _$v.mode;
      _noOfLeftDims = _$v.noOfLeftDims;
      _indentMode = _$v.indentMode;
      _lastExpandedPos = _$v.lastExpandedPos?.toBuilder();
      _hasOtherValues = _$v.hasOtherValues;
      _title = _$v.title;
      _treeNodesOnDim = _$v.treeNodesOnDim?.toBuilder();
      _calcCondMsg = _$v.calcCondMsg;
      _columnOrder = _$v.columnOrder?.toBuilder();
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
              dimensionInfo: _dimensionInfo?.build(),
              measureInfo: _measureInfo?.build(),
              effectiveInterColumnSortOrder:
                  _effectiveInterColumnSortOrder?.build(),
              grandTotalRow: _grandTotalRow?.build(),
              dataPages: _dataPages?.build(),
              pivotDataPages: _pivotDataPages?.build(),
              stackedDataPages: _stackedDataPages?.build(),
              mode: mode,
              noOfLeftDims: noOfLeftDims,
              indentMode: indentMode,
              lastExpandedPos: _lastExpandedPos?.build(),
              hasOtherValues: hasOtherValues,
              title: title,
              treeNodesOnDim: _treeNodesOnDim?.build(),
              calcCondMsg: calcCondMsg,
              columnOrder: _columnOrder?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'size';
        _size?.build();
        _$failedField = 'error';
        _error?.build();
        _$failedField = 'dimensionInfo';
        _dimensionInfo?.build();
        _$failedField = 'measureInfo';
        _measureInfo?.build();
        _$failedField = 'effectiveInterColumnSortOrder';
        _effectiveInterColumnSortOrder?.build();
        _$failedField = 'grandTotalRow';
        _grandTotalRow?.build();
        _$failedField = 'dataPages';
        _dataPages?.build();
        _$failedField = 'pivotDataPages';
        _pivotDataPages?.build();
        _$failedField = 'stackedDataPages';
        _stackedDataPages?.build();

        _$failedField = 'lastExpandedPos';
        _lastExpandedPos?.build();

        _$failedField = 'treeNodesOnDim';
        _treeNodesOnDim?.build();

        _$failedField = 'columnOrder';
        _columnOrder?.build();
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
