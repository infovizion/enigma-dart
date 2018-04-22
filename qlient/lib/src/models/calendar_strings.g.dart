// GENERATED CODE - DO NOT MODIFY BY HAND

part of calendar_strings;

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

Serializer<CalendarStrings> _$calendarStringsSerializer =
    new _$CalendarStringsSerializer();

class _$CalendarStringsSerializer
    implements StructuredSerializer<CalendarStrings> {
  @override
  final Iterable<Type> types = const [CalendarStrings, _$CalendarStrings];
  @override
  final String wireName = 'CalendarStrings';

  @override
  Iterable serialize(Serializers serializers, CalendarStrings object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.dayNames != null) {
      result
        ..add('dayNames')
        ..add(serializers.serialize(object.dayNames,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.monthNames != null) {
      result
        ..add('monthNames')
        ..add(serializers.serialize(object.monthNames,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.longDayNames != null) {
      result
        ..add('longDayNames')
        ..add(serializers.serialize(object.longDayNames,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.longMonthNames != null) {
      result
        ..add('longMonthNames')
        ..add(serializers.serialize(object.longMonthNames,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  CalendarStrings deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new CalendarStringsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'dayNames':
          result.dayNames = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'monthNames':
          result.monthNames = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'longDayNames':
          result.longDayNames = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'longMonthNames':
          result.longMonthNames = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
      }
    }

    return result.build();
  }
}

class _$CalendarStrings extends CalendarStrings {
  @override
  final List<NxCell> dayNames;
  @override
  final List<NxCell> monthNames;
  @override
  final List<NxCell> longDayNames;
  @override
  final List<NxCell> longMonthNames;

  factory _$CalendarStrings([void updates(CalendarStringsBuilder b)]) =>
      (new CalendarStringsBuilder()..update(updates)).build();

  _$CalendarStrings._(
      {this.dayNames, this.monthNames, this.longDayNames, this.longMonthNames})
      : super._();

  @override
  CalendarStrings rebuild(void updates(CalendarStringsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CalendarStringsBuilder toBuilder() =>
      new CalendarStringsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! CalendarStrings) return false;
    return dayNames == other.dayNames &&
        monthNames == other.monthNames &&
        longDayNames == other.longDayNames &&
        longMonthNames == other.longMonthNames;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, dayNames.hashCode), monthNames.hashCode),
            longDayNames.hashCode),
        longMonthNames.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CalendarStrings')
          ..add('dayNames', dayNames)
          ..add('monthNames', monthNames)
          ..add('longDayNames', longDayNames)
          ..add('longMonthNames', longMonthNames))
        .toString();
  }
}

class CalendarStringsBuilder
    implements Builder<CalendarStrings, CalendarStringsBuilder> {
  _$CalendarStrings _$v;

  List<NxCell> _dayNames;
  List<NxCell> get dayNames => _$this._dayNames;
  set dayNames(List<NxCell> dayNames) => _$this._dayNames = dayNames;

  List<NxCell> _monthNames;
  List<NxCell> get monthNames => _$this._monthNames;
  set monthNames(List<NxCell> monthNames) => _$this._monthNames = monthNames;

  List<NxCell> _longDayNames;
  List<NxCell> get longDayNames => _$this._longDayNames;
  set longDayNames(List<NxCell> longDayNames) =>
      _$this._longDayNames = longDayNames;

  List<NxCell> _longMonthNames;
  List<NxCell> get longMonthNames => _$this._longMonthNames;
  set longMonthNames(List<NxCell> longMonthNames) =>
      _$this._longMonthNames = longMonthNames;

  CalendarStringsBuilder();

  CalendarStringsBuilder get _$this {
    if (_$v != null) {
      _dayNames = _$v.dayNames;
      _monthNames = _$v.monthNames;
      _longDayNames = _$v.longDayNames;
      _longMonthNames = _$v.longMonthNames;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalendarStrings other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CalendarStrings;
  }

  @override
  void update(void updates(CalendarStringsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CalendarStrings build() {
    final _$result = _$v ??
        new _$CalendarStrings._(
            dayNames: dayNames,
            monthNames: monthNames,
            longDayNames: longDayNames,
            longMonthNames: longMonthNames);
    replace(_$result);
    return _$result;
  }
}
