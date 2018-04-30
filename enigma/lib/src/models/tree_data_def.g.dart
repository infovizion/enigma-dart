// GENERATED CODE - DO NOT MODIFY BY HAND

part of tree_data_def;

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

Serializer<TreeDataDef> _$treeDataDefSerializer = new _$TreeDataDefSerializer();

class _$TreeDataDefSerializer implements StructuredSerializer<TreeDataDef> {
  @override
  final Iterable<Type> types = const [TreeDataDef, _$TreeDataDef];
  @override
  final String wireName = 'TreeDataDef';

  @override
  Iterable serialize(Serializers serializers, TreeDataDef object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.stateName != null) {
      result
        ..add('qStateName')
        ..add(serializers.serialize(object.stateName,
            specifiedType: const FullType(String)));
    }
    if (object.dimensions != null) {
      result
        ..add('qDimensions')
        ..add(serializers.serialize(object.dimensions,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.interColumnSortOrder != null) {
      result
        ..add('qInterColumnSortOrder')
        ..add(serializers.serialize(object.interColumnSortOrder,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.suppressZero != null) {
      result
        ..add('qSuppressZero')
        ..add(serializers.serialize(object.suppressZero,
            specifiedType: const FullType(bool)));
    }
    if (object.suppressMissing != null) {
      result
        ..add('qSuppressMissing')
        ..add(serializers.serialize(object.suppressMissing,
            specifiedType: const FullType(bool)));
    }
    if (object.openFullyExpanded != null) {
      result
        ..add('qOpenFullyExpanded')
        ..add(serializers.serialize(object.openFullyExpanded,
            specifiedType: const FullType(bool)));
    }
    if (object.populateMissing != null) {
      result
        ..add('qPopulateMissing')
        ..add(serializers.serialize(object.populateMissing,
            specifiedType: const FullType(bool)));
    }
    if (object.calcCondition != null) {
      result
        ..add('qCalcCondition')
        ..add(serializers.serialize(object.calcCondition,
            specifiedType: const FullType(NxCalcCond)));
    }
    if (object.title != null) {
      result
        ..add('qTitle')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(StringExpr)));
    }

    return result;
  }

  @override
  TreeDataDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new TreeDataDefBuilder();

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
        case 'qDimensions':
          result.dimensions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qInterColumnSortOrder':
          result.interColumnSortOrder.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qSuppressZero':
          result.suppressZero = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qSuppressMissing':
          result.suppressMissing = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qOpenFullyExpanded':
          result.openFullyExpanded = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qPopulateMissing':
          result.populateMissing = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qCalcCondition':
          result.calcCondition.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxCalcCond)) as NxCalcCond);
          break;
        case 'qTitle':
          result.title.replace(serializers.deserialize(value,
              specifiedType: const FullType(StringExpr)) as StringExpr);
          break;
      }
    }

    return result.build();
  }
}

class _$TreeDataDef extends TreeDataDef {
  @override
  final String stateName;
  @override
  final BuiltList<NxCell> dimensions;
  @override
  final BuiltList<NxCell> interColumnSortOrder;
  @override
  final bool suppressZero;
  @override
  final bool suppressMissing;
  @override
  final bool openFullyExpanded;
  @override
  final bool populateMissing;
  @override
  final NxCalcCond calcCondition;
  @override
  final StringExpr title;

  factory _$TreeDataDef([void updates(TreeDataDefBuilder b)]) =>
      (new TreeDataDefBuilder()..update(updates)).build();

  _$TreeDataDef._(
      {this.stateName,
      this.dimensions,
      this.interColumnSortOrder,
      this.suppressZero,
      this.suppressMissing,
      this.openFullyExpanded,
      this.populateMissing,
      this.calcCondition,
      this.title})
      : super._();

  @override
  TreeDataDef rebuild(void updates(TreeDataDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TreeDataDefBuilder toBuilder() => new TreeDataDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! TreeDataDef) return false;
    return stateName == other.stateName &&
        dimensions == other.dimensions &&
        interColumnSortOrder == other.interColumnSortOrder &&
        suppressZero == other.suppressZero &&
        suppressMissing == other.suppressMissing &&
        openFullyExpanded == other.openFullyExpanded &&
        populateMissing == other.populateMissing &&
        calcCondition == other.calcCondition &&
        title == other.title;
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
                                    dimensions.hashCode),
                                interColumnSortOrder.hashCode),
                            suppressZero.hashCode),
                        suppressMissing.hashCode),
                    openFullyExpanded.hashCode),
                populateMissing.hashCode),
            calcCondition.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TreeDataDef')
          ..add('stateName', stateName)
          ..add('dimensions', dimensions)
          ..add('interColumnSortOrder', interColumnSortOrder)
          ..add('suppressZero', suppressZero)
          ..add('suppressMissing', suppressMissing)
          ..add('openFullyExpanded', openFullyExpanded)
          ..add('populateMissing', populateMissing)
          ..add('calcCondition', calcCondition)
          ..add('title', title))
        .toString();
  }
}

class TreeDataDefBuilder implements Builder<TreeDataDef, TreeDataDefBuilder> {
  _$TreeDataDef _$v;

  String _stateName;
  String get stateName => _$this._stateName;
  set stateName(String stateName) => _$this._stateName = stateName;

  ListBuilder<NxCell> _dimensions;
  ListBuilder<NxCell> get dimensions =>
      _$this._dimensions ??= new ListBuilder<NxCell>();
  set dimensions(ListBuilder<NxCell> dimensions) =>
      _$this._dimensions = dimensions;

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

  bool _openFullyExpanded;
  bool get openFullyExpanded => _$this._openFullyExpanded;
  set openFullyExpanded(bool openFullyExpanded) =>
      _$this._openFullyExpanded = openFullyExpanded;

  bool _populateMissing;
  bool get populateMissing => _$this._populateMissing;
  set populateMissing(bool populateMissing) =>
      _$this._populateMissing = populateMissing;

  NxCalcCondBuilder _calcCondition;
  NxCalcCondBuilder get calcCondition =>
      _$this._calcCondition ??= new NxCalcCondBuilder();
  set calcCondition(NxCalcCondBuilder calcCondition) =>
      _$this._calcCondition = calcCondition;

  StringExprBuilder _title;
  StringExprBuilder get title => _$this._title ??= new StringExprBuilder();
  set title(StringExprBuilder title) => _$this._title = title;

  TreeDataDefBuilder();

  TreeDataDefBuilder get _$this {
    if (_$v != null) {
      _stateName = _$v.stateName;
      _dimensions = _$v.dimensions?.toBuilder();
      _interColumnSortOrder = _$v.interColumnSortOrder?.toBuilder();
      _suppressZero = _$v.suppressZero;
      _suppressMissing = _$v.suppressMissing;
      _openFullyExpanded = _$v.openFullyExpanded;
      _populateMissing = _$v.populateMissing;
      _calcCondition = _$v.calcCondition?.toBuilder();
      _title = _$v.title?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TreeDataDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$TreeDataDef;
  }

  @override
  void update(void updates(TreeDataDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TreeDataDef build() {
    _$TreeDataDef _$result;
    try {
      _$result = _$v ??
          new _$TreeDataDef._(
              stateName: stateName,
              dimensions: _dimensions?.build(),
              interColumnSortOrder: _interColumnSortOrder?.build(),
              suppressZero: suppressZero,
              suppressMissing: suppressMissing,
              openFullyExpanded: openFullyExpanded,
              populateMissing: populateMissing,
              calcCondition: _calcCondition?.build(),
              title: _title?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dimensions';
        _dimensions?.build();
        _$failedField = 'interColumnSortOrder';
        _interColumnSortOrder?.build();

        _$failedField = 'calcCondition';
        _calcCondition?.build();
        _$failedField = 'title';
        _title?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TreeDataDef', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
