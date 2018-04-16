/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'field_attributes.dart';

class NxInlineMeasureDef {
  /// Name of the measure.
  /// An empty string is returned as a default value.
  /// This parameter is optional.
  String label;
  /// Description of the measure.
  /// An empty string is returned as a default value.
  /// This parameter is optional.
  String description;
  /// Name connected to the measure that is used for search purposes.
  /// A measure can have several tags.
  /// This parameter is optional.
  List<String> tags;
  /// Default value is no grouping.
  /// This parameter is optional.
  /// 
  /// One of:
  /// * N or GRP_NX_NONE
  /// * H or GRP_NX_HIEARCHY
  /// * C or GRP_NX_COLLECTION
  String grouping;
  /// Definition of the expression in the measure.
  /// Example: _Sum (OrderTotal)_
  /// This parameter is mandatory.
  String def;
  /// Format of the field.
  /// This parameter is optional.
  FieldAttributes numFormat;
  /// If set to true, percentage values are returned instead of absolute numbers.
  /// Default value is false.
  /// This parameter is optional.
  bool relative;
  /// If set to true, the sum of rows total should be used rather than real expression total.
  /// This parameter is optional and applies to straight tables.
  /// Default value is false.
  /// If using the Qlik Sense interface, it means that the total mode is set to **Expression Total** .
  bool brutalSum;
  /// Aggregate function.
  /// For more information on the aggregate function syntax, see the section Working with Qlik Sense on the online help portal.
  /// The default value is 0 (Sum of rows)
  /// This parameter is optional.
  String aggrFunc;
  /// * 0 means no accumulation
  ///                             * 1 means full accumulation (each y-value accumulates all previous y-values of the expression)
  ///                             * ≥ 2 means accumulate as many steps as the _qAccumulate_ value
  /// Default value is 0.
  /// This parameter is optional.
  int accumulate;
  /// If set to true, it inverts the sort criteria in the field.
  bool reverseSort;
  /// Index of the active expression in a cyclic measure. The indexing starts from 0.
  /// The default value is 0.
  /// This parameter is optional.
  int activeExpression;
  /// Array of expressions. This parameter is used in case of cyclic measures ( _qGrouping_ is C). List of the expressions in the cyclic group.
  List<String> expressions;
  /// Label expression.
  /// This parameter is optional.
  String labelExpression;
}

