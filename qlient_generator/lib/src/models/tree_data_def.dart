/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'nx_tree_dimension_def.dart';
import 'nx_calc_cond.dart';
import 'string_expr.dart';

/// Defines the properties of a TreeData object.
/// For more information about the definition of a TreeData object, see _Generic object_.
class TreeDataDef {
  /// Name of the alternate state.
  /// Default is current selections _$_ .
  String stateName;
  /// Array of dimensions.
  List<NxTreeDimensionDef> dimensions;
  /// Defines the order of the dimension levels/columns in the TreeData object.
  /// Column numbers are separated by a comma.
  /// Example: [1,0,2] means that the first level in the tree structure is dimension 1, followed by dimension 0 and dimension 2.
  /// The default sort order is the order in which the dimensions and measures have been defined in the TreeDataDef.
  List<int> interColumnSortOrder;
  /// Removes zero values.
  bool suppressZero;
  /// Removes missing values.
  bool suppressMissing;
  /// If this property is set to true, the cells are opened expanded. The default value is false.
  bool openFullyExpanded;
  /// If this property is set to true, the missing symbols (if any) are replaced by 0 if the value is a numeric and by an empty string if the value is a string.
  /// The default value is false.
  bool populateMissing;
  /// Specifies a calculation condition object.
  /// If CalcCondition.Cond is not fulfilled, the TreeData is excluded from the calculation and CalcCondition.Msg is evaluated.
  /// By default, there is no calculation condition.
  /// This property is optional.
  NxCalcCond calcCondition;
  /// Title of the TreeData object, for example the title of a chart.
  StringExpr title;
}

