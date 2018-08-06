// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_measure_info;

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

Serializer<NxMeasureInfo> _$nxMeasureInfoSerializer =
    new _$NxMeasureInfoSerializer();

class _$NxMeasureInfoSerializer implements StructuredSerializer<NxMeasureInfo> {
  @override
  final Iterable<Type> types = const [NxMeasureInfo, _$NxMeasureInfo];
  @override
  final String wireName = 'NxMeasureInfo';

  @override
  Iterable serialize(Serializers serializers, NxMeasureInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.fallbackTitle != null) {
      result
        ..add('qFallbackTitle')
        ..add(serializers.serialize(object.fallbackTitle,
            specifiedType: const FullType(String)));
    }
    if (object.apprMaxGlyphCount != null) {
      result
        ..add('qApprMaxGlyphCount')
        ..add(serializers.serialize(object.apprMaxGlyphCount,
            specifiedType: const FullType(int)));
    }
    if (object.cardinal != null) {
      result
        ..add('qCardinal')
        ..add(serializers.serialize(object.cardinal,
            specifiedType: const FullType(int)));
    }
    if (object.sortIndicator != null) {
      result
        ..add('qSortIndicator')
        ..add(serializers.serialize(object.sortIndicator,
            specifiedType: const FullType(String)));
    }
    if (object.numFormat != null) {
      result
        ..add('qNumFormat')
        ..add(serializers.serialize(object.numFormat,
            specifiedType: const FullType(FieldAttributes)));
    }
    if (object.min != null) {
      result
        ..add('qMin')
        ..add(serializers.serialize(object.min,
            specifiedType: const FullType(num)));
    }
    if (object.max != null) {
      result
        ..add('qMax')
        ..add(serializers.serialize(object.max,
            specifiedType: const FullType(num)));
    }
    if (object.error != null) {
      result
        ..add('qError')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(NxValidationError)));
    }
    if (object.reverseSort != null) {
      result
        ..add('qReverseSort')
        ..add(serializers.serialize(object.reverseSort,
            specifiedType: const FullType(bool)));
    }
    if (object.isAutoFormat != null) {
      result
        ..add('qIsAutoFormat')
        ..add(serializers.serialize(object.isAutoFormat,
            specifiedType: const FullType(bool)));
    }
    if (object.attrExprInfo != null) {
      result
        ..add('qAttrExprInfo')
        ..add(serializers.serialize(object.attrExprInfo,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxAttrExprInfo)])));
    }
    if (object.attrDimInfo != null) {
      result
        ..add('qAttrDimInfo')
        ..add(serializers.serialize(object.attrDimInfo,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxAttrDimInfo)])));
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
  NxMeasureInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxMeasureInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qFallbackTitle':
          result.fallbackTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qApprMaxGlyphCount':
          result.apprMaxGlyphCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qCardinal':
          result.cardinal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qSortIndicator':
          result.sortIndicator = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qNumFormat':
          result.numFormat.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FieldAttributes))
              as FieldAttributes);
          break;
        case 'qMin':
          result.min = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'qMax':
          result.max = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'qError':
          result.error.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxValidationError))
              as NxValidationError);
          break;
        case 'qReverseSort':
          result.reverseSort = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qIsAutoFormat':
          result.isAutoFormat = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qAttrExprInfo':
          result.attrExprInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxAttrExprInfo)]))
              as BuiltList);
          break;
        case 'qAttrDimInfo':
          result.attrDimInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxAttrDimInfo)]))
              as BuiltList);
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

class _$NxMeasureInfo extends NxMeasureInfo {
  @override
  final String fallbackTitle;
  @override
  final int apprMaxGlyphCount;
  @override
  final int cardinal;
  @override
  final String sortIndicator;
  @override
  final FieldAttributes numFormat;
  @override
  final num min;
  @override
  final num max;
  @override
  final NxValidationError error;
  @override
  final bool reverseSort;
  @override
  final bool isAutoFormat;
  @override
  final BuiltList<NxAttrExprInfo> attrExprInfo;
  @override
  final BuiltList<NxAttrDimInfo> attrDimInfo;
  @override
  final String calcCondMsg;

  factory _$NxMeasureInfo([void updates(NxMeasureInfoBuilder b)]) =>
      (new NxMeasureInfoBuilder()..update(updates)).build();

  _$NxMeasureInfo._(
      {this.fallbackTitle,
      this.apprMaxGlyphCount,
      this.cardinal,
      this.sortIndicator,
      this.numFormat,
      this.min,
      this.max,
      this.error,
      this.reverseSort,
      this.isAutoFormat,
      this.attrExprInfo,
      this.attrDimInfo,
      this.calcCondMsg})
      : super._();

  @override
  NxMeasureInfo rebuild(void updates(NxMeasureInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxMeasureInfoBuilder toBuilder() => new NxMeasureInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxMeasureInfo) return false;
    return fallbackTitle == other.fallbackTitle &&
        apprMaxGlyphCount == other.apprMaxGlyphCount &&
        cardinal == other.cardinal &&
        sortIndicator == other.sortIndicator &&
        numFormat == other.numFormat &&
        min == other.min &&
        max == other.max &&
        error == other.error &&
        reverseSort == other.reverseSort &&
        isAutoFormat == other.isAutoFormat &&
        attrExprInfo == other.attrExprInfo &&
        attrDimInfo == other.attrDimInfo &&
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(0,
                                                        fallbackTitle.hashCode),
                                                    apprMaxGlyphCount.hashCode),
                                                cardinal.hashCode),
                                            sortIndicator.hashCode),
                                        numFormat.hashCode),
                                    min.hashCode),
                                max.hashCode),
                            error.hashCode),
                        reverseSort.hashCode),
                    isAutoFormat.hashCode),
                attrExprInfo.hashCode),
            attrDimInfo.hashCode),
        calcCondMsg.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxMeasureInfo')
          ..add('fallbackTitle', fallbackTitle)
          ..add('apprMaxGlyphCount', apprMaxGlyphCount)
          ..add('cardinal', cardinal)
          ..add('sortIndicator', sortIndicator)
          ..add('numFormat', numFormat)
          ..add('min', min)
          ..add('max', max)
          ..add('error', error)
          ..add('reverseSort', reverseSort)
          ..add('isAutoFormat', isAutoFormat)
          ..add('attrExprInfo', attrExprInfo)
          ..add('attrDimInfo', attrDimInfo)
          ..add('calcCondMsg', calcCondMsg))
        .toString();
  }
}

class NxMeasureInfoBuilder
    implements Builder<NxMeasureInfo, NxMeasureInfoBuilder> {
  _$NxMeasureInfo _$v;

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

  String _sortIndicator;
  String get sortIndicator => _$this._sortIndicator;
  set sortIndicator(String sortIndicator) =>
      _$this._sortIndicator = sortIndicator;

  FieldAttributesBuilder _numFormat;
  FieldAttributesBuilder get numFormat =>
      _$this._numFormat ??= new FieldAttributesBuilder();
  set numFormat(FieldAttributesBuilder numFormat) =>
      _$this._numFormat = numFormat;

  num _min;
  num get min => _$this._min;
  set min(num min) => _$this._min = min;

  num _max;
  num get max => _$this._max;
  set max(num max) => _$this._max = max;

  NxValidationErrorBuilder _error;
  NxValidationErrorBuilder get error =>
      _$this._error ??= new NxValidationErrorBuilder();
  set error(NxValidationErrorBuilder error) => _$this._error = error;

  bool _reverseSort;
  bool get reverseSort => _$this._reverseSort;
  set reverseSort(bool reverseSort) => _$this._reverseSort = reverseSort;

  bool _isAutoFormat;
  bool get isAutoFormat => _$this._isAutoFormat;
  set isAutoFormat(bool isAutoFormat) => _$this._isAutoFormat = isAutoFormat;

  ListBuilder<NxAttrExprInfo> _attrExprInfo;
  ListBuilder<NxAttrExprInfo> get attrExprInfo =>
      _$this._attrExprInfo ??= new ListBuilder<NxAttrExprInfo>();
  set attrExprInfo(ListBuilder<NxAttrExprInfo> attrExprInfo) =>
      _$this._attrExprInfo = attrExprInfo;

  ListBuilder<NxAttrDimInfo> _attrDimInfo;
  ListBuilder<NxAttrDimInfo> get attrDimInfo =>
      _$this._attrDimInfo ??= new ListBuilder<NxAttrDimInfo>();
  set attrDimInfo(ListBuilder<NxAttrDimInfo> attrDimInfo) =>
      _$this._attrDimInfo = attrDimInfo;

  String _calcCondMsg;
  String get calcCondMsg => _$this._calcCondMsg;
  set calcCondMsg(String calcCondMsg) => _$this._calcCondMsg = calcCondMsg;

  NxMeasureInfoBuilder();

  NxMeasureInfoBuilder get _$this {
    if (_$v != null) {
      _fallbackTitle = _$v.fallbackTitle;
      _apprMaxGlyphCount = _$v.apprMaxGlyphCount;
      _cardinal = _$v.cardinal;
      _sortIndicator = _$v.sortIndicator;
      _numFormat = _$v.numFormat?.toBuilder();
      _min = _$v.min;
      _max = _$v.max;
      _error = _$v.error?.toBuilder();
      _reverseSort = _$v.reverseSort;
      _isAutoFormat = _$v.isAutoFormat;
      _attrExprInfo = _$v.attrExprInfo?.toBuilder();
      _attrDimInfo = _$v.attrDimInfo?.toBuilder();
      _calcCondMsg = _$v.calcCondMsg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxMeasureInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxMeasureInfo;
  }

  @override
  void update(void updates(NxMeasureInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxMeasureInfo build() {
    _$NxMeasureInfo _$result;
    try {
      _$result = _$v ??
          new _$NxMeasureInfo._(
              fallbackTitle: fallbackTitle,
              apprMaxGlyphCount: apprMaxGlyphCount,
              cardinal: cardinal,
              sortIndicator: sortIndicator,
              numFormat: _numFormat?.build(),
              min: min,
              max: max,
              error: _error?.build(),
              reverseSort: reverseSort,
              isAutoFormat: isAutoFormat,
              attrExprInfo: _attrExprInfo?.build(),
              attrDimInfo: _attrDimInfo?.build(),
              calcCondMsg: calcCondMsg);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'numFormat';
        _numFormat?.build();

        _$failedField = 'error';
        _error?.build();

        _$failedField = 'attrExprInfo';
        _attrExprInfo?.build();
        _$failedField = 'attrDimInfo';
        _attrDimInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxMeasureInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
