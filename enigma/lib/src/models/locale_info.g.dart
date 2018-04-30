// GENERATED CODE - DO NOT MODIFY BY HAND

part of locale_info;

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

Serializer<LocaleInfo> _$localeInfoSerializer = new _$LocaleInfoSerializer();

class _$LocaleInfoSerializer implements StructuredSerializer<LocaleInfo> {
  @override
  final Iterable<Type> types = const [LocaleInfo, _$LocaleInfo];
  @override
  final String wireName = 'LocaleInfo';

  @override
  Iterable serialize(Serializers serializers, LocaleInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.decimalSep != null) {
      result
        ..add('qDecimalSep')
        ..add(serializers.serialize(object.decimalSep,
            specifiedType: const FullType(String)));
    }
    if (object.thousandSep != null) {
      result
        ..add('qThousandSep')
        ..add(serializers.serialize(object.thousandSep,
            specifiedType: const FullType(String)));
    }
    if (object.listSep != null) {
      result
        ..add('qListSep')
        ..add(serializers.serialize(object.listSep,
            specifiedType: const FullType(String)));
    }
    if (object.moneyDecimalSep != null) {
      result
        ..add('qMoneyDecimalSep')
        ..add(serializers.serialize(object.moneyDecimalSep,
            specifiedType: const FullType(String)));
    }
    if (object.moneyThousandSep != null) {
      result
        ..add('qMoneyThousandSep')
        ..add(serializers.serialize(object.moneyThousandSep,
            specifiedType: const FullType(String)));
    }
    if (object.currentYear != null) {
      result
        ..add('qCurrentYear')
        ..add(serializers.serialize(object.currentYear,
            specifiedType: const FullType(int)));
    }
    if (object.moneyFmt != null) {
      result
        ..add('qMoneyFmt')
        ..add(serializers.serialize(object.moneyFmt,
            specifiedType: const FullType(String)));
    }
    if (object.timeFmt != null) {
      result
        ..add('qTimeFmt')
        ..add(serializers.serialize(object.timeFmt,
            specifiedType: const FullType(String)));
    }
    if (object.dateFmt != null) {
      result
        ..add('qDateFmt')
        ..add(serializers.serialize(object.dateFmt,
            specifiedType: const FullType(String)));
    }
    if (object.timestampFmt != null) {
      result
        ..add('qTimestampFmt')
        ..add(serializers.serialize(object.timestampFmt,
            specifiedType: const FullType(String)));
    }
    if (object.calendarStrings != null) {
      result
        ..add('qCalendarStrings')
        ..add(serializers.serialize(object.calendarStrings,
            specifiedType: const FullType(CalendarStrings)));
    }
    if (object.firstWeekDay != null) {
      result
        ..add('qFirstWeekDay')
        ..add(serializers.serialize(object.firstWeekDay,
            specifiedType: const FullType(int)));
    }
    if (object.brokenWeeks != null) {
      result
        ..add('qBrokenWeeks')
        ..add(serializers.serialize(object.brokenWeeks,
            specifiedType: const FullType(bool)));
    }
    if (object.referenceDay != null) {
      result
        ..add('qReferenceDay')
        ..add(serializers.serialize(object.referenceDay,
            specifiedType: const FullType(int)));
    }
    if (object.firstMonthOfYear != null) {
      result
        ..add('qFirstMonthOfYear')
        ..add(serializers.serialize(object.firstMonthOfYear,
            specifiedType: const FullType(int)));
    }
    if (object.collation != null) {
      result
        ..add('qCollation')
        ..add(serializers.serialize(object.collation,
            specifiedType: const FullType(String)));
    }
    if (object.numericalAbbreviation != null) {
      result
        ..add('qNumericalAbbreviation')
        ..add(serializers.serialize(object.numericalAbbreviation,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  LocaleInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new LocaleInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qDecimalSep':
          result.decimalSep = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qThousandSep':
          result.thousandSep = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qListSep':
          result.listSep = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qMoneyDecimalSep':
          result.moneyDecimalSep = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qMoneyThousandSep':
          result.moneyThousandSep = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qCurrentYear':
          result.currentYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qMoneyFmt':
          result.moneyFmt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qTimeFmt':
          result.timeFmt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qDateFmt':
          result.dateFmt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qTimestampFmt':
          result.timestampFmt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qCalendarStrings':
          result.calendarStrings.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CalendarStrings))
              as CalendarStrings);
          break;
        case 'qFirstWeekDay':
          result.firstWeekDay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qBrokenWeeks':
          result.brokenWeeks = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qReferenceDay':
          result.referenceDay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qFirstMonthOfYear':
          result.firstMonthOfYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qCollation':
          result.collation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qNumericalAbbreviation':
          result.numericalAbbreviation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LocaleInfo extends LocaleInfo {
  @override
  final String decimalSep;
  @override
  final String thousandSep;
  @override
  final String listSep;
  @override
  final String moneyDecimalSep;
  @override
  final String moneyThousandSep;
  @override
  final int currentYear;
  @override
  final String moneyFmt;
  @override
  final String timeFmt;
  @override
  final String dateFmt;
  @override
  final String timestampFmt;
  @override
  final CalendarStrings calendarStrings;
  @override
  final int firstWeekDay;
  @override
  final bool brokenWeeks;
  @override
  final int referenceDay;
  @override
  final int firstMonthOfYear;
  @override
  final String collation;
  @override
  final String numericalAbbreviation;

  factory _$LocaleInfo([void updates(LocaleInfoBuilder b)]) =>
      (new LocaleInfoBuilder()..update(updates)).build();

  _$LocaleInfo._(
      {this.decimalSep,
      this.thousandSep,
      this.listSep,
      this.moneyDecimalSep,
      this.moneyThousandSep,
      this.currentYear,
      this.moneyFmt,
      this.timeFmt,
      this.dateFmt,
      this.timestampFmt,
      this.calendarStrings,
      this.firstWeekDay,
      this.brokenWeeks,
      this.referenceDay,
      this.firstMonthOfYear,
      this.collation,
      this.numericalAbbreviation})
      : super._();

  @override
  LocaleInfo rebuild(void updates(LocaleInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LocaleInfoBuilder toBuilder() => new LocaleInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! LocaleInfo) return false;
    return decimalSep == other.decimalSep &&
        thousandSep == other.thousandSep &&
        listSep == other.listSep &&
        moneyDecimalSep == other.moneyDecimalSep &&
        moneyThousandSep == other.moneyThousandSep &&
        currentYear == other.currentYear &&
        moneyFmt == other.moneyFmt &&
        timeFmt == other.timeFmt &&
        dateFmt == other.dateFmt &&
        timestampFmt == other.timestampFmt &&
        calendarStrings == other.calendarStrings &&
        firstWeekDay == other.firstWeekDay &&
        brokenWeeks == other.brokenWeeks &&
        referenceDay == other.referenceDay &&
        firstMonthOfYear == other.firstMonthOfYear &&
        collation == other.collation &&
        numericalAbbreviation == other.numericalAbbreviation;
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
                                                                        0,
                                                                        decimalSep
                                                                            .hashCode),
                                                                    thousandSep
                                                                        .hashCode),
                                                                listSep
                                                                    .hashCode),
                                                            moneyDecimalSep
                                                                .hashCode),
                                                        moneyThousandSep
                                                            .hashCode),
                                                    currentYear.hashCode),
                                                moneyFmt.hashCode),
                                            timeFmt.hashCode),
                                        dateFmt.hashCode),
                                    timestampFmt.hashCode),
                                calendarStrings.hashCode),
                            firstWeekDay.hashCode),
                        brokenWeeks.hashCode),
                    referenceDay.hashCode),
                firstMonthOfYear.hashCode),
            collation.hashCode),
        numericalAbbreviation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocaleInfo')
          ..add('decimalSep', decimalSep)
          ..add('thousandSep', thousandSep)
          ..add('listSep', listSep)
          ..add('moneyDecimalSep', moneyDecimalSep)
          ..add('moneyThousandSep', moneyThousandSep)
          ..add('currentYear', currentYear)
          ..add('moneyFmt', moneyFmt)
          ..add('timeFmt', timeFmt)
          ..add('dateFmt', dateFmt)
          ..add('timestampFmt', timestampFmt)
          ..add('calendarStrings', calendarStrings)
          ..add('firstWeekDay', firstWeekDay)
          ..add('brokenWeeks', brokenWeeks)
          ..add('referenceDay', referenceDay)
          ..add('firstMonthOfYear', firstMonthOfYear)
          ..add('collation', collation)
          ..add('numericalAbbreviation', numericalAbbreviation))
        .toString();
  }
}

class LocaleInfoBuilder implements Builder<LocaleInfo, LocaleInfoBuilder> {
  _$LocaleInfo _$v;

  String _decimalSep;
  String get decimalSep => _$this._decimalSep;
  set decimalSep(String decimalSep) => _$this._decimalSep = decimalSep;

  String _thousandSep;
  String get thousandSep => _$this._thousandSep;
  set thousandSep(String thousandSep) => _$this._thousandSep = thousandSep;

  String _listSep;
  String get listSep => _$this._listSep;
  set listSep(String listSep) => _$this._listSep = listSep;

  String _moneyDecimalSep;
  String get moneyDecimalSep => _$this._moneyDecimalSep;
  set moneyDecimalSep(String moneyDecimalSep) =>
      _$this._moneyDecimalSep = moneyDecimalSep;

  String _moneyThousandSep;
  String get moneyThousandSep => _$this._moneyThousandSep;
  set moneyThousandSep(String moneyThousandSep) =>
      _$this._moneyThousandSep = moneyThousandSep;

  int _currentYear;
  int get currentYear => _$this._currentYear;
  set currentYear(int currentYear) => _$this._currentYear = currentYear;

  String _moneyFmt;
  String get moneyFmt => _$this._moneyFmt;
  set moneyFmt(String moneyFmt) => _$this._moneyFmt = moneyFmt;

  String _timeFmt;
  String get timeFmt => _$this._timeFmt;
  set timeFmt(String timeFmt) => _$this._timeFmt = timeFmt;

  String _dateFmt;
  String get dateFmt => _$this._dateFmt;
  set dateFmt(String dateFmt) => _$this._dateFmt = dateFmt;

  String _timestampFmt;
  String get timestampFmt => _$this._timestampFmt;
  set timestampFmt(String timestampFmt) => _$this._timestampFmt = timestampFmt;

  CalendarStringsBuilder _calendarStrings;
  CalendarStringsBuilder get calendarStrings =>
      _$this._calendarStrings ??= new CalendarStringsBuilder();
  set calendarStrings(CalendarStringsBuilder calendarStrings) =>
      _$this._calendarStrings = calendarStrings;

  int _firstWeekDay;
  int get firstWeekDay => _$this._firstWeekDay;
  set firstWeekDay(int firstWeekDay) => _$this._firstWeekDay = firstWeekDay;

  bool _brokenWeeks;
  bool get brokenWeeks => _$this._brokenWeeks;
  set brokenWeeks(bool brokenWeeks) => _$this._brokenWeeks = brokenWeeks;

  int _referenceDay;
  int get referenceDay => _$this._referenceDay;
  set referenceDay(int referenceDay) => _$this._referenceDay = referenceDay;

  int _firstMonthOfYear;
  int get firstMonthOfYear => _$this._firstMonthOfYear;
  set firstMonthOfYear(int firstMonthOfYear) =>
      _$this._firstMonthOfYear = firstMonthOfYear;

  String _collation;
  String get collation => _$this._collation;
  set collation(String collation) => _$this._collation = collation;

  String _numericalAbbreviation;
  String get numericalAbbreviation => _$this._numericalAbbreviation;
  set numericalAbbreviation(String numericalAbbreviation) =>
      _$this._numericalAbbreviation = numericalAbbreviation;

  LocaleInfoBuilder();

  LocaleInfoBuilder get _$this {
    if (_$v != null) {
      _decimalSep = _$v.decimalSep;
      _thousandSep = _$v.thousandSep;
      _listSep = _$v.listSep;
      _moneyDecimalSep = _$v.moneyDecimalSep;
      _moneyThousandSep = _$v.moneyThousandSep;
      _currentYear = _$v.currentYear;
      _moneyFmt = _$v.moneyFmt;
      _timeFmt = _$v.timeFmt;
      _dateFmt = _$v.dateFmt;
      _timestampFmt = _$v.timestampFmt;
      _calendarStrings = _$v.calendarStrings?.toBuilder();
      _firstWeekDay = _$v.firstWeekDay;
      _brokenWeeks = _$v.brokenWeeks;
      _referenceDay = _$v.referenceDay;
      _firstMonthOfYear = _$v.firstMonthOfYear;
      _collation = _$v.collation;
      _numericalAbbreviation = _$v.numericalAbbreviation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocaleInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$LocaleInfo;
  }

  @override
  void update(void updates(LocaleInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LocaleInfo build() {
    _$LocaleInfo _$result;
    try {
      _$result = _$v ??
          new _$LocaleInfo._(
              decimalSep: decimalSep,
              thousandSep: thousandSep,
              listSep: listSep,
              moneyDecimalSep: moneyDecimalSep,
              moneyThousandSep: moneyThousandSep,
              currentYear: currentYear,
              moneyFmt: moneyFmt,
              timeFmt: timeFmt,
              dateFmt: dateFmt,
              timestampFmt: timestampFmt,
              calendarStrings: _calendarStrings?.build(),
              firstWeekDay: firstWeekDay,
              brokenWeeks: brokenWeeks,
              referenceDay: referenceDay,
              firstMonthOfYear: firstMonthOfYear,
              collation: collation,
              numericalAbbreviation: numericalAbbreviation);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'calendarStrings';
        _calendarStrings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LocaleInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
