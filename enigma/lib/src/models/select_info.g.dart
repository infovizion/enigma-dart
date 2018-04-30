// GENERATED CODE - DO NOT MODIFY BY HAND

part of select_info;

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

Serializer<SelectInfo> _$selectInfoSerializer = new _$SelectInfoSerializer();

class _$SelectInfoSerializer implements StructuredSerializer<SelectInfo> {
  @override
  final Iterable<Type> types = const [SelectInfo, _$SelectInfo];
  @override
  final String wireName = 'SelectInfo';

  @override
  Iterable serialize(Serializers serializers, SelectInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.textSearch != null) {
      result
        ..add('qTextSearch')
        ..add(serializers.serialize(object.textSearch,
            specifiedType: const FullType(String)));
    }
    if (object.rangeLo != null) {
      result
        ..add('qRangeLo')
        ..add(serializers.serialize(object.rangeLo,
            specifiedType: const FullType(num)));
    }
    if (object.rangeHi != null) {
      result
        ..add('qRangeHi')
        ..add(serializers.serialize(object.rangeHi,
            specifiedType: const FullType(num)));
    }
    if (object.numberFormat != null) {
      result
        ..add('qNumberFormat')
        ..add(serializers.serialize(object.numberFormat,
            specifiedType: const FullType(FieldAttributes)));
    }
    if (object.rangeInfo != null) {
      result
        ..add('qRangeInfo')
        ..add(serializers.serialize(object.rangeInfo,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.softLock != null) {
      result
        ..add('qSoftLock')
        ..add(serializers.serialize(object.softLock,
            specifiedType: const FullType(bool)));
    }
    if (object.continuousRangeInfo != null) {
      result
        ..add('qContinuousRangeInfo')
        ..add(serializers.serialize(object.continuousRangeInfo,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  SelectInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SelectInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qTextSearch':
          result.textSearch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qRangeLo':
          result.rangeLo = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'qRangeHi':
          result.rangeHi = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'qNumberFormat':
          result.numberFormat.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FieldAttributes))
              as FieldAttributes);
          break;
        case 'qRangeInfo':
          result.rangeInfo.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qSoftLock':
          result.softLock = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qContinuousRangeInfo':
          result.continuousRangeInfo.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$SelectInfo extends SelectInfo {
  @override
  final String textSearch;
  @override
  final num rangeLo;
  @override
  final num rangeHi;
  @override
  final FieldAttributes numberFormat;
  @override
  final BuiltList<NxCell> rangeInfo;
  @override
  final bool softLock;
  @override
  final BuiltList<NxCell> continuousRangeInfo;

  factory _$SelectInfo([void updates(SelectInfoBuilder b)]) =>
      (new SelectInfoBuilder()..update(updates)).build();

  _$SelectInfo._(
      {this.textSearch,
      this.rangeLo,
      this.rangeHi,
      this.numberFormat,
      this.rangeInfo,
      this.softLock,
      this.continuousRangeInfo})
      : super._();

  @override
  SelectInfo rebuild(void updates(SelectInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectInfoBuilder toBuilder() => new SelectInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SelectInfo) return false;
    return textSearch == other.textSearch &&
        rangeLo == other.rangeLo &&
        rangeHi == other.rangeHi &&
        numberFormat == other.numberFormat &&
        rangeInfo == other.rangeInfo &&
        softLock == other.softLock &&
        continuousRangeInfo == other.continuousRangeInfo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, textSearch.hashCode), rangeLo.hashCode),
                        rangeHi.hashCode),
                    numberFormat.hashCode),
                rangeInfo.hashCode),
            softLock.hashCode),
        continuousRangeInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SelectInfo')
          ..add('textSearch', textSearch)
          ..add('rangeLo', rangeLo)
          ..add('rangeHi', rangeHi)
          ..add('numberFormat', numberFormat)
          ..add('rangeInfo', rangeInfo)
          ..add('softLock', softLock)
          ..add('continuousRangeInfo', continuousRangeInfo))
        .toString();
  }
}

class SelectInfoBuilder implements Builder<SelectInfo, SelectInfoBuilder> {
  _$SelectInfo _$v;

  String _textSearch;
  String get textSearch => _$this._textSearch;
  set textSearch(String textSearch) => _$this._textSearch = textSearch;

  num _rangeLo;
  num get rangeLo => _$this._rangeLo;
  set rangeLo(num rangeLo) => _$this._rangeLo = rangeLo;

  num _rangeHi;
  num get rangeHi => _$this._rangeHi;
  set rangeHi(num rangeHi) => _$this._rangeHi = rangeHi;

  FieldAttributesBuilder _numberFormat;
  FieldAttributesBuilder get numberFormat =>
      _$this._numberFormat ??= new FieldAttributesBuilder();
  set numberFormat(FieldAttributesBuilder numberFormat) =>
      _$this._numberFormat = numberFormat;

  ListBuilder<NxCell> _rangeInfo;
  ListBuilder<NxCell> get rangeInfo =>
      _$this._rangeInfo ??= new ListBuilder<NxCell>();
  set rangeInfo(ListBuilder<NxCell> rangeInfo) => _$this._rangeInfo = rangeInfo;

  bool _softLock;
  bool get softLock => _$this._softLock;
  set softLock(bool softLock) => _$this._softLock = softLock;

  ListBuilder<NxCell> _continuousRangeInfo;
  ListBuilder<NxCell> get continuousRangeInfo =>
      _$this._continuousRangeInfo ??= new ListBuilder<NxCell>();
  set continuousRangeInfo(ListBuilder<NxCell> continuousRangeInfo) =>
      _$this._continuousRangeInfo = continuousRangeInfo;

  SelectInfoBuilder();

  SelectInfoBuilder get _$this {
    if (_$v != null) {
      _textSearch = _$v.textSearch;
      _rangeLo = _$v.rangeLo;
      _rangeHi = _$v.rangeHi;
      _numberFormat = _$v.numberFormat?.toBuilder();
      _rangeInfo = _$v.rangeInfo?.toBuilder();
      _softLock = _$v.softLock;
      _continuousRangeInfo = _$v.continuousRangeInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SelectInfo;
  }

  @override
  void update(void updates(SelectInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SelectInfo build() {
    _$SelectInfo _$result;
    try {
      _$result = _$v ??
          new _$SelectInfo._(
              textSearch: textSearch,
              rangeLo: rangeLo,
              rangeHi: rangeHi,
              numberFormat: _numberFormat?.build(),
              rangeInfo: _rangeInfo?.build(),
              softLock: softLock,
              continuousRangeInfo: _continuousRangeInfo?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'numberFormat';
        _numberFormat?.build();
        _$failedField = 'rangeInfo';
        _rangeInfo?.build();

        _$failedField = 'continuousRangeInfo';
        _continuousRangeInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SelectInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
