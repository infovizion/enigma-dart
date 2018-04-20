/// This code was autogenerated
//import 'package:built_value/built_value.dart';
import 'nx_cell.dart';

class NxLibraryMeasureDef {
  /// Label of the measure.
  /// Original name: qLabel
  String label;
  /// Definition of the measure.
  /// Original name: qDef
  String def;
  /// Used to define a cyclic group or drill-down group.
  /// Default value is no grouping.
  /// This parameter is optional.
  /// 
  /// One of:
  /// * N or GRP_NX_NONE
  /// * H or GRP_NX_HIEARCHY
  /// * C or GRP_NX_COLLECTION
  /// Original name: qGrouping
  String grouping;
  /// Array of expressions.
  /// Original name: qExpressions
  List<NxCell> expressions;
  /// Index to the active expression in a measure.
  /// Original name: qActiveExpression
  int activeExpression;
  /// Original name: qLabelExpression
  String labelExpression;
}

