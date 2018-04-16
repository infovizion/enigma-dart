/// This code was autogenerated
import 'package:built_value/built_value.dart';


class NxLibraryMeasureDef {
  /// Label of the measure.
  String label;
  /// Definition of the measure.
  String def;
  /// Used to define a cyclic group or drill-down group.
  /// Default value is no grouping.
  /// This parameter is optional.
  /// 
  /// One of:
  /// * N or GRP_NX_NONE
  /// * H or GRP_NX_HIEARCHY
  /// * C or GRP_NX_COLLECTION
  String grouping;
  /// Array of expressions.
  List<String> expressions;
  /// Index to the active expression in a measure.
  int activeExpression;
  String labelExpression;
}

