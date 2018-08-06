// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_dimension;

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

Serializer<NxDimension> _$nxDimensionSerializer = new _$NxDimensionSerializer();

class _$NxDimensionSerializer implements StructuredSerializer<NxDimension> {
  @override
  final Iterable<Type> types = const [NxDimension, _$NxDimension];
  @override
  final String wireName = 'NxDimension';

  @override
  Iterable serialize(Serializers serializers, NxDimension object,
      {FullType specifiedType = FullType.unspecified}) {
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
    if (object.nullSuppression != null) {
      result
        ..add('qNullSuppression')
        ..add(serializers.serialize(object.nullSuppression,
            specifiedType: const FullType(bool)));
    }
    if (object.includeElemValue != null) {
      result
        ..add('qIncludeElemValue')
        ..add(serializers.serialize(object.includeElemValue,
            specifiedType: const FullType(bool)));
    }
    if (object.otherTotalSpec != null) {
      result
        ..add('qOtherTotalSpec')
        ..add(serializers.serialize(object.otherTotalSpec,
            specifiedType: const FullType(OtherTotalSpecProp)));
    }
    if (object.showTotal != null) {
      result
        ..add('qShowTotal')
        ..add(serializers.serialize(object.showTotal,
            specifiedType: const FullType(bool)));
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
    if (object.calcCond != null) {
      result
        ..add('qCalcCond')
        ..add(serializers.serialize(object.calcCond,
            specifiedType: const FullType(ValueExpr)));
    }
    if (object.attributeExpressions != null) {
      result
        ..add('qAttributeExpressions')
        ..add(serializers.serialize(object.attributeExpressions,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxAttrExprDef)])));
    }
    if (object.attributeDimensions != null) {
      result
        ..add('qAttributeDimensions')
        ..add(serializers.serialize(object.attributeDimensions,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxAttrDimDef)])));
    }
    if (object.calcCondition != null) {
      result
        ..add('qCalcCondition')
        ..add(serializers.serialize(object.calcCondition,
            specifiedType: const FullType(NxCalcCond)));
    }

    return result;
  }

  @override
  NxDimension deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxDimensionBuilder();

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
        case 'qNullSuppression':
          result.nullSuppression = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qIncludeElemValue':
          result.includeElemValue = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qOtherTotalSpec':
          result.otherTotalSpec.replace(serializers.deserialize(value,
                  specifiedType: const FullType(OtherTotalSpecProp))
              as OtherTotalSpecProp);
          break;
        case 'qShowTotal':
          result.showTotal = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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
        case 'qCalcCond':
          result.calcCond.replace(serializers.deserialize(value,
              specifiedType: const FullType(ValueExpr)) as ValueExpr);
          break;
        case 'qAttributeExpressions':
          result.attributeExpressions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxAttrExprDef)]))
              as BuiltList);
          break;
        case 'qAttributeDimensions':
          result.attributeDimensions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxAttrDimDef)]))
              as BuiltList);
          break;
        case 'qCalcCondition':
          result.calcCondition.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxCalcCond)) as NxCalcCond);
          break;
      }
    }

    return result.build();
  }
}

class _$NxDimension extends NxDimension {
  @override
  final String libraryId;
  @override
  final NxInlineDimensionDef def;
  @override
  final bool nullSuppression;
  @override
  final bool includeElemValue;
  @override
  final OtherTotalSpecProp otherTotalSpec;
  @override
  final bool showTotal;
  @override
  final bool showAll;
  @override
  final StringExpr otherLabel;
  @override
  final StringExpr totalLabel;
  @override
  final ValueExpr calcCond;
  @override
  final BuiltList<NxAttrExprDef> attributeExpressions;
  @override
  final BuiltList<NxAttrDimDef> attributeDimensions;
  @override
  final NxCalcCond calcCondition;

  factory _$NxDimension([void updates(NxDimensionBuilder b)]) =>
      (new NxDimensionBuilder()..update(updates)).build();

  _$NxDimension._(
      {this.libraryId,
      this.def,
      this.nullSuppression,
      this.includeElemValue,
      this.otherTotalSpec,
      this.showTotal,
      this.showAll,
      this.otherLabel,
      this.totalLabel,
      this.calcCond,
      this.attributeExpressions,
      this.attributeDimensions,
      this.calcCondition})
      : super._();

  @override
  NxDimension rebuild(void updates(NxDimensionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxDimensionBuilder toBuilder() => new NxDimensionBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxDimension) return false;
    return libraryId == other.libraryId &&
        def == other.def &&
        nullSuppression == other.nullSuppression &&
        includeElemValue == other.includeElemValue &&
        otherTotalSpec == other.otherTotalSpec &&
        showTotal == other.showTotal &&
        showAll == other.showAll &&
        otherLabel == other.otherLabel &&
        totalLabel == other.totalLabel &&
        calcCond == other.calcCond &&
        attributeExpressions == other.attributeExpressions &&
        attributeDimensions == other.attributeDimensions &&
        calcCondition == other.calcCondition;
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
                                                $jc($jc(0, libraryId.hashCode),
                                                    def.hashCode),
                                                nullSuppression.hashCode),
                                            includeElemValue.hashCode),
                                        otherTotalSpec.hashCode),
                                    showTotal.hashCode),
                                showAll.hashCode),
                            otherLabel.hashCode),
                        totalLabel.hashCode),
                    calcCond.hashCode),
                attributeExpressions.hashCode),
            attributeDimensions.hashCode),
        calcCondition.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxDimension')
          ..add('libraryId', libraryId)
          ..add('def', def)
          ..add('nullSuppression', nullSuppression)
          ..add('includeElemValue', includeElemValue)
          ..add('otherTotalSpec', otherTotalSpec)
          ..add('showTotal', showTotal)
          ..add('showAll', showAll)
          ..add('otherLabel', otherLabel)
          ..add('totalLabel', totalLabel)
          ..add('calcCond', calcCond)
          ..add('attributeExpressions', attributeExpressions)
          ..add('attributeDimensions', attributeDimensions)
          ..add('calcCondition', calcCondition))
        .toString();
  }
}

class NxDimensionBuilder implements Builder<NxDimension, NxDimensionBuilder> {
  _$NxDimension _$v;

  String _libraryId;
  String get libraryId => _$this._libraryId;
  set libraryId(String libraryId) => _$this._libraryId = libraryId;

  NxInlineDimensionDefBuilder _def;
  NxInlineDimensionDefBuilder get def =>
      _$this._def ??= new NxInlineDimensionDefBuilder();
  set def(NxInlineDimensionDefBuilder def) => _$this._def = def;

  bool _nullSuppression;
  bool get nullSuppression => _$this._nullSuppression;
  set nullSuppression(bool nullSuppression) =>
      _$this._nullSuppression = nullSuppression;

  bool _includeElemValue;
  bool get includeElemValue => _$this._includeElemValue;
  set includeElemValue(bool includeElemValue) =>
      _$this._includeElemValue = includeElemValue;

  OtherTotalSpecPropBuilder _otherTotalSpec;
  OtherTotalSpecPropBuilder get otherTotalSpec =>
      _$this._otherTotalSpec ??= new OtherTotalSpecPropBuilder();
  set otherTotalSpec(OtherTotalSpecPropBuilder otherTotalSpec) =>
      _$this._otherTotalSpec = otherTotalSpec;

  bool _showTotal;
  bool get showTotal => _$this._showTotal;
  set showTotal(bool showTotal) => _$this._showTotal = showTotal;

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

  ValueExprBuilder _calcCond;
  ValueExprBuilder get calcCond => _$this._calcCond ??= new ValueExprBuilder();
  set calcCond(ValueExprBuilder calcCond) => _$this._calcCond = calcCond;

  ListBuilder<NxAttrExprDef> _attributeExpressions;
  ListBuilder<NxAttrExprDef> get attributeExpressions =>
      _$this._attributeExpressions ??= new ListBuilder<NxAttrExprDef>();
  set attributeExpressions(ListBuilder<NxAttrExprDef> attributeExpressions) =>
      _$this._attributeExpressions = attributeExpressions;

  ListBuilder<NxAttrDimDef> _attributeDimensions;
  ListBuilder<NxAttrDimDef> get attributeDimensions =>
      _$this._attributeDimensions ??= new ListBuilder<NxAttrDimDef>();
  set attributeDimensions(ListBuilder<NxAttrDimDef> attributeDimensions) =>
      _$this._attributeDimensions = attributeDimensions;

  NxCalcCondBuilder _calcCondition;
  NxCalcCondBuilder get calcCondition =>
      _$this._calcCondition ??= new NxCalcCondBuilder();
  set calcCondition(NxCalcCondBuilder calcCondition) =>
      _$this._calcCondition = calcCondition;

  NxDimensionBuilder();

  NxDimensionBuilder get _$this {
    if (_$v != null) {
      _libraryId = _$v.libraryId;
      _def = _$v.def?.toBuilder();
      _nullSuppression = _$v.nullSuppression;
      _includeElemValue = _$v.includeElemValue;
      _otherTotalSpec = _$v.otherTotalSpec?.toBuilder();
      _showTotal = _$v.showTotal;
      _showAll = _$v.showAll;
      _otherLabel = _$v.otherLabel?.toBuilder();
      _totalLabel = _$v.totalLabel?.toBuilder();
      _calcCond = _$v.calcCond?.toBuilder();
      _attributeExpressions = _$v.attributeExpressions?.toBuilder();
      _attributeDimensions = _$v.attributeDimensions?.toBuilder();
      _calcCondition = _$v.calcCondition?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxDimension other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxDimension;
  }

  @override
  void update(void updates(NxDimensionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxDimension build() {
    _$NxDimension _$result;
    try {
      _$result = _$v ??
          new _$NxDimension._(
              libraryId: libraryId,
              def: _def?.build(),
              nullSuppression: nullSuppression,
              includeElemValue: includeElemValue,
              otherTotalSpec: _otherTotalSpec?.build(),
              showTotal: showTotal,
              showAll: showAll,
              otherLabel: _otherLabel?.build(),
              totalLabel: _totalLabel?.build(),
              calcCond: _calcCond?.build(),
              attributeExpressions: _attributeExpressions?.build(),
              attributeDimensions: _attributeDimensions?.build(),
              calcCondition: _calcCondition?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'def';
        _def?.build();

        _$failedField = 'otherTotalSpec';
        _otherTotalSpec?.build();

        _$failedField = 'otherLabel';
        _otherLabel?.build();
        _$failedField = 'totalLabel';
        _totalLabel?.build();
        _$failedField = 'calcCond';
        _calcCond?.build();
        _$failedField = 'attributeExpressions';
        _attributeExpressions?.build();
        _$failedField = 'attributeDimensions';
        _attributeDimensions?.build();
        _$failedField = 'calcCondition';
        _calcCondition?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxDimension', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
