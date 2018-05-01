// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_measure;

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

Serializer<NxMeasure> _$nxMeasureSerializer = new _$NxMeasureSerializer();

class _$NxMeasureSerializer implements StructuredSerializer<NxMeasure> {
  @override
  final Iterable<Type> types = const [NxMeasure, _$NxMeasure];
  @override
  final String wireName = 'NxMeasure';

  @override
  Iterable serialize(Serializers serializers, NxMeasure object,
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
            specifiedType: const FullType(NxInlineMeasureDef)));
    }
    if (object.sortBy != null) {
      result
        ..add('qSortBy')
        ..add(serializers.serialize(object.sortBy,
            specifiedType: const FullType(SortCriteria)));
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
    if (object.calcCond != null) {
      result
        ..add('qCalcCond')
        ..add(serializers.serialize(object.calcCond,
            specifiedType: const FullType(ValueExpr)));
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
  NxMeasure deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxMeasureBuilder();

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
                  specifiedType: const FullType(NxInlineMeasureDef))
              as NxInlineMeasureDef);
          break;
        case 'qSortBy':
          result.sortBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(SortCriteria)) as SortCriteria);
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
        case 'qCalcCond':
          result.calcCond.replace(serializers.deserialize(value,
              specifiedType: const FullType(ValueExpr)) as ValueExpr);
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

class _$NxMeasure extends NxMeasure {
  @override
  final String libraryId;
  @override
  final NxInlineMeasureDef def;
  @override
  final SortCriteria sortBy;
  @override
  final BuiltList<NxAttrExprDef> attributeExpressions;
  @override
  final BuiltList<NxAttrDimDef> attributeDimensions;
  @override
  final ValueExpr calcCond;
  @override
  final NxCalcCond calcCondition;

  factory _$NxMeasure([void updates(NxMeasureBuilder b)]) =>
      (new NxMeasureBuilder()..update(updates)).build();

  _$NxMeasure._(
      {this.libraryId,
      this.def,
      this.sortBy,
      this.attributeExpressions,
      this.attributeDimensions,
      this.calcCond,
      this.calcCondition})
      : super._();

  @override
  NxMeasure rebuild(void updates(NxMeasureBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxMeasureBuilder toBuilder() => new NxMeasureBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxMeasure) return false;
    return libraryId == other.libraryId &&
        def == other.def &&
        sortBy == other.sortBy &&
        attributeExpressions == other.attributeExpressions &&
        attributeDimensions == other.attributeDimensions &&
        calcCond == other.calcCond &&
        calcCondition == other.calcCondition;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, libraryId.hashCode), def.hashCode),
                        sortBy.hashCode),
                    attributeExpressions.hashCode),
                attributeDimensions.hashCode),
            calcCond.hashCode),
        calcCondition.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxMeasure')
          ..add('libraryId', libraryId)
          ..add('def', def)
          ..add('sortBy', sortBy)
          ..add('attributeExpressions', attributeExpressions)
          ..add('attributeDimensions', attributeDimensions)
          ..add('calcCond', calcCond)
          ..add('calcCondition', calcCondition))
        .toString();
  }
}

class NxMeasureBuilder implements Builder<NxMeasure, NxMeasureBuilder> {
  _$NxMeasure _$v;

  String _libraryId;
  String get libraryId => _$this._libraryId;
  set libraryId(String libraryId) => _$this._libraryId = libraryId;

  NxInlineMeasureDefBuilder _def;
  NxInlineMeasureDefBuilder get def =>
      _$this._def ??= new NxInlineMeasureDefBuilder();
  set def(NxInlineMeasureDefBuilder def) => _$this._def = def;

  SortCriteriaBuilder _sortBy;
  SortCriteriaBuilder get sortBy =>
      _$this._sortBy ??= new SortCriteriaBuilder();
  set sortBy(SortCriteriaBuilder sortBy) => _$this._sortBy = sortBy;

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

  ValueExprBuilder _calcCond;
  ValueExprBuilder get calcCond => _$this._calcCond ??= new ValueExprBuilder();
  set calcCond(ValueExprBuilder calcCond) => _$this._calcCond = calcCond;

  NxCalcCondBuilder _calcCondition;
  NxCalcCondBuilder get calcCondition =>
      _$this._calcCondition ??= new NxCalcCondBuilder();
  set calcCondition(NxCalcCondBuilder calcCondition) =>
      _$this._calcCondition = calcCondition;

  NxMeasureBuilder();

  NxMeasureBuilder get _$this {
    if (_$v != null) {
      _libraryId = _$v.libraryId;
      _def = _$v.def?.toBuilder();
      _sortBy = _$v.sortBy?.toBuilder();
      _attributeExpressions = _$v.attributeExpressions?.toBuilder();
      _attributeDimensions = _$v.attributeDimensions?.toBuilder();
      _calcCond = _$v.calcCond?.toBuilder();
      _calcCondition = _$v.calcCondition?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxMeasure other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxMeasure;
  }

  @override
  void update(void updates(NxMeasureBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxMeasure build() {
    _$NxMeasure _$result;
    try {
      _$result = _$v ??
          new _$NxMeasure._(
              libraryId: libraryId,
              def: _def?.build(),
              sortBy: _sortBy?.build(),
              attributeExpressions: _attributeExpressions?.build(),
              attributeDimensions: _attributeDimensions?.build(),
              calcCond: _calcCond?.build(),
              calcCondition: _calcCondition?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'def';
        _def?.build();
        _$failedField = 'sortBy';
        _sortBy?.build();
        _$failedField = 'attributeExpressions';
        _attributeExpressions?.build();
        _$failedField = 'attributeDimensions';
        _attributeDimensions?.build();
        _$failedField = 'calcCond';
        _calcCond?.build();
        _$failedField = 'calcCondition';
        _calcCondition?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxMeasure', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
