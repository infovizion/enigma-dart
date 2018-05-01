// GENERATED CODE - DO NOT MODIFY BY HAND

part of tree_data;

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

Serializer<TreeData> _$treeDataSerializer = new _$TreeDataSerializer();

class _$TreeDataSerializer implements StructuredSerializer<TreeData> {
  @override
  final Iterable<Type> types = const [TreeData, _$TreeData];
  @override
  final String wireName = 'TreeData';

  @override
  Iterable serialize(Serializers serializers, TreeData object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.stateName != null) {
      result
        ..add('qStateName')
        ..add(serializers.serialize(object.stateName,
            specifiedType: const FullType(String)));
    }
    if (object.nodesOnDim != null) {
      result
        ..add('qNodesOnDim')
        ..add(serializers.serialize(object.nodesOnDim,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
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
                BuiltList, const [const FullType(NxTreeDimensionInfo)])));
    }
    if (object.effectiveInterColumnSortOrder != null) {
      result
        ..add('qEffectiveInterColumnSortOrder')
        ..add(serializers.serialize(object.effectiveInterColumnSortOrder,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
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
    if (object.lastExpandedPos != null) {
      result
        ..add('qLastExpandedPos')
        ..add(serializers.serialize(object.lastExpandedPos,
            specifiedType: const FullType(NxCellPosition)));
    }
    if (object.calcCondMsg != null) {
      result
        ..add('qCalcCondMsg')
        ..add(serializers.serialize(object.calcCondMsg,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  TreeData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new TreeDataBuilder();

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
        case 'qNodesOnDim':
          result.nodesOnDim.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
        case 'qError':
          result.error.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxValidationError))
              as NxValidationError);
          break;
        case 'qDimensionInfo':
          result.dimensionInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxTreeDimensionInfo)]))
              as BuiltList);
          break;
        case 'qEffectiveInterColumnSortOrder':
          result.effectiveInterColumnSortOrder.replace(serializers.deserialize(
                  value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
        case 'qHasOtherValues':
          result.hasOtherValues = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qTitle':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qLastExpandedPos':
          result.lastExpandedPos.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxCellPosition)) as NxCellPosition);
          break;
        case 'qCalcCondMsg':
          result.calcCondMsg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TreeData extends TreeData {
  @override
  final String stateName;
  @override
  final BuiltList<int> nodesOnDim;
  @override
  final NxValidationError error;
  @override
  final BuiltList<NxTreeDimensionInfo> dimensionInfo;
  @override
  final BuiltList<int> effectiveInterColumnSortOrder;
  @override
  final bool hasOtherValues;
  @override
  final String title;
  @override
  final NxCellPosition lastExpandedPos;
  @override
  final String calcCondMsg;

  factory _$TreeData([void updates(TreeDataBuilder b)]) =>
      (new TreeDataBuilder()..update(updates)).build();

  _$TreeData._(
      {this.stateName,
      this.nodesOnDim,
      this.error,
      this.dimensionInfo,
      this.effectiveInterColumnSortOrder,
      this.hasOtherValues,
      this.title,
      this.lastExpandedPos,
      this.calcCondMsg})
      : super._();

  @override
  TreeData rebuild(void updates(TreeDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TreeDataBuilder toBuilder() => new TreeDataBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! TreeData) return false;
    return stateName == other.stateName &&
        nodesOnDim == other.nodesOnDim &&
        error == other.error &&
        dimensionInfo == other.dimensionInfo &&
        effectiveInterColumnSortOrder == other.effectiveInterColumnSortOrder &&
        hasOtherValues == other.hasOtherValues &&
        title == other.title &&
        lastExpandedPos == other.lastExpandedPos &&
        calcCondMsg == other.calcCondMsg;
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
                                $jc($jc(0, stateName.hashCode),
                                    nodesOnDim.hashCode),
                                error.hashCode),
                            dimensionInfo.hashCode),
                        effectiveInterColumnSortOrder.hashCode),
                    hasOtherValues.hashCode),
                title.hashCode),
            lastExpandedPos.hashCode),
        calcCondMsg.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TreeData')
          ..add('stateName', stateName)
          ..add('nodesOnDim', nodesOnDim)
          ..add('error', error)
          ..add('dimensionInfo', dimensionInfo)
          ..add('effectiveInterColumnSortOrder', effectiveInterColumnSortOrder)
          ..add('hasOtherValues', hasOtherValues)
          ..add('title', title)
          ..add('lastExpandedPos', lastExpandedPos)
          ..add('calcCondMsg', calcCondMsg))
        .toString();
  }
}

class TreeDataBuilder implements Builder<TreeData, TreeDataBuilder> {
  _$TreeData _$v;

  String _stateName;
  String get stateName => _$this._stateName;
  set stateName(String stateName) => _$this._stateName = stateName;

  ListBuilder<int> _nodesOnDim;
  ListBuilder<int> get nodesOnDim =>
      _$this._nodesOnDim ??= new ListBuilder<int>();
  set nodesOnDim(ListBuilder<int> nodesOnDim) =>
      _$this._nodesOnDim = nodesOnDim;

  NxValidationErrorBuilder _error;
  NxValidationErrorBuilder get error =>
      _$this._error ??= new NxValidationErrorBuilder();
  set error(NxValidationErrorBuilder error) => _$this._error = error;

  ListBuilder<NxTreeDimensionInfo> _dimensionInfo;
  ListBuilder<NxTreeDimensionInfo> get dimensionInfo =>
      _$this._dimensionInfo ??= new ListBuilder<NxTreeDimensionInfo>();
  set dimensionInfo(ListBuilder<NxTreeDimensionInfo> dimensionInfo) =>
      _$this._dimensionInfo = dimensionInfo;

  ListBuilder<int> _effectiveInterColumnSortOrder;
  ListBuilder<int> get effectiveInterColumnSortOrder =>
      _$this._effectiveInterColumnSortOrder ??= new ListBuilder<int>();
  set effectiveInterColumnSortOrder(
          ListBuilder<int> effectiveInterColumnSortOrder) =>
      _$this._effectiveInterColumnSortOrder = effectiveInterColumnSortOrder;

  bool _hasOtherValues;
  bool get hasOtherValues => _$this._hasOtherValues;
  set hasOtherValues(bool hasOtherValues) =>
      _$this._hasOtherValues = hasOtherValues;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  NxCellPositionBuilder _lastExpandedPos;
  NxCellPositionBuilder get lastExpandedPos =>
      _$this._lastExpandedPos ??= new NxCellPositionBuilder();
  set lastExpandedPos(NxCellPositionBuilder lastExpandedPos) =>
      _$this._lastExpandedPos = lastExpandedPos;

  String _calcCondMsg;
  String get calcCondMsg => _$this._calcCondMsg;
  set calcCondMsg(String calcCondMsg) => _$this._calcCondMsg = calcCondMsg;

  TreeDataBuilder();

  TreeDataBuilder get _$this {
    if (_$v != null) {
      _stateName = _$v.stateName;
      _nodesOnDim = _$v.nodesOnDim?.toBuilder();
      _error = _$v.error?.toBuilder();
      _dimensionInfo = _$v.dimensionInfo?.toBuilder();
      _effectiveInterColumnSortOrder =
          _$v.effectiveInterColumnSortOrder?.toBuilder();
      _hasOtherValues = _$v.hasOtherValues;
      _title = _$v.title;
      _lastExpandedPos = _$v.lastExpandedPos?.toBuilder();
      _calcCondMsg = _$v.calcCondMsg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TreeData other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$TreeData;
  }

  @override
  void update(void updates(TreeDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TreeData build() {
    _$TreeData _$result;
    try {
      _$result = _$v ??
          new _$TreeData._(
              stateName: stateName,
              nodesOnDim: _nodesOnDim?.build(),
              error: _error?.build(),
              dimensionInfo: _dimensionInfo?.build(),
              effectiveInterColumnSortOrder:
                  _effectiveInterColumnSortOrder?.build(),
              hasOtherValues: hasOtherValues,
              title: title,
              lastExpandedPos: _lastExpandedPos?.build(),
              calcCondMsg: calcCondMsg);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'nodesOnDim';
        _nodesOnDim?.build();
        _$failedField = 'error';
        _error?.build();
        _$failedField = 'dimensionInfo';
        _dimensionInfo?.build();
        _$failedField = 'effectiveInterColumnSortOrder';
        _effectiveInterColumnSortOrder?.build();

        _$failedField = 'lastExpandedPos';
        _lastExpandedPos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TreeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
