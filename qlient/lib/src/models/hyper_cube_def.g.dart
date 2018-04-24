// GENERATED CODE - DO NOT MODIFY BY HAND

part of hyper_cube_def;

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

Serializer<HyperCubeDef> _$hyperCubeDefSerializer =
    new _$HyperCubeDefSerializer();

class _$HyperCubeDefSerializer implements StructuredSerializer<HyperCubeDef> {
  @override
  final Iterable<Type> types = const [HyperCubeDef, _$HyperCubeDef];
  @override
  final String wireName = 'HyperCubeDef';

  @override
  Iterable serialize(Serializers serializers, HyperCubeDef object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.stateName != null) {
      result
        ..add('stateName')
        ..add(serializers.serialize(object.stateName,
            specifiedType: const FullType(String)));
    }
    if (object.dimensions != null) {
      result
        ..add('dimensions')
        ..add(serializers.serialize(object.dimensions,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.measures != null) {
      result
        ..add('measures')
        ..add(serializers.serialize(object.measures,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.interColumnSortOrder != null) {
      result
        ..add('interColumnSortOrder')
        ..add(serializers.serialize(object.interColumnSortOrder,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.suppressZero != null) {
      result
        ..add('suppressZero')
        ..add(serializers.serialize(object.suppressZero,
            specifiedType: const FullType(bool)));
    }
    if (object.suppressMissing != null) {
      result
        ..add('suppressMissing')
        ..add(serializers.serialize(object.suppressMissing,
            specifiedType: const FullType(bool)));
    }
    if (object.initialDataFetch != null) {
      result
        ..add('initialDataFetch')
        ..add(serializers.serialize(object.initialDataFetch,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.reductionMode != null) {
      result
        ..add('reductionMode')
        ..add(serializers.serialize(object.reductionMode,
            specifiedType: const FullType(String)));
    }
    if (object.mode != null) {
      result
        ..add('mode')
        ..add(serializers.serialize(object.mode,
            specifiedType: const FullType(String)));
    }
    if (object.pseudoDimPos != null) {
      result
        ..add('pseudoDimPos')
        ..add(serializers.serialize(object.pseudoDimPos,
            specifiedType: const FullType(int)));
    }
    if (object.noOfLeftDims != null) {
      result
        ..add('noOfLeftDims')
        ..add(serializers.serialize(object.noOfLeftDims,
            specifiedType: const FullType(int)));
    }
    if (object.alwaysFullyExpanded != null) {
      result
        ..add('alwaysFullyExpanded')
        ..add(serializers.serialize(object.alwaysFullyExpanded,
            specifiedType: const FullType(bool)));
    }
    if (object.maxStackedCells != null) {
      result
        ..add('maxStackedCells')
        ..add(serializers.serialize(object.maxStackedCells,
            specifiedType: const FullType(int)));
    }
    if (object.populateMissing != null) {
      result
        ..add('populateMissing')
        ..add(serializers.serialize(object.populateMissing,
            specifiedType: const FullType(bool)));
    }
    if (object.showTotalsAbove != null) {
      result
        ..add('showTotalsAbove')
        ..add(serializers.serialize(object.showTotalsAbove,
            specifiedType: const FullType(bool)));
    }
    if (object.indentMode != null) {
      result
        ..add('indentMode')
        ..add(serializers.serialize(object.indentMode,
            specifiedType: const FullType(bool)));
    }
    if (object.calcCond != null) {
      result
        ..add('calcCond')
        ..add(serializers.serialize(object.calcCond,
            specifiedType: const FullType(ValueExpr)));
    }
    if (object.sortbyYValue != null) {
      result
        ..add('sortbyYValue')
        ..add(serializers.serialize(object.sortbyYValue,
            specifiedType: const FullType(int)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(StringExpr)));
    }
    if (object.calcCondition != null) {
      result
        ..add('calcCondition')
        ..add(serializers.serialize(object.calcCondition,
            specifiedType: const FullType(NxCalcCond)));
    }
    if (object.columnOrder != null) {
      result
        ..add('columnOrder')
        ..add(serializers.serialize(object.columnOrder,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  HyperCubeDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new HyperCubeDefBuilder();

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
        case 'dimensions':
          result.dimensions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'measures':
          result.measures.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'interColumnSortOrder':
          result.interColumnSortOrder.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'suppressZero':
          result.suppressZero = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'suppressMissing':
          result.suppressMissing = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'initialDataFetch':
          result.initialDataFetch.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'reductionMode':
          result.reductionMode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mode':
          result.mode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pseudoDimPos':
          result.pseudoDimPos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'noOfLeftDims':
          result.noOfLeftDims = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'alwaysFullyExpanded':
          result.alwaysFullyExpanded = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'maxStackedCells':
          result.maxStackedCells = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'populateMissing':
          result.populateMissing = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'showTotalsAbove':
          result.showTotalsAbove = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'indentMode':
          result.indentMode = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'calcCond':
          result.calcCond.replace(serializers.deserialize(value,
              specifiedType: const FullType(ValueExpr)) as ValueExpr);
          break;
        case 'sortbyYValue':
          result.sortbyYValue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
              specifiedType: const FullType(StringExpr)) as StringExpr);
          break;
        case 'calcCondition':
          result.calcCondition.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxCalcCond)) as NxCalcCond);
          break;
        case 'columnOrder':
          result.columnOrder.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$HyperCubeDef extends HyperCubeDef {
  @override
  final String stateName;
  @override
  final BuiltList<NxCell> dimensions;
  @override
  final BuiltList<NxCell> measures;
  @override
  final BuiltList<NxCell> interColumnSortOrder;
  @override
  final bool suppressZero;
  @override
  final bool suppressMissing;
  @override
  final BuiltList<NxCell> initialDataFetch;
  @override
  final String reductionMode;
  @override
  final String mode;
  @override
  final int pseudoDimPos;
  @override
  final int noOfLeftDims;
  @override
  final bool alwaysFullyExpanded;
  @override
  final int maxStackedCells;
  @override
  final bool populateMissing;
  @override
  final bool showTotalsAbove;
  @override
  final bool indentMode;
  @override
  final ValueExpr calcCond;
  @override
  final int sortbyYValue;
  @override
  final StringExpr title;
  @override
  final NxCalcCond calcCondition;
  @override
  final BuiltList<NxCell> columnOrder;

  factory _$HyperCubeDef([void updates(HyperCubeDefBuilder b)]) =>
      (new HyperCubeDefBuilder()..update(updates)).build();

  _$HyperCubeDef._(
      {this.stateName,
      this.dimensions,
      this.measures,
      this.interColumnSortOrder,
      this.suppressZero,
      this.suppressMissing,
      this.initialDataFetch,
      this.reductionMode,
      this.mode,
      this.pseudoDimPos,
      this.noOfLeftDims,
      this.alwaysFullyExpanded,
      this.maxStackedCells,
      this.populateMissing,
      this.showTotalsAbove,
      this.indentMode,
      this.calcCond,
      this.sortbyYValue,
      this.title,
      this.calcCondition,
      this.columnOrder})
      : super._();

  @override
  HyperCubeDef rebuild(void updates(HyperCubeDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  HyperCubeDefBuilder toBuilder() => new HyperCubeDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! HyperCubeDef) return false;
    return stateName == other.stateName &&
        dimensions == other.dimensions &&
        measures == other.measures &&
        interColumnSortOrder == other.interColumnSortOrder &&
        suppressZero == other.suppressZero &&
        suppressMissing == other.suppressMissing &&
        initialDataFetch == other.initialDataFetch &&
        reductionMode == other.reductionMode &&
        mode == other.mode &&
        pseudoDimPos == other.pseudoDimPos &&
        noOfLeftDims == other.noOfLeftDims &&
        alwaysFullyExpanded == other.alwaysFullyExpanded &&
        maxStackedCells == other.maxStackedCells &&
        populateMissing == other.populateMissing &&
        showTotalsAbove == other.showTotalsAbove &&
        indentMode == other.indentMode &&
        calcCond == other.calcCond &&
        sortbyYValue == other.sortbyYValue &&
        title == other.title &&
        calcCondition == other.calcCondition &&
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
                                                                            $jc($jc($jc(0, stateName.hashCode), dimensions.hashCode),
                                                                                measures.hashCode),
                                                                            interColumnSortOrder.hashCode),
                                                                        suppressZero.hashCode),
                                                                    suppressMissing.hashCode),
                                                                initialDataFetch.hashCode),
                                                            reductionMode.hashCode),
                                                        mode.hashCode),
                                                    pseudoDimPos.hashCode),
                                                noOfLeftDims.hashCode),
                                            alwaysFullyExpanded.hashCode),
                                        maxStackedCells.hashCode),
                                    populateMissing.hashCode),
                                showTotalsAbove.hashCode),
                            indentMode.hashCode),
                        calcCond.hashCode),
                    sortbyYValue.hashCode),
                title.hashCode),
            calcCondition.hashCode),
        columnOrder.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HyperCubeDef')
          ..add('stateName', stateName)
          ..add('dimensions', dimensions)
          ..add('measures', measures)
          ..add('interColumnSortOrder', interColumnSortOrder)
          ..add('suppressZero', suppressZero)
          ..add('suppressMissing', suppressMissing)
          ..add('initialDataFetch', initialDataFetch)
          ..add('reductionMode', reductionMode)
          ..add('mode', mode)
          ..add('pseudoDimPos', pseudoDimPos)
          ..add('noOfLeftDims', noOfLeftDims)
          ..add('alwaysFullyExpanded', alwaysFullyExpanded)
          ..add('maxStackedCells', maxStackedCells)
          ..add('populateMissing', populateMissing)
          ..add('showTotalsAbove', showTotalsAbove)
          ..add('indentMode', indentMode)
          ..add('calcCond', calcCond)
          ..add('sortbyYValue', sortbyYValue)
          ..add('title', title)
          ..add('calcCondition', calcCondition)
          ..add('columnOrder', columnOrder))
        .toString();
  }
}

class HyperCubeDefBuilder
    implements Builder<HyperCubeDef, HyperCubeDefBuilder> {
  _$HyperCubeDef _$v;

  String _stateName;
  String get stateName => _$this._stateName;
  set stateName(String stateName) => _$this._stateName = stateName;

  ListBuilder<NxCell> _dimensions;
  ListBuilder<NxCell> get dimensions =>
      _$this._dimensions ??= new ListBuilder<NxCell>();
  set dimensions(ListBuilder<NxCell> dimensions) =>
      _$this._dimensions = dimensions;

  ListBuilder<NxCell> _measures;
  ListBuilder<NxCell> get measures =>
      _$this._measures ??= new ListBuilder<NxCell>();
  set measures(ListBuilder<NxCell> measures) => _$this._measures = measures;

  ListBuilder<NxCell> _interColumnSortOrder;
  ListBuilder<NxCell> get interColumnSortOrder =>
      _$this._interColumnSortOrder ??= new ListBuilder<NxCell>();
  set interColumnSortOrder(ListBuilder<NxCell> interColumnSortOrder) =>
      _$this._interColumnSortOrder = interColumnSortOrder;

  bool _suppressZero;
  bool get suppressZero => _$this._suppressZero;
  set suppressZero(bool suppressZero) => _$this._suppressZero = suppressZero;

  bool _suppressMissing;
  bool get suppressMissing => _$this._suppressMissing;
  set suppressMissing(bool suppressMissing) =>
      _$this._suppressMissing = suppressMissing;

  ListBuilder<NxCell> _initialDataFetch;
  ListBuilder<NxCell> get initialDataFetch =>
      _$this._initialDataFetch ??= new ListBuilder<NxCell>();
  set initialDataFetch(ListBuilder<NxCell> initialDataFetch) =>
      _$this._initialDataFetch = initialDataFetch;

  String _reductionMode;
  String get reductionMode => _$this._reductionMode;
  set reductionMode(String reductionMode) =>
      _$this._reductionMode = reductionMode;

  String _mode;
  String get mode => _$this._mode;
  set mode(String mode) => _$this._mode = mode;

  int _pseudoDimPos;
  int get pseudoDimPos => _$this._pseudoDimPos;
  set pseudoDimPos(int pseudoDimPos) => _$this._pseudoDimPos = pseudoDimPos;

  int _noOfLeftDims;
  int get noOfLeftDims => _$this._noOfLeftDims;
  set noOfLeftDims(int noOfLeftDims) => _$this._noOfLeftDims = noOfLeftDims;

  bool _alwaysFullyExpanded;
  bool get alwaysFullyExpanded => _$this._alwaysFullyExpanded;
  set alwaysFullyExpanded(bool alwaysFullyExpanded) =>
      _$this._alwaysFullyExpanded = alwaysFullyExpanded;

  int _maxStackedCells;
  int get maxStackedCells => _$this._maxStackedCells;
  set maxStackedCells(int maxStackedCells) =>
      _$this._maxStackedCells = maxStackedCells;

  bool _populateMissing;
  bool get populateMissing => _$this._populateMissing;
  set populateMissing(bool populateMissing) =>
      _$this._populateMissing = populateMissing;

  bool _showTotalsAbove;
  bool get showTotalsAbove => _$this._showTotalsAbove;
  set showTotalsAbove(bool showTotalsAbove) =>
      _$this._showTotalsAbove = showTotalsAbove;

  bool _indentMode;
  bool get indentMode => _$this._indentMode;
  set indentMode(bool indentMode) => _$this._indentMode = indentMode;

  ValueExprBuilder _calcCond;
  ValueExprBuilder get calcCond => _$this._calcCond ??= new ValueExprBuilder();
  set calcCond(ValueExprBuilder calcCond) => _$this._calcCond = calcCond;

  int _sortbyYValue;
  int get sortbyYValue => _$this._sortbyYValue;
  set sortbyYValue(int sortbyYValue) => _$this._sortbyYValue = sortbyYValue;

  StringExprBuilder _title;
  StringExprBuilder get title => _$this._title ??= new StringExprBuilder();
  set title(StringExprBuilder title) => _$this._title = title;

  NxCalcCondBuilder _calcCondition;
  NxCalcCondBuilder get calcCondition =>
      _$this._calcCondition ??= new NxCalcCondBuilder();
  set calcCondition(NxCalcCondBuilder calcCondition) =>
      _$this._calcCondition = calcCondition;

  ListBuilder<NxCell> _columnOrder;
  ListBuilder<NxCell> get columnOrder =>
      _$this._columnOrder ??= new ListBuilder<NxCell>();
  set columnOrder(ListBuilder<NxCell> columnOrder) =>
      _$this._columnOrder = columnOrder;

  HyperCubeDefBuilder();

  HyperCubeDefBuilder get _$this {
    if (_$v != null) {
      _stateName = _$v.stateName;
      _dimensions = _$v.dimensions?.toBuilder();
      _measures = _$v.measures?.toBuilder();
      _interColumnSortOrder = _$v.interColumnSortOrder?.toBuilder();
      _suppressZero = _$v.suppressZero;
      _suppressMissing = _$v.suppressMissing;
      _initialDataFetch = _$v.initialDataFetch?.toBuilder();
      _reductionMode = _$v.reductionMode;
      _mode = _$v.mode;
      _pseudoDimPos = _$v.pseudoDimPos;
      _noOfLeftDims = _$v.noOfLeftDims;
      _alwaysFullyExpanded = _$v.alwaysFullyExpanded;
      _maxStackedCells = _$v.maxStackedCells;
      _populateMissing = _$v.populateMissing;
      _showTotalsAbove = _$v.showTotalsAbove;
      _indentMode = _$v.indentMode;
      _calcCond = _$v.calcCond?.toBuilder();
      _sortbyYValue = _$v.sortbyYValue;
      _title = _$v.title?.toBuilder();
      _calcCondition = _$v.calcCondition?.toBuilder();
      _columnOrder = _$v.columnOrder?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HyperCubeDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$HyperCubeDef;
  }

  @override
  void update(void updates(HyperCubeDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$HyperCubeDef build() {
    _$HyperCubeDef _$result;
    try {
      _$result = _$v ??
          new _$HyperCubeDef._(
              stateName: stateName,
              dimensions: _dimensions?.build(),
              measures: _measures?.build(),
              interColumnSortOrder: _interColumnSortOrder?.build(),
              suppressZero: suppressZero,
              suppressMissing: suppressMissing,
              initialDataFetch: _initialDataFetch?.build(),
              reductionMode: reductionMode,
              mode: mode,
              pseudoDimPos: pseudoDimPos,
              noOfLeftDims: noOfLeftDims,
              alwaysFullyExpanded: alwaysFullyExpanded,
              maxStackedCells: maxStackedCells,
              populateMissing: populateMissing,
              showTotalsAbove: showTotalsAbove,
              indentMode: indentMode,
              calcCond: _calcCond?.build(),
              sortbyYValue: sortbyYValue,
              title: _title?.build(),
              calcCondition: _calcCondition?.build(),
              columnOrder: _columnOrder?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dimensions';
        _dimensions?.build();
        _$failedField = 'measures';
        _measures?.build();
        _$failedField = 'interColumnSortOrder';
        _interColumnSortOrder?.build();

        _$failedField = 'initialDataFetch';
        _initialDataFetch?.build();

        _$failedField = 'calcCond';
        _calcCond?.build();

        _$failedField = 'title';
        _title?.build();
        _$failedField = 'calcCondition';
        _calcCondition?.build();
        _$failedField = 'columnOrder';
        _columnOrder?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HyperCubeDef', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
