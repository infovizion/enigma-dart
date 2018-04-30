// GENERATED CODE - DO NOT MODIFY BY HAND

part of other_total_spec_prop;

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

Serializer<OtherTotalSpecProp> _$otherTotalSpecPropSerializer =
    new _$OtherTotalSpecPropSerializer();

class _$OtherTotalSpecPropSerializer
    implements StructuredSerializer<OtherTotalSpecProp> {
  @override
  final Iterable<Type> types = const [OtherTotalSpecProp, _$OtherTotalSpecProp];
  @override
  final String wireName = 'OtherTotalSpecProp';

  @override
  Iterable serialize(Serializers serializers, OtherTotalSpecProp object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.otherMode != null) {
      result
        ..add('qOtherMode')
        ..add(serializers.serialize(object.otherMode,
            specifiedType: const FullType(String)));
    }
    if (object.otherCounted != null) {
      result
        ..add('qOtherCounted')
        ..add(serializers.serialize(object.otherCounted,
            specifiedType: const FullType(ValueExpr)));
    }
    if (object.otherLimit != null) {
      result
        ..add('qOtherLimit')
        ..add(serializers.serialize(object.otherLimit,
            specifiedType: const FullType(ValueExpr)));
    }
    if (object.otherLimitMode != null) {
      result
        ..add('qOtherLimitMode')
        ..add(serializers.serialize(object.otherLimitMode,
            specifiedType: const FullType(String)));
    }
    if (object.suppressOther != null) {
      result
        ..add('qSuppressOther')
        ..add(serializers.serialize(object.suppressOther,
            specifiedType: const FullType(bool)));
    }
    if (object.forceBadValueKeeping != null) {
      result
        ..add('qForceBadValueKeeping')
        ..add(serializers.serialize(object.forceBadValueKeeping,
            specifiedType: const FullType(bool)));
    }
    if (object.applyEvenWhenPossiblyWrongResult != null) {
      result
        ..add('qApplyEvenWhenPossiblyWrongResult')
        ..add(serializers.serialize(object.applyEvenWhenPossiblyWrongResult,
            specifiedType: const FullType(bool)));
    }
    if (object.globalOtherGrouping != null) {
      result
        ..add('qGlobalOtherGrouping')
        ..add(serializers.serialize(object.globalOtherGrouping,
            specifiedType: const FullType(bool)));
    }
    if (object.otherCollapseInnerDimensions != null) {
      result
        ..add('qOtherCollapseInnerDimensions')
        ..add(serializers.serialize(object.otherCollapseInnerDimensions,
            specifiedType: const FullType(bool)));
    }
    if (object.otherSortMode != null) {
      result
        ..add('qOtherSortMode')
        ..add(serializers.serialize(object.otherSortMode,
            specifiedType: const FullType(String)));
    }
    if (object.totalMode != null) {
      result
        ..add('qTotalMode')
        ..add(serializers.serialize(object.totalMode,
            specifiedType: const FullType(String)));
    }
    if (object.referencedExpression != null) {
      result
        ..add('qReferencedExpression')
        ..add(serializers.serialize(object.referencedExpression,
            specifiedType: const FullType(StringExpr)));
    }

    return result;
  }

  @override
  OtherTotalSpecProp deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new OtherTotalSpecPropBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qOtherMode':
          result.otherMode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qOtherCounted':
          result.otherCounted.replace(serializers.deserialize(value,
              specifiedType: const FullType(ValueExpr)) as ValueExpr);
          break;
        case 'qOtherLimit':
          result.otherLimit.replace(serializers.deserialize(value,
              specifiedType: const FullType(ValueExpr)) as ValueExpr);
          break;
        case 'qOtherLimitMode':
          result.otherLimitMode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qSuppressOther':
          result.suppressOther = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qForceBadValueKeeping':
          result.forceBadValueKeeping = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qApplyEvenWhenPossiblyWrongResult':
          result.applyEvenWhenPossiblyWrongResult = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'qGlobalOtherGrouping':
          result.globalOtherGrouping = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qOtherCollapseInnerDimensions':
          result.otherCollapseInnerDimensions = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qOtherSortMode':
          result.otherSortMode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qTotalMode':
          result.totalMode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qReferencedExpression':
          result.referencedExpression.replace(serializers.deserialize(value,
              specifiedType: const FullType(StringExpr)) as StringExpr);
          break;
      }
    }

    return result.build();
  }
}

class _$OtherTotalSpecProp extends OtherTotalSpecProp {
  @override
  final String otherMode;
  @override
  final ValueExpr otherCounted;
  @override
  final ValueExpr otherLimit;
  @override
  final String otherLimitMode;
  @override
  final bool suppressOther;
  @override
  final bool forceBadValueKeeping;
  @override
  final bool applyEvenWhenPossiblyWrongResult;
  @override
  final bool globalOtherGrouping;
  @override
  final bool otherCollapseInnerDimensions;
  @override
  final String otherSortMode;
  @override
  final String totalMode;
  @override
  final StringExpr referencedExpression;

  factory _$OtherTotalSpecProp([void updates(OtherTotalSpecPropBuilder b)]) =>
      (new OtherTotalSpecPropBuilder()..update(updates)).build();

  _$OtherTotalSpecProp._(
      {this.otherMode,
      this.otherCounted,
      this.otherLimit,
      this.otherLimitMode,
      this.suppressOther,
      this.forceBadValueKeeping,
      this.applyEvenWhenPossiblyWrongResult,
      this.globalOtherGrouping,
      this.otherCollapseInnerDimensions,
      this.otherSortMode,
      this.totalMode,
      this.referencedExpression})
      : super._();

  @override
  OtherTotalSpecProp rebuild(void updates(OtherTotalSpecPropBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  OtherTotalSpecPropBuilder toBuilder() =>
      new OtherTotalSpecPropBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! OtherTotalSpecProp) return false;
    return otherMode == other.otherMode &&
        otherCounted == other.otherCounted &&
        otherLimit == other.otherLimit &&
        otherLimitMode == other.otherLimitMode &&
        suppressOther == other.suppressOther &&
        forceBadValueKeeping == other.forceBadValueKeeping &&
        applyEvenWhenPossiblyWrongResult ==
            other.applyEvenWhenPossiblyWrongResult &&
        globalOtherGrouping == other.globalOtherGrouping &&
        otherCollapseInnerDimensions == other.otherCollapseInnerDimensions &&
        otherSortMode == other.otherSortMode &&
        totalMode == other.totalMode &&
        referencedExpression == other.referencedExpression;
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
                                            $jc($jc(0, otherMode.hashCode),
                                                otherCounted.hashCode),
                                            otherLimit.hashCode),
                                        otherLimitMode.hashCode),
                                    suppressOther.hashCode),
                                forceBadValueKeeping.hashCode),
                            applyEvenWhenPossiblyWrongResult.hashCode),
                        globalOtherGrouping.hashCode),
                    otherCollapseInnerDimensions.hashCode),
                otherSortMode.hashCode),
            totalMode.hashCode),
        referencedExpression.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OtherTotalSpecProp')
          ..add('otherMode', otherMode)
          ..add('otherCounted', otherCounted)
          ..add('otherLimit', otherLimit)
          ..add('otherLimitMode', otherLimitMode)
          ..add('suppressOther', suppressOther)
          ..add('forceBadValueKeeping', forceBadValueKeeping)
          ..add('applyEvenWhenPossiblyWrongResult',
              applyEvenWhenPossiblyWrongResult)
          ..add('globalOtherGrouping', globalOtherGrouping)
          ..add('otherCollapseInnerDimensions', otherCollapseInnerDimensions)
          ..add('otherSortMode', otherSortMode)
          ..add('totalMode', totalMode)
          ..add('referencedExpression', referencedExpression))
        .toString();
  }
}

class OtherTotalSpecPropBuilder
    implements Builder<OtherTotalSpecProp, OtherTotalSpecPropBuilder> {
  _$OtherTotalSpecProp _$v;

  String _otherMode;
  String get otherMode => _$this._otherMode;
  set otherMode(String otherMode) => _$this._otherMode = otherMode;

  ValueExprBuilder _otherCounted;
  ValueExprBuilder get otherCounted =>
      _$this._otherCounted ??= new ValueExprBuilder();
  set otherCounted(ValueExprBuilder otherCounted) =>
      _$this._otherCounted = otherCounted;

  ValueExprBuilder _otherLimit;
  ValueExprBuilder get otherLimit =>
      _$this._otherLimit ??= new ValueExprBuilder();
  set otherLimit(ValueExprBuilder otherLimit) =>
      _$this._otherLimit = otherLimit;

  String _otherLimitMode;
  String get otherLimitMode => _$this._otherLimitMode;
  set otherLimitMode(String otherLimitMode) =>
      _$this._otherLimitMode = otherLimitMode;

  bool _suppressOther;
  bool get suppressOther => _$this._suppressOther;
  set suppressOther(bool suppressOther) =>
      _$this._suppressOther = suppressOther;

  bool _forceBadValueKeeping;
  bool get forceBadValueKeeping => _$this._forceBadValueKeeping;
  set forceBadValueKeeping(bool forceBadValueKeeping) =>
      _$this._forceBadValueKeeping = forceBadValueKeeping;

  bool _applyEvenWhenPossiblyWrongResult;
  bool get applyEvenWhenPossiblyWrongResult =>
      _$this._applyEvenWhenPossiblyWrongResult;
  set applyEvenWhenPossiblyWrongResult(bool applyEvenWhenPossiblyWrongResult) =>
      _$this._applyEvenWhenPossiblyWrongResult =
          applyEvenWhenPossiblyWrongResult;

  bool _globalOtherGrouping;
  bool get globalOtherGrouping => _$this._globalOtherGrouping;
  set globalOtherGrouping(bool globalOtherGrouping) =>
      _$this._globalOtherGrouping = globalOtherGrouping;

  bool _otherCollapseInnerDimensions;
  bool get otherCollapseInnerDimensions => _$this._otherCollapseInnerDimensions;
  set otherCollapseInnerDimensions(bool otherCollapseInnerDimensions) =>
      _$this._otherCollapseInnerDimensions = otherCollapseInnerDimensions;

  String _otherSortMode;
  String get otherSortMode => _$this._otherSortMode;
  set otherSortMode(String otherSortMode) =>
      _$this._otherSortMode = otherSortMode;

  String _totalMode;
  String get totalMode => _$this._totalMode;
  set totalMode(String totalMode) => _$this._totalMode = totalMode;

  StringExprBuilder _referencedExpression;
  StringExprBuilder get referencedExpression =>
      _$this._referencedExpression ??= new StringExprBuilder();
  set referencedExpression(StringExprBuilder referencedExpression) =>
      _$this._referencedExpression = referencedExpression;

  OtherTotalSpecPropBuilder();

  OtherTotalSpecPropBuilder get _$this {
    if (_$v != null) {
      _otherMode = _$v.otherMode;
      _otherCounted = _$v.otherCounted?.toBuilder();
      _otherLimit = _$v.otherLimit?.toBuilder();
      _otherLimitMode = _$v.otherLimitMode;
      _suppressOther = _$v.suppressOther;
      _forceBadValueKeeping = _$v.forceBadValueKeeping;
      _applyEvenWhenPossiblyWrongResult = _$v.applyEvenWhenPossiblyWrongResult;
      _globalOtherGrouping = _$v.globalOtherGrouping;
      _otherCollapseInnerDimensions = _$v.otherCollapseInnerDimensions;
      _otherSortMode = _$v.otherSortMode;
      _totalMode = _$v.totalMode;
      _referencedExpression = _$v.referencedExpression?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OtherTotalSpecProp other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$OtherTotalSpecProp;
  }

  @override
  void update(void updates(OtherTotalSpecPropBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$OtherTotalSpecProp build() {
    _$OtherTotalSpecProp _$result;
    try {
      _$result = _$v ??
          new _$OtherTotalSpecProp._(
              otherMode: otherMode,
              otherCounted: _otherCounted?.build(),
              otherLimit: _otherLimit?.build(),
              otherLimitMode: otherLimitMode,
              suppressOther: suppressOther,
              forceBadValueKeeping: forceBadValueKeeping,
              applyEvenWhenPossiblyWrongResult:
                  applyEvenWhenPossiblyWrongResult,
              globalOtherGrouping: globalOtherGrouping,
              otherCollapseInnerDimensions: otherCollapseInnerDimensions,
              otherSortMode: otherSortMode,
              totalMode: totalMode,
              referencedExpression: _referencedExpression?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'otherCounted';
        _otherCounted?.build();
        _$failedField = 'otherLimit';
        _otherLimit?.build();

        _$failedField = 'referencedExpression';
        _referencedExpression?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OtherTotalSpecProp', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
