// GENERATED CODE - DO NOT MODIFY BY HAND

part of calendar_strings;

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
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.dayNames != null) {
      result
        ..add('qDayNames')
        ..add(serializers.serialize(object.dayNames,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.monthNames != null) {
      result
        ..add('qMonthNames')
        ..add(serializers.serialize(object.monthNames,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.longDayNames != null) {
      result
        ..add('qLongDayNames')
        ..add(serializers.serialize(object.longDayNames,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.longMonthNames != null) {
      result
        ..add('qLongMonthNames')
        ..add(serializers.serialize(object.longMonthNames,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }

    return result;
  }

  @override
  CalendarStrings deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CalendarStringsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qDayNames':
          result.dayNames.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'qMonthNames':
          result.monthNames.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'qLongDayNames':
          result.longDayNames.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'qLongMonthNames':
          result.longMonthNames.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$CalendarStrings extends CalendarStrings {
  @override
  final BuiltList<String> dayNames;
  @override
  final BuiltList<String> monthNames;
  @override
  final BuiltList<String> longDayNames;
  @override
  final BuiltList<String> longMonthNames;

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

  ListBuilder<String> _dayNames;
  ListBuilder<String> get dayNames =>
      _$this._dayNames ??= new ListBuilder<String>();
  set dayNames(ListBuilder<String> dayNames) => _$this._dayNames = dayNames;

  ListBuilder<String> _monthNames;
  ListBuilder<String> get monthNames =>
      _$this._monthNames ??= new ListBuilder<String>();
  set monthNames(ListBuilder<String> monthNames) =>
      _$this._monthNames = monthNames;

  ListBuilder<String> _longDayNames;
  ListBuilder<String> get longDayNames =>
      _$this._longDayNames ??= new ListBuilder<String>();
  set longDayNames(ListBuilder<String> longDayNames) =>
      _$this._longDayNames = longDayNames;

  ListBuilder<String> _longMonthNames;
  ListBuilder<String> get longMonthNames =>
      _$this._longMonthNames ??= new ListBuilder<String>();
  set longMonthNames(ListBuilder<String> longMonthNames) =>
      _$this._longMonthNames = longMonthNames;

  CalendarStringsBuilder();

  CalendarStringsBuilder get _$this {
    if (_$v != null) {
      _dayNames = _$v.dayNames?.toBuilder();
      _monthNames = _$v.monthNames?.toBuilder();
      _longDayNames = _$v.longDayNames?.toBuilder();
      _longMonthNames = _$v.longMonthNames?.toBuilder();
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
    _$CalendarStrings _$result;
    try {
      _$result = _$v ??
          new _$CalendarStrings._(
              dayNames: _dayNames?.build(),
              monthNames: _monthNames?.build(),
              longDayNames: _longDayNames?.build(),
              longMonthNames: _longMonthNames?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dayNames';
        _dayNames?.build();
        _$failedField = 'monthNames';
        _monthNames?.build();
        _$failedField = 'longDayNames';
        _longDayNames?.build();
        _$failedField = 'longMonthNames';
        _longMonthNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CalendarStrings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
