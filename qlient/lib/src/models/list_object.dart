/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'size.dart';
import 'nx_validation_error.dart';
import 'nx_dimension_info.dart';
import 'nx_cell.dart';

/// Renders the properties of a list object. Is the layout for _ListObjectDef_.
/// For more information about the definition of a list object, see _Generic object_.
/// <div class=note>ListObject is used by the _GetLayout Method_ to display the properties of a list object. </div>
class ListObject {
  /// Name of the alternate state.
  /// Default is current selections _$_ .
  /// Original name: qStateName
  String stateName;
  /// Defines the size of a list object.
  /// Original name: qSize
  Size size;
  /// This parameter is optional and is displayed in case of error.
  /// Original name: qError
  NxValidationError error;
  /// Information about the dimension.
  /// Original name: qDimensionInfo
  NxDimensionInfo dimensionInfo;
  /// Lists the expressions in the list object.
  /// Original name: qExpressions
  List<NxCell> expressions;
  /// Set of data.
  /// Is empty if nothing has been defined in **qInitialDataFetch** in _ListObjectDef_.
  /// Original name: qDataPages
  List<NxCell> dataPages;
}

