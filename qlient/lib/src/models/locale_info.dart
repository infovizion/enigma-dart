/// This code was autogenerated
//import 'package:built_value/built_value.dart';
import 'calendar_strings.dart';

class LocaleInfo {
  /// Decimal separator.
  /// Original name: qDecimalSep
  String decimalSep;
  /// Thousand separator.
  /// Original name: qThousandSep
  String thousandSep;
  /// List separator.
  /// Original name: qListSep
  String listSep;
  /// Money decimal separator.
  /// Original name: qMoneyDecimalSep
  String moneyDecimalSep;
  /// Money thousand separator.
  /// Original name: qMoneyThousandSep
  String moneyThousandSep;
  /// Current year.
  /// Original name: qCurrentYear
  int currentYear;
  /// Money format.
  /// Example: _#.##0,00 kr;-#.##0,00 kr_
  /// Original name: qMoneyFmt
  String moneyFmt;
  /// Time format.
  /// Example: _hh:mm:ss_
  /// Original name: qTimeFmt
  String timeFmt;
  /// Date format.
  /// Example: _YYYY-MM-DD_
  /// Original name: qDateFmt
  String dateFmt;
  /// Time stamp format.
  /// Example: _YYYY-MM-DD hh:mm:ss[.fff]_
  /// Original name: qTimestampFmt
  String timestampFmt;
  /// Information about the calendar.
  /// Original name: qCalendarStrings
  CalendarStrings calendarStrings;
  /// First day of the week, starting from 0.
  /// According to ISO 8601, _Monday_ is the first day of the week.
  /// * 0 = Monday
  /// * 1 = Tuesday
  /// * ...
  /// * 6 = Sunday
  /// 
  /// If this property has not been set in a script, the returned value comes from the Windows operating system.
  /// Original name: qFirstWeekDay
  int firstWeekDay;
  /// Is set to true if broken weeks are allowed in a year.
  /// According to ISO 8601, no broken weeks should be allowed.
  /// This property is not shown if set to false.
  /// If _qBrokenWeeks_ is set to true, _qReferenceDay_ is irrelevant.
  /// If this property has not been set in a script, the returned value comes from the Windows operating system.
  /// Original name: qBrokenWeeks
  bool brokenWeeks;
  /// Day in the year that is always in week 1.
  /// According to ISO 8601, January 4th should always be part of the first week of the year ( _qReferenceDay_ =4).
  /// Recommended values are in the range 1 and 7.
  /// If this property has not been set in a script, the returned value comes from the Windows operating system.
  /// This property is not relevant if there are broken weeks in the year.
  /// Original name: qReferenceDay
  int referenceDay;
  /// First month of the year, starting from 1.
  /// According to ISO 8601, _January_ is the first month of the year.
  /// * 1 = January
  /// * 2 = February
  /// * 12 = January
  /// 
  /// If this property has not been set in a script, the returned value comes from the Windows operating system.
  /// Original name: qFirstMonthOfYear
  int firstMonthOfYear;
  /// Locale name (following language tagging convention RFC 4646):
  /// _&lt; language&gt;-&lt;REGION&gt;_
  /// Where:
  /// * _language_ is a lowercase ISO  639 language code
  /// * _REGION_ specifies an uppercase ISO 3166 country code.
  /// 
  /// If this property has not been set in a script, the returned value comes from the Windows operating system.
  /// Original name: qCollation
  String collation;
  /// Number format.
  /// Example: 3:k;6:M;9:G;12:T;15:P;18:E;21:Z;24:Y;-3:m;-6:μ;-9:n;-12:p;-15:f;-18:a;-21:z;-24:y
  /// Original name: qNumericalAbbreviation
  String numericalAbbreviation;
}

