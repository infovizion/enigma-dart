// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_inline_dimension_def;

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

Serializer<NxInlineDimensionDef> _$nxInlineDimensionDefSerializer =
    new _$NxInlineDimensionDefSerializer();

class _$NxInlineDimensionDefSerializer
    implements StructuredSerializer<NxInlineDimensionDef> {
  @override
  final Iterable<Type> types = const [
    NxInlineDimensionDef,
    _$NxInlineDimensionDef
  ];
  @override
  final String wireName = 'NxInlineDimensionDef';

  @override
  Iterable serialize(Serializers serializers, NxInlineDimensionDef object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.grouping != null) {
      result
        ..add('qGrouping')
        ..add(serializers.serialize(object.grouping,
            specifiedType: const FullType(String)));
    }
    if (object.fieldDefs != null) {
      result
        ..add('qFieldDefs')
        ..add(serializers.serialize(object.fieldDefs,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.fieldLabels != null) {
      result
        ..add('qFieldLabels')
        ..add(serializers.serialize(object.fieldLabels,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.sortCriterias != null) {
      result
        ..add('qSortCriterias')
        ..add(serializers.serialize(object.sortCriterias,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.numberPresentations != null) {
      result
        ..add('qNumberPresentations')
        ..add(serializers.serialize(object.numberPresentations,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.reverseSort != null) {
      result
        ..add('qReverseSort')
        ..add(serializers.serialize(object.reverseSort,
            specifiedType: const FullType(bool)));
    }
    if (object.activeField != null) {
      result
        ..add('qActiveField')
        ..add(serializers.serialize(object.activeField,
            specifiedType: const FullType(int)));
    }
    if (object.labelExpression != null) {
      result
        ..add('qLabelExpression')
        ..add(serializers.serialize(object.labelExpression,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  NxInlineDimensionDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxInlineDimensionDefBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qGrouping':
          result.grouping = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qFieldDefs':
          result.fieldDefs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qFieldLabels':
          result.fieldLabels.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qSortCriterias':
          result.sortCriterias.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qNumberPresentations':
          result.numberPresentations.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qReverseSort':
          result.reverseSort = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qActiveField':
          result.activeField = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qLabelExpression':
          result.labelExpression = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NxInlineDimensionDef extends NxInlineDimensionDef {
  @override
  final String grouping;
  @override
  final BuiltList<NxCell> fieldDefs;
  @override
  final BuiltList<NxCell> fieldLabels;
  @override
  final BuiltList<NxCell> sortCriterias;
  @override
  final BuiltList<NxCell> numberPresentations;
  @override
  final bool reverseSort;
  @override
  final int activeField;
  @override
  final String labelExpression;

  factory _$NxInlineDimensionDef(
          [void updates(NxInlineDimensionDefBuilder b)]) =>
      (new NxInlineDimensionDefBuilder()..update(updates)).build();

  _$NxInlineDimensionDef._(
      {this.grouping,
      this.fieldDefs,
      this.fieldLabels,
      this.sortCriterias,
      this.numberPresentations,
      this.reverseSort,
      this.activeField,
      this.labelExpression})
      : super._();

  @override
  NxInlineDimensionDef rebuild(void updates(NxInlineDimensionDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxInlineDimensionDefBuilder toBuilder() =>
      new NxInlineDimensionDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxInlineDimensionDef) return false;
    return grouping == other.grouping &&
        fieldDefs == other.fieldDefs &&
        fieldLabels == other.fieldLabels &&
        sortCriterias == other.sortCriterias &&
        numberPresentations == other.numberPresentations &&
        reverseSort == other.reverseSort &&
        activeField == other.activeField &&
        labelExpression == other.labelExpression;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, grouping.hashCode), fieldDefs.hashCode),
                            fieldLabels.hashCode),
                        sortCriterias.hashCode),
                    numberPresentations.hashCode),
                reverseSort.hashCode),
            activeField.hashCode),
        labelExpression.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxInlineDimensionDef')
          ..add('grouping', grouping)
          ..add('fieldDefs', fieldDefs)
          ..add('fieldLabels', fieldLabels)
          ..add('sortCriterias', sortCriterias)
          ..add('numberPresentations', numberPresentations)
          ..add('reverseSort', reverseSort)
          ..add('activeField', activeField)
          ..add('labelExpression', labelExpression))
        .toString();
  }
}

class NxInlineDimensionDefBuilder
    implements Builder<NxInlineDimensionDef, NxInlineDimensionDefBuilder> {
  _$NxInlineDimensionDef _$v;

  String _grouping;
  String get grouping => _$this._grouping;
  set grouping(String grouping) => _$this._grouping = grouping;

  ListBuilder<NxCell> _fieldDefs;
  ListBuilder<NxCell> get fieldDefs =>
      _$this._fieldDefs ??= new ListBuilder<NxCell>();
  set fieldDefs(ListBuilder<NxCell> fieldDefs) => _$this._fieldDefs = fieldDefs;

  ListBuilder<NxCell> _fieldLabels;
  ListBuilder<NxCell> get fieldLabels =>
      _$this._fieldLabels ??= new ListBuilder<NxCell>();
  set fieldLabels(ListBuilder<NxCell> fieldLabels) =>
      _$this._fieldLabels = fieldLabels;

  ListBuilder<NxCell> _sortCriterias;
  ListBuilder<NxCell> get sortCriterias =>
      _$this._sortCriterias ??= new ListBuilder<NxCell>();
  set sortCriterias(ListBuilder<NxCell> sortCriterias) =>
      _$this._sortCriterias = sortCriterias;

  ListBuilder<NxCell> _numberPresentations;
  ListBuilder<NxCell> get numberPresentations =>
      _$this._numberPresentations ??= new ListBuilder<NxCell>();
  set numberPresentations(ListBuilder<NxCell> numberPresentations) =>
      _$this._numberPresentations = numberPresentations;

  bool _reverseSort;
  bool get reverseSort => _$this._reverseSort;
  set reverseSort(bool reverseSort) => _$this._reverseSort = reverseSort;

  int _activeField;
  int get activeField => _$this._activeField;
  set activeField(int activeField) => _$this._activeField = activeField;

  String _labelExpression;
  String get labelExpression => _$this._labelExpression;
  set labelExpression(String labelExpression) =>
      _$this._labelExpression = labelExpression;

  NxInlineDimensionDefBuilder();

  NxInlineDimensionDefBuilder get _$this {
    if (_$v != null) {
      _grouping = _$v.grouping;
      _fieldDefs = _$v.fieldDefs?.toBuilder();
      _fieldLabels = _$v.fieldLabels?.toBuilder();
      _sortCriterias = _$v.sortCriterias?.toBuilder();
      _numberPresentations = _$v.numberPresentations?.toBuilder();
      _reverseSort = _$v.reverseSort;
      _activeField = _$v.activeField;
      _labelExpression = _$v.labelExpression;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxInlineDimensionDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxInlineDimensionDef;
  }

  @override
  void update(void updates(NxInlineDimensionDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxInlineDimensionDef build() {
    _$NxInlineDimensionDef _$result;
    try {
      _$result = _$v ??
          new _$NxInlineDimensionDef._(
              grouping: grouping,
              fieldDefs: _fieldDefs?.build(),
              fieldLabels: _fieldLabels?.build(),
              sortCriterias: _sortCriterias?.build(),
              numberPresentations: _numberPresentations?.build(),
              reverseSort: reverseSort,
              activeField: activeField,
              labelExpression: labelExpression);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'fieldDefs';
        _fieldDefs?.build();
        _$failedField = 'fieldLabels';
        _fieldLabels?.build();
        _$failedField = 'sortCriterias';
        _sortCriterias?.build();
        _$failedField = 'numberPresentations';
        _numberPresentations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxInlineDimensionDef', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
