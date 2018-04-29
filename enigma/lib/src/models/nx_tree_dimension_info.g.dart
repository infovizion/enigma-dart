// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_tree_dimension_info;

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

Serializer<NxTreeDimensionInfo> _$nxTreeDimensionInfoSerializer =
    new _$NxTreeDimensionInfoSerializer();

class _$NxTreeDimensionInfoSerializer
    implements StructuredSerializer<NxTreeDimensionInfo> {
  @override
  final Iterable<Type> types = const [
    NxTreeDimensionInfo,
    _$NxTreeDimensionInfo
  ];
  @override
  final String wireName = 'NxTreeDimensionInfo';

  @override
  Iterable serialize(Serializers serializers, NxTreeDimensionInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.fallbackTitle != null) {
      result
        ..add('fallbackTitle')
        ..add(serializers.serialize(object.fallbackTitle,
            specifiedType: const FullType(String)));
    }
    if (object.apprMaxGlyphCount != null) {
      result
        ..add('apprMaxGlyphCount')
        ..add(serializers.serialize(object.apprMaxGlyphCount,
            specifiedType: const FullType(int)));
    }
    if (object.cardinal != null) {
      result
        ..add('cardinal')
        ..add(serializers.serialize(object.cardinal,
            specifiedType: const FullType(int)));
    }
    if (object.locked != null) {
      result
        ..add('locked')
        ..add(serializers.serialize(object.locked,
            specifiedType: const FullType(bool)));
    }
    if (object.sortIndicator != null) {
      result
        ..add('sortIndicator')
        ..add(serializers.serialize(object.sortIndicator,
            specifiedType: const FullType(String)));
    }
    if (object.groupFallbackTitles != null) {
      result
        ..add('groupFallbackTitles')
        ..add(serializers.serialize(object.groupFallbackTitles,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.groupPos != null) {
      result
        ..add('groupPos')
        ..add(serializers.serialize(object.groupPos,
            specifiedType: const FullType(int)));
    }
    if (object.stateCounts != null) {
      result
        ..add('stateCounts')
        ..add(serializers.serialize(object.stateCounts,
            specifiedType: const FullType(NxStateCounts)));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.error != null) {
      result
        ..add('error')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(NxValidationError)));
    }
    if (object.dimensionType != null) {
      result
        ..add('dimensionType')
        ..add(serializers.serialize(object.dimensionType,
            specifiedType: const FullType(String)));
    }
    if (object.reverseSort != null) {
      result
        ..add('reverseSort')
        ..add(serializers.serialize(object.reverseSort,
            specifiedType: const FullType(bool)));
    }
    if (object.grouping != null) {
      result
        ..add('grouping')
        ..add(serializers.serialize(object.grouping,
            specifiedType: const FullType(String)));
    }
    if (object.isSemantic != null) {
      result
        ..add('isSemantic')
        ..add(serializers.serialize(object.isSemantic,
            specifiedType: const FullType(bool)));
    }
    if (object.numFormat != null) {
      result
        ..add('numFormat')
        ..add(serializers.serialize(object.numFormat,
            specifiedType: const FullType(FieldAttributes)));
    }
    if (object.isAutoFormat != null) {
      result
        ..add('isAutoFormat')
        ..add(serializers.serialize(object.isAutoFormat,
            specifiedType: const FullType(bool)));
    }
    if (object.groupFieldDefs != null) {
      result
        ..add('groupFieldDefs')
        ..add(serializers.serialize(object.groupFieldDefs,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.min != null) {
      result
        ..add('min')
        ..add(serializers.serialize(object.min,
            specifiedType: const FullType(num)));
    }
    if (object.max != null) {
      result
        ..add('max')
        ..add(serializers.serialize(object.max,
            specifiedType: const FullType(num)));
    }
    if (object.continuousAxes != null) {
      result
        ..add('continuousAxes')
        ..add(serializers.serialize(object.continuousAxes,
            specifiedType: const FullType(bool)));
    }
    if (object.isCyclic != null) {
      result
        ..add('isCyclic')
        ..add(serializers.serialize(object.isCyclic,
            specifiedType: const FullType(bool)));
    }
    if (object.derivedField != null) {
      result
        ..add('derivedField')
        ..add(serializers.serialize(object.derivedField,
            specifiedType: const FullType(bool)));
    }
    if (object.measureInfo != null) {
      result
        ..add('measureInfo')
        ..add(serializers.serialize(object.measureInfo,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.attrExprInfo != null) {
      result
        ..add('attrExprInfo')
        ..add(serializers.serialize(object.attrExprInfo,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.attrDimInfo != null) {
      result
        ..add('attrDimInfo')
        ..add(serializers.serialize(object.attrDimInfo,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.calcCondMsg != null) {
      result
        ..add('calcCondMsg')
        ..add(serializers.serialize(object.calcCondMsg,
            specifiedType: const FullType(String)));
    }
    if (object.isCalculated != null) {
      result
        ..add('isCalculated')
        ..add(serializers.serialize(object.isCalculated,
            specifiedType: const FullType(bool)));
    }
    if (object.isOneAndOnlyOne != null) {
      result
        ..add('isOneAndOnlyOne')
        ..add(serializers.serialize(object.isOneAndOnlyOne,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  NxTreeDimensionInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxTreeDimensionInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'fallbackTitle':
          result.fallbackTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'apprMaxGlyphCount':
          result.apprMaxGlyphCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cardinal':
          result.cardinal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'locked':
          result.locked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'sortIndicator':
          result.sortIndicator = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'groupFallbackTitles':
          result.groupFallbackTitles.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'groupPos':
          result.groupPos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'stateCounts':
          result.stateCounts.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxStateCounts)) as NxStateCounts);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxValidationError))
              as NxValidationError);
          break;
        case 'dimensionType':
          result.dimensionType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reverseSort':
          result.reverseSort = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'grouping':
          result.grouping = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isSemantic':
          result.isSemantic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'numFormat':
          result.numFormat.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FieldAttributes))
              as FieldAttributes);
          break;
        case 'isAutoFormat':
          result.isAutoFormat = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'groupFieldDefs':
          result.groupFieldDefs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'min':
          result.min = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'max':
          result.max = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'continuousAxes':
          result.continuousAxes = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isCyclic':
          result.isCyclic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'derivedField':
          result.derivedField = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'measureInfo':
          result.measureInfo.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'attrExprInfo':
          result.attrExprInfo.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'attrDimInfo':
          result.attrDimInfo.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'calcCondMsg':
          result.calcCondMsg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isCalculated':
          result.isCalculated = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isOneAndOnlyOne':
          result.isOneAndOnlyOne = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$NxTreeDimensionInfo extends NxTreeDimensionInfo {
  @override
  final String fallbackTitle;
  @override
  final int apprMaxGlyphCount;
  @override
  final int cardinal;
  @override
  final bool locked;
  @override
  final String sortIndicator;
  @override
  final BuiltList<NxCell> groupFallbackTitles;
  @override
  final int groupPos;
  @override
  final NxStateCounts stateCounts;
  @override
  final BuiltList<NxCell> tags;
  @override
  final NxValidationError error;
  @override
  final String dimensionType;
  @override
  final bool reverseSort;
  @override
  final String grouping;
  @override
  final bool isSemantic;
  @override
  final FieldAttributes numFormat;
  @override
  final bool isAutoFormat;
  @override
  final BuiltList<NxCell> groupFieldDefs;
  @override
  final num min;
  @override
  final num max;
  @override
  final bool continuousAxes;
  @override
  final bool isCyclic;
  @override
  final bool derivedField;
  @override
  final BuiltList<NxCell> measureInfo;
  @override
  final BuiltList<NxCell> attrExprInfo;
  @override
  final BuiltList<NxCell> attrDimInfo;
  @override
  final String calcCondMsg;
  @override
  final bool isCalculated;
  @override
  final bool isOneAndOnlyOne;

  factory _$NxTreeDimensionInfo([void updates(NxTreeDimensionInfoBuilder b)]) =>
      (new NxTreeDimensionInfoBuilder()..update(updates)).build();

  _$NxTreeDimensionInfo._(
      {this.fallbackTitle,
      this.apprMaxGlyphCount,
      this.cardinal,
      this.locked,
      this.sortIndicator,
      this.groupFallbackTitles,
      this.groupPos,
      this.stateCounts,
      this.tags,
      this.error,
      this.dimensionType,
      this.reverseSort,
      this.grouping,
      this.isSemantic,
      this.numFormat,
      this.isAutoFormat,
      this.groupFieldDefs,
      this.min,
      this.max,
      this.continuousAxes,
      this.isCyclic,
      this.derivedField,
      this.measureInfo,
      this.attrExprInfo,
      this.attrDimInfo,
      this.calcCondMsg,
      this.isCalculated,
      this.isOneAndOnlyOne})
      : super._();

  @override
  NxTreeDimensionInfo rebuild(void updates(NxTreeDimensionInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxTreeDimensionInfoBuilder toBuilder() =>
      new NxTreeDimensionInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxTreeDimensionInfo) return false;
    return fallbackTitle == other.fallbackTitle &&
        apprMaxGlyphCount == other.apprMaxGlyphCount &&
        cardinal == other.cardinal &&
        locked == other.locked &&
        sortIndicator == other.sortIndicator &&
        groupFallbackTitles == other.groupFallbackTitles &&
        groupPos == other.groupPos &&
        stateCounts == other.stateCounts &&
        tags == other.tags &&
        error == other.error &&
        dimensionType == other.dimensionType &&
        reverseSort == other.reverseSort &&
        grouping == other.grouping &&
        isSemantic == other.isSemantic &&
        numFormat == other.numFormat &&
        isAutoFormat == other.isAutoFormat &&
        groupFieldDefs == other.groupFieldDefs &&
        min == other.min &&
        max == other.max &&
        continuousAxes == other.continuousAxes &&
        isCyclic == other.isCyclic &&
        derivedField == other.derivedField &&
        measureInfo == other.measureInfo &&
        attrExprInfo == other.attrExprInfo &&
        attrDimInfo == other.attrDimInfo &&
        calcCondMsg == other.calcCondMsg &&
        isCalculated == other.isCalculated &&
        isOneAndOnlyOne == other.isOneAndOnlyOne;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, fallbackTitle.hashCode), apprMaxGlyphCount.hashCode), cardinal.hashCode), locked.hashCode), sortIndicator.hashCode), groupFallbackTitles.hashCode), groupPos.hashCode), stateCounts.hashCode), tags.hashCode),
                                                                                error.hashCode),
                                                                            dimensionType.hashCode),
                                                                        reverseSort.hashCode),
                                                                    grouping.hashCode),
                                                                isSemantic.hashCode),
                                                            numFormat.hashCode),
                                                        isAutoFormat.hashCode),
                                                    groupFieldDefs.hashCode),
                                                min.hashCode),
                                            max.hashCode),
                                        continuousAxes.hashCode),
                                    isCyclic.hashCode),
                                derivedField.hashCode),
                            measureInfo.hashCode),
                        attrExprInfo.hashCode),
                    attrDimInfo.hashCode),
                calcCondMsg.hashCode),
            isCalculated.hashCode),
        isOneAndOnlyOne.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxTreeDimensionInfo')
          ..add('fallbackTitle', fallbackTitle)
          ..add('apprMaxGlyphCount', apprMaxGlyphCount)
          ..add('cardinal', cardinal)
          ..add('locked', locked)
          ..add('sortIndicator', sortIndicator)
          ..add('groupFallbackTitles', groupFallbackTitles)
          ..add('groupPos', groupPos)
          ..add('stateCounts', stateCounts)
          ..add('tags', tags)
          ..add('error', error)
          ..add('dimensionType', dimensionType)
          ..add('reverseSort', reverseSort)
          ..add('grouping', grouping)
          ..add('isSemantic', isSemantic)
          ..add('numFormat', numFormat)
          ..add('isAutoFormat', isAutoFormat)
          ..add('groupFieldDefs', groupFieldDefs)
          ..add('min', min)
          ..add('max', max)
          ..add('continuousAxes', continuousAxes)
          ..add('isCyclic', isCyclic)
          ..add('derivedField', derivedField)
          ..add('measureInfo', measureInfo)
          ..add('attrExprInfo', attrExprInfo)
          ..add('attrDimInfo', attrDimInfo)
          ..add('calcCondMsg', calcCondMsg)
          ..add('isCalculated', isCalculated)
          ..add('isOneAndOnlyOne', isOneAndOnlyOne))
        .toString();
  }
}

class NxTreeDimensionInfoBuilder
    implements Builder<NxTreeDimensionInfo, NxTreeDimensionInfoBuilder> {
  _$NxTreeDimensionInfo _$v;

  String _fallbackTitle;
  String get fallbackTitle => _$this._fallbackTitle;
  set fallbackTitle(String fallbackTitle) =>
      _$this._fallbackTitle = fallbackTitle;

  int _apprMaxGlyphCount;
  int get apprMaxGlyphCount => _$this._apprMaxGlyphCount;
  set apprMaxGlyphCount(int apprMaxGlyphCount) =>
      _$this._apprMaxGlyphCount = apprMaxGlyphCount;

  int _cardinal;
  int get cardinal => _$this._cardinal;
  set cardinal(int cardinal) => _$this._cardinal = cardinal;

  bool _locked;
  bool get locked => _$this._locked;
  set locked(bool locked) => _$this._locked = locked;

  String _sortIndicator;
  String get sortIndicator => _$this._sortIndicator;
  set sortIndicator(String sortIndicator) =>
      _$this._sortIndicator = sortIndicator;

  ListBuilder<NxCell> _groupFallbackTitles;
  ListBuilder<NxCell> get groupFallbackTitles =>
      _$this._groupFallbackTitles ??= new ListBuilder<NxCell>();
  set groupFallbackTitles(ListBuilder<NxCell> groupFallbackTitles) =>
      _$this._groupFallbackTitles = groupFallbackTitles;

  int _groupPos;
  int get groupPos => _$this._groupPos;
  set groupPos(int groupPos) => _$this._groupPos = groupPos;

  NxStateCountsBuilder _stateCounts;
  NxStateCountsBuilder get stateCounts =>
      _$this._stateCounts ??= new NxStateCountsBuilder();
  set stateCounts(NxStateCountsBuilder stateCounts) =>
      _$this._stateCounts = stateCounts;

  ListBuilder<NxCell> _tags;
  ListBuilder<NxCell> get tags => _$this._tags ??= new ListBuilder<NxCell>();
  set tags(ListBuilder<NxCell> tags) => _$this._tags = tags;

  NxValidationErrorBuilder _error;
  NxValidationErrorBuilder get error =>
      _$this._error ??= new NxValidationErrorBuilder();
  set error(NxValidationErrorBuilder error) => _$this._error = error;

  String _dimensionType;
  String get dimensionType => _$this._dimensionType;
  set dimensionType(String dimensionType) =>
      _$this._dimensionType = dimensionType;

  bool _reverseSort;
  bool get reverseSort => _$this._reverseSort;
  set reverseSort(bool reverseSort) => _$this._reverseSort = reverseSort;

  String _grouping;
  String get grouping => _$this._grouping;
  set grouping(String grouping) => _$this._grouping = grouping;

  bool _isSemantic;
  bool get isSemantic => _$this._isSemantic;
  set isSemantic(bool isSemantic) => _$this._isSemantic = isSemantic;

  FieldAttributesBuilder _numFormat;
  FieldAttributesBuilder get numFormat =>
      _$this._numFormat ??= new FieldAttributesBuilder();
  set numFormat(FieldAttributesBuilder numFormat) =>
      _$this._numFormat = numFormat;

  bool _isAutoFormat;
  bool get isAutoFormat => _$this._isAutoFormat;
  set isAutoFormat(bool isAutoFormat) => _$this._isAutoFormat = isAutoFormat;

  ListBuilder<NxCell> _groupFieldDefs;
  ListBuilder<NxCell> get groupFieldDefs =>
      _$this._groupFieldDefs ??= new ListBuilder<NxCell>();
  set groupFieldDefs(ListBuilder<NxCell> groupFieldDefs) =>
      _$this._groupFieldDefs = groupFieldDefs;

  num _min;
  num get min => _$this._min;
  set min(num min) => _$this._min = min;

  num _max;
  num get max => _$this._max;
  set max(num max) => _$this._max = max;

  bool _continuousAxes;
  bool get continuousAxes => _$this._continuousAxes;
  set continuousAxes(bool continuousAxes) =>
      _$this._continuousAxes = continuousAxes;

  bool _isCyclic;
  bool get isCyclic => _$this._isCyclic;
  set isCyclic(bool isCyclic) => _$this._isCyclic = isCyclic;

  bool _derivedField;
  bool get derivedField => _$this._derivedField;
  set derivedField(bool derivedField) => _$this._derivedField = derivedField;

  ListBuilder<NxCell> _measureInfo;
  ListBuilder<NxCell> get measureInfo =>
      _$this._measureInfo ??= new ListBuilder<NxCell>();
  set measureInfo(ListBuilder<NxCell> measureInfo) =>
      _$this._measureInfo = measureInfo;

  ListBuilder<NxCell> _attrExprInfo;
  ListBuilder<NxCell> get attrExprInfo =>
      _$this._attrExprInfo ??= new ListBuilder<NxCell>();
  set attrExprInfo(ListBuilder<NxCell> attrExprInfo) =>
      _$this._attrExprInfo = attrExprInfo;

  ListBuilder<NxCell> _attrDimInfo;
  ListBuilder<NxCell> get attrDimInfo =>
      _$this._attrDimInfo ??= new ListBuilder<NxCell>();
  set attrDimInfo(ListBuilder<NxCell> attrDimInfo) =>
      _$this._attrDimInfo = attrDimInfo;

  String _calcCondMsg;
  String get calcCondMsg => _$this._calcCondMsg;
  set calcCondMsg(String calcCondMsg) => _$this._calcCondMsg = calcCondMsg;

  bool _isCalculated;
  bool get isCalculated => _$this._isCalculated;
  set isCalculated(bool isCalculated) => _$this._isCalculated = isCalculated;

  bool _isOneAndOnlyOne;
  bool get isOneAndOnlyOne => _$this._isOneAndOnlyOne;
  set isOneAndOnlyOne(bool isOneAndOnlyOne) =>
      _$this._isOneAndOnlyOne = isOneAndOnlyOne;

  NxTreeDimensionInfoBuilder();

  NxTreeDimensionInfoBuilder get _$this {
    if (_$v != null) {
      _fallbackTitle = _$v.fallbackTitle;
      _apprMaxGlyphCount = _$v.apprMaxGlyphCount;
      _cardinal = _$v.cardinal;
      _locked = _$v.locked;
      _sortIndicator = _$v.sortIndicator;
      _groupFallbackTitles = _$v.groupFallbackTitles?.toBuilder();
      _groupPos = _$v.groupPos;
      _stateCounts = _$v.stateCounts?.toBuilder();
      _tags = _$v.tags?.toBuilder();
      _error = _$v.error?.toBuilder();
      _dimensionType = _$v.dimensionType;
      _reverseSort = _$v.reverseSort;
      _grouping = _$v.grouping;
      _isSemantic = _$v.isSemantic;
      _numFormat = _$v.numFormat?.toBuilder();
      _isAutoFormat = _$v.isAutoFormat;
      _groupFieldDefs = _$v.groupFieldDefs?.toBuilder();
      _min = _$v.min;
      _max = _$v.max;
      _continuousAxes = _$v.continuousAxes;
      _isCyclic = _$v.isCyclic;
      _derivedField = _$v.derivedField;
      _measureInfo = _$v.measureInfo?.toBuilder();
      _attrExprInfo = _$v.attrExprInfo?.toBuilder();
      _attrDimInfo = _$v.attrDimInfo?.toBuilder();
      _calcCondMsg = _$v.calcCondMsg;
      _isCalculated = _$v.isCalculated;
      _isOneAndOnlyOne = _$v.isOneAndOnlyOne;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxTreeDimensionInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxTreeDimensionInfo;
  }

  @override
  void update(void updates(NxTreeDimensionInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxTreeDimensionInfo build() {
    _$NxTreeDimensionInfo _$result;
    try {
      _$result = _$v ??
          new _$NxTreeDimensionInfo._(
              fallbackTitle: fallbackTitle,
              apprMaxGlyphCount: apprMaxGlyphCount,
              cardinal: cardinal,
              locked: locked,
              sortIndicator: sortIndicator,
              groupFallbackTitles: _groupFallbackTitles?.build(),
              groupPos: groupPos,
              stateCounts: _stateCounts?.build(),
              tags: _tags?.build(),
              error: _error?.build(),
              dimensionType: dimensionType,
              reverseSort: reverseSort,
              grouping: grouping,
              isSemantic: isSemantic,
              numFormat: _numFormat?.build(),
              isAutoFormat: isAutoFormat,
              groupFieldDefs: _groupFieldDefs?.build(),
              min: min,
              max: max,
              continuousAxes: continuousAxes,
              isCyclic: isCyclic,
              derivedField: derivedField,
              measureInfo: _measureInfo?.build(),
              attrExprInfo: _attrExprInfo?.build(),
              attrDimInfo: _attrDimInfo?.build(),
              calcCondMsg: calcCondMsg,
              isCalculated: isCalculated,
              isOneAndOnlyOne: isOneAndOnlyOne);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'groupFallbackTitles';
        _groupFallbackTitles?.build();

        _$failedField = 'stateCounts';
        _stateCounts?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'error';
        _error?.build();

        _$failedField = 'numFormat';
        _numFormat?.build();

        _$failedField = 'groupFieldDefs';
        _groupFieldDefs?.build();

        _$failedField = 'measureInfo';
        _measureInfo?.build();
        _$failedField = 'attrExprInfo';
        _attrExprInfo?.build();
        _$failedField = 'attrDimInfo';
        _attrDimInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxTreeDimensionInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
