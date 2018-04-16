/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'import_'nx_cell_dart';.dart';
import 'nx_group_tail.dart';
import 'rect.dart';

class NxDataPage {
  /// Array of data.
  List<List<import 'nx_cell.dart';>> matrix;
  /// Array of tails.
  /// Is used for hypercube objects with multiple dimensions. It might happen that due to the window size some elements in a group cannot be displayed in the same page as the other elements of the group. Elements of a group of dimensions can be part of the previous or the next tail.
  /// If there is no tail, the array is empty _[ ]_ .
  List<NxGroupTail> tails;
  /// Size and offset of the data in the matrix.
  Rect area;
  /// Is set to true, if the data have been reduced.
  /// The default value is false.
  bool isReduced;
}

