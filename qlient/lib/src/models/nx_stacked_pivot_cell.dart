/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'nx_stacked_pivot_cell.dart';
import 'nx_attribute_expression_values.dart';
import 'nx_attribute_dim_values.dart';

class NxStackedPivotCell {
  /// Some text.
  String text;
  /// Rank number of the value.
  /// If set to -1, it means that the value is not an element number.
  int elemNo;
  /// Value of the cell.
  /// Is set to _NaN_ , if the value is not a number.
  num value;
  /// If set to true, it means that the cell can be expanded.
  /// This parameter is not returned if it is set to false.
  bool canExpand;
  /// If set to true, it means that the cell can be collapsed.
  /// This parameter is not returned if it is set to false.
  bool canCollapse;
  /// Type of the cell.
  /// 
  /// One of:
  /// * V or NX_DIM_CELL_VALUE
  /// * E or NX_DIM_CELL_EMPTY
  /// * N or NX_DIM_CELL_NORMAL
  /// * T or NX_DIM_CELL_TOTAL
  /// * O or NX_DIM_CELL_OTHER
  /// * A or NX_DIM_CELL_AGGR
  /// * P or NX_DIM_CELL_PSEUDO
  /// * R or NX_DIM_CELL_ROOT
  /// * U or NX_DIM_CELL_NULL
  /// * G or NX_DIM_CELL_GENERATED
  String type;
  /// Total of the positive values in the current group of cells.
  num maxPos;
  /// Total of the negative values in the current group of cells.
  num minNeg;
  /// Number of elements that are part of the previous tail.
  int up;
  /// Number of elements that are part of the next tail.
  int down;
  /// Row index in the data matrix.
  /// The indexing starts from 0.
  int row;
  /// Information about sub nodes (or sub cells).
  /// The array is empty _[ ]_ when there are no sub nodes.
  List<NxStackedPivotCell> subNodes;
  /// Attribute expressions values.
  NxAttributeExpressionValues attrExps;
  /// Attribute dimensions values.
  NxAttributeDimValues attrDims;
}

