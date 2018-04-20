/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'nx_inline_dimension_def.dart';
import 'other_total_spec_prop.dart';
import 'string_expr.dart';
import 'value_expr.dart';
import 'nx_attr_expr_def.dart';
import 'nx_attr_dim_def.dart';
import 'nx_calc_cond.dart';

/// <div class=note>Either **qDef** or **qLibraryId** must be set, but not both. </div> <div class=note>If the dimension is set in the hypercube and not in the library, this dimension cannot be shared with other objects.</div> <div class=note>A dimension that is set in the library can be used by many objects.</div>
class NxDimension {
  /// Refers to a dimension stored in the library.
  /// Original name: qLibraryId
  String libraryId;
  /// Refers to a dimension stored in the hypercube.
  /// Original name: qDef
  NxInlineDimensionDef def;
  /// If set to true, no null values are returned.
  /// Original name: qNullSuppression
  bool nullSuppression;
  /// Original name: qIncludeElemValue
  bool includeElemValue;
  /// Sets the dimension limits. Each dimension of a hypercube is configured separately.
  /// Defines if some values (grouped as _Others_ ) should be grouped together in the visualization.
  /// For example in a pie chart all values lower than 200 could be grouped together.
  /// Original name: qOtherTotalSpec
  OtherTotalSpecProp otherTotalSpec;
  /// Original name: qShowTotal
  bool showTotal;
  /// If set to true, all dimension values are shown.
  /// Original name: qShowAll
  bool showAll;
  /// This property is used when some dimension limits are set.
  /// Label of the _Others_ group. The default label is _Others_ .
  /// Example:
  /// _"qOtherLabel":"= &lt;label&gt;"_
  /// or
  /// _"qOtherLabel":{"qExpr":"= &lt;label&gt;"}_
  /// Where:
  /// * &lt; _label_ &gt; is the label of the _Others_ group.
  /// Original name: qOtherLabel
  StringExpr otherLabel;
  /// If this property is set, the total of the calculated values is returned.
  /// The default label is _Total_ .
  /// Example:
  /// _"qTotalLabel":"= &lt;label&gt;"_
  /// or
  /// _"qTotalLabel":{"qExpr":"= &lt;label&gt;"}_
  /// Where:
  /// * &lt; _label_ &gt; is the label of the _Total_ group.
  /// Original name: qTotalLabel
  StringExpr totalLabel;
  /// Specifies a calculation condition, which must be fulfilled for the dimension to be calculated.
  /// If the calculation condition is not met, the dimension is excluded from the calculation.
  /// By default, there is no calculation condition.
  /// This property is optional.
  /// Original name: qCalcCond
  ValueExpr calcCond;
  /// List of attribute expressions.
  /// Original name: qAttributeExpressions
  null attributeExpressions;
  /// List of attribute dimensions.
  /// Original name: qAttributeDimensions
  null attributeDimensions;
  /// Specifies a calculation condition object.
  /// If CalcCondition.Cond is not fulfilled, the dimension is excluded from the calculation and CalcCondition.Msg is evaluated.
  /// By default, there is no calculation condition.
  /// This property is optional.
  /// Original name: qCalcCondition
  NxCalcCond calcCondition;
}

