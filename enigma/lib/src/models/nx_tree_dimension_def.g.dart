// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_tree_dimension_def;

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

Serializer<NxTreeDimensionDef> _$nxTreeDimensionDefSerializer =
    new _$NxTreeDimensionDefSerializer();

class _$NxTreeDimensionDefSerializer
    implements StructuredSerializer<NxTreeDimensionDef> {
  @override
  final Iterable<Type> types = const [NxTreeDimensionDef, _$NxTreeDimensionDef];
  @override
  final String wireName = 'NxTreeDimensionDef';

  @override
  Iterable serialize(Serializers serializers, NxTreeDimensionDef object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.libraryId != null) {
      result
        ..add('qLibraryId')
        ..add(serializers.serialize(object.libraryId,
            specifiedType: const FullType(String)));
    }
    if (object.def != null) {
      result
        ..add('qDef')
        ..add(serializers.serialize(object.def,
            specifiedType: const FullType(NxInlineDimensionDef)));
    }
    if (object.valueExprs != null) {
      result
        ..add('qValueExprs')
        ..add(serializers.serialize(object.valueExprs,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.nullSuppression != null) {
      result
        ..add('qNullSuppression')
        ..add(serializers.serialize(object.nullSuppression,
            specifiedType: const FullType(bool)));
    }
    if (object.otherTotalSpec != null) {
      result
        ..add('qOtherTotalSpec')
        ..add(serializers.serialize(object.otherTotalSpec,
            specifiedType: const FullType(OtherTotalSpecProp)));
    }
    if (object.showAll != null) {
      result
        ..add('qShowAll')
        ..add(serializers.serialize(object.showAll,
            specifiedType: const FullType(bool)));
    }
    if (object.otherLabel != null) {
      result
        ..add('qOtherLabel')
        ..add(serializers.serialize(object.otherLabel,
            specifiedType: const FullType(StringExpr)));
    }
    if (object.totalLabel != null) {
      result
        ..add('qTotalLabel')
        ..add(serializers.serialize(object.totalLabel,
            specifiedType: const FullType(StringExpr)));
    }
    if (object.calcCondition != null) {
      result
        ..add('qCalcCondition')
        ..add(serializers.serialize(object.calcCondition,
            specifiedType: const FullType(NxCalcCond)));
    }
    if (object.attributeExpressions != null) {
      result
        ..add('qAttributeExpressions')
        ..add(serializers.serialize(object.attributeExpressions,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.attributeDimensions != null) {
      result
        ..add('qAttributeDimensions')
        ..add(serializers.serialize(object.attributeDimensions,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  NxTreeDimensionDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxTreeDimensionDefBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qLibraryId':
          result.libraryId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qDef':
          result.def.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxInlineDimensionDef))
              as NxInlineDimensionDef);
          break;
        case 'qValueExprs':
          result.valueExprs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qNullSuppression':
          result.nullSuppression = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qOtherTotalSpec':
          result.otherTotalSpec.replace(serializers.deserialize(value,
                  specifiedType: const FullType(OtherTotalSpecProp))
              as OtherTotalSpecProp);
          break;
        case 'qShowAll':
          result.showAll = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qOtherLabel':
          result.otherLabel.replace(serializers.deserialize(value,
              specifiedType: const FullType(StringExpr)) as StringExpr);
          break;
        case 'qTotalLabel':
          result.totalLabel.replace(serializers.deserialize(value,
              specifiedType: const FullType(StringExpr)) as StringExpr);
          break;
        case 'qCalcCondition':
          result.calcCondition.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxCalcCond)) as NxCalcCond);
          break;
        case 'qAttributeExpressions':
          result.attributeExpressions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qAttributeDimensions':
          result.attributeDimensions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$NxTreeDimensionDef extends NxTreeDimensionDef {
  @override
  final String libraryId;
  @override
  final NxInlineDimensionDef def;
  @override
  final BuiltList<NxCell> valueExprs;
  @override
  final bool nullSuppression;
  @override
  final OtherTotalSpecProp otherTotalSpec;
  @override
  final bool showAll;
  @override
  final StringExpr otherLabel;
  @override
  final StringExpr totalLabel;
  @override
  final NxCalcCond calcCondition;
  @override
  final BuiltList<NxCell> attributeExpressions;
  @override
  final BuiltList<NxCell> attributeDimensions;

  factory _$NxTreeDimensionDef([void updates(NxTreeDimensionDefBuilder b)]) =>
      (new NxTreeDimensionDefBuilder()..update(updates)).build();

  _$NxTreeDimensionDef._(
      {this.libraryId,
      this.def,
      this.valueExprs,
      this.nullSuppression,
      this.otherTotalSpec,
      this.showAll,
      this.otherLabel,
      this.totalLabel,
      this.calcCondition,
      this.attributeExpressions,
      this.attributeDimensions})
      : super._();

  @override
  NxTreeDimensionDef rebuild(void updates(NxTreeDimensionDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxTreeDimensionDefBuilder toBuilder() =>
      new NxTreeDimensionDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxTreeDimensionDef) return false;
    return libraryId == other.libraryId &&
        def == other.def &&
        valueExprs == other.valueExprs &&
        nullSuppression == other.nullSuppression &&
        otherTotalSpec == other.otherTotalSpec &&
        showAll == other.showAll &&
        otherLabel == other.otherLabel &&
        totalLabel == other.totalLabel &&
        calcCondition == other.calcCondition &&
        attributeExpressions == other.attributeExpressions &&
        attributeDimensions == other.attributeDimensions;
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
                                        $jc($jc(0, libraryId.hashCode),
                                            def.hashCode),
                                        valueExprs.hashCode),
                                    nullSuppression.hashCode),
                                otherTotalSpec.hashCode),
                            showAll.hashCode),
                        otherLabel.hashCode),
                    totalLabel.hashCode),
                calcCondition.hashCode),
            attributeExpressions.hashCode),
        attributeDimensions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxTreeDimensionDef')
          ..add('libraryId', libraryId)
          ..add('def', def)
          ..add('valueExprs', valueExprs)
          ..add('nullSuppression', nullSuppression)
          ..add('otherTotalSpec', otherTotalSpec)
          ..add('showAll', showAll)
          ..add('otherLabel', otherLabel)
          ..add('totalLabel', totalLabel)
          ..add('calcCondition', calcCondition)
          ..add('attributeExpressions', attributeExpressions)
          ..add('attributeDimensions', attributeDimensions))
        .toString();
  }
}

class NxTreeDimensionDefBuilder
    implements Builder<NxTreeDimensionDef, NxTreeDimensionDefBuilder> {
  _$NxTreeDimensionDef _$v;

  String _libraryId;
  String get libraryId => _$this._libraryId;
  set libraryId(String libraryId) => _$this._libraryId = libraryId;

  NxInlineDimensionDefBuilder _def;
  NxInlineDimensionDefBuilder get def =>
      _$this._def ??= new NxInlineDimensionDefBuilder();
  set def(NxInlineDimensionDefBuilder def) => _$this._def = def;

  ListBuilder<NxCell> _valueExprs;
  ListBuilder<NxCell> get valueExprs =>
      _$this._valueExprs ??= new ListBuilder<NxCell>();
  set valueExprs(ListBuilder<NxCell> valueExprs) =>
      _$this._valueExprs = valueExprs;

  bool _nullSuppression;
  bool get nullSuppression => _$this._nullSuppression;
  set nullSuppression(bool nullSuppression) =>
      _$this._nullSuppression = nullSuppression;

  OtherTotalSpecPropBuilder _otherTotalSpec;
  OtherTotalSpecPropBuilder get otherTotalSpec =>
      _$this._otherTotalSpec ??= new OtherTotalSpecPropBuilder();
  set otherTotalSpec(OtherTotalSpecPropBuilder otherTotalSpec) =>
      _$this._otherTotalSpec = otherTotalSpec;

  bool _showAll;
  bool get showAll => _$this._showAll;
  set showAll(bool showAll) => _$this._showAll = showAll;

  StringExprBuilder _otherLabel;
  StringExprBuilder get otherLabel =>
      _$this._otherLabel ??= new StringExprBuilder();
  set otherLabel(StringExprBuilder otherLabel) =>
      _$this._otherLabel = otherLabel;

  StringExprBuilder _totalLabel;
  StringExprBuilder get totalLabel =>
      _$this._totalLabel ??= new StringExprBuilder();
  set totalLabel(StringExprBuilder totalLabel) =>
      _$this._totalLabel = totalLabel;

  NxCalcCondBuilder _calcCondition;
  NxCalcCondBuilder get calcCondition =>
      _$this._calcCondition ??= new NxCalcCondBuilder();
  set calcCondition(NxCalcCondBuilder calcCondition) =>
      _$this._calcCondition = calcCondition;

  ListBuilder<NxCell> _attributeExpressions;
  ListBuilder<NxCell> get attributeExpressions =>
      _$this._attributeExpressions ??= new ListBuilder<NxCell>();
  set attributeExpressions(ListBuilder<NxCell> attributeExpressions) =>
      _$this._attributeExpressions = attributeExpressions;

  ListBuilder<NxCell> _attributeDimensions;
  ListBuilder<NxCell> get attributeDimensions =>
      _$this._attributeDimensions ??= new ListBuilder<NxCell>();
  set attributeDimensions(ListBuilder<NxCell> attributeDimensions) =>
      _$this._attributeDimensions = attributeDimensions;

  NxTreeDimensionDefBuilder();

  NxTreeDimensionDefBuilder get _$this {
    if (_$v != null) {
      _libraryId = _$v.libraryId;
      _def = _$v.def?.toBuilder();
      _valueExprs = _$v.valueExprs?.toBuilder();
      _nullSuppression = _$v.nullSuppression;
      _otherTotalSpec = _$v.otherTotalSpec?.toBuilder();
      _showAll = _$v.showAll;
      _otherLabel = _$v.otherLabel?.toBuilder();
      _totalLabel = _$v.totalLabel?.toBuilder();
      _calcCondition = _$v.calcCondition?.toBuilder();
      _attributeExpressions = _$v.attributeExpressions?.toBuilder();
      _attributeDimensions = _$v.attributeDimensions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxTreeDimensionDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxTreeDimensionDef;
  }

  @override
  void update(void updates(NxTreeDimensionDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxTreeDimensionDef build() {
    _$NxTreeDimensionDef _$result;
    try {
      _$result = _$v ??
          new _$NxTreeDimensionDef._(
              libraryId: libraryId,
              def: _def?.build(),
              valueExprs: _valueExprs?.build(),
              nullSuppression: nullSuppression,
              otherTotalSpec: _otherTotalSpec?.build(),
              showAll: showAll,
              otherLabel: _otherLabel?.build(),
              totalLabel: _totalLabel?.build(),
              calcCondition: _calcCondition?.build(),
              attributeExpressions: _attributeExpressions?.build(),
              attributeDimensions: _attributeDimensions?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'def';
        _def?.build();
        _$failedField = 'valueExprs';
        _valueExprs?.build();

        _$failedField = 'otherTotalSpec';
        _otherTotalSpec?.build();

        _$failedField = 'otherLabel';
        _otherLabel?.build();
        _$failedField = 'totalLabel';
        _totalLabel?.build();
        _$failedField = 'calcCondition';
        _calcCondition?.build();
        _$failedField = 'attributeExpressions';
        _attributeExpressions?.build();
        _$failedField = 'attributeDimensions';
        _attributeDimensions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxTreeDimensionDef', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
