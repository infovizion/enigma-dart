import '../models.dart';
/// This class describes all the methods that apply at dimension level.
/// The _handle_ member in the JSON request for all methods listed in this section is the handle of the dimension.
class GenericDimension {
  /// Evaluates a dimension and displays its properties, including the dynamic properties.
  getLayout() {}
  /// Applies a patch to the properties of an object. Allows an update to some of the properties.
  /// <div class=tip>Applying a patch takes less time than resetting all the properties.</div>
  applyPatches(List<NxCell> qPatches) {}
  /// Sets some properties for a dimension.
  setProperties(GenericDimensionProperties qProp) {}
  /// Shows the properties of an object.
  /// Returns the identifier and the definition of the dimension.
  /// <div class=note>If the member delta is set to true in the request object, only the delta is retrieved.</div>
  getProperties() {}
  /// Returns the type and identifier of the object.
  getInfo() {}
  /// Returns the definition of a dimension.
  /// 
  /// The definition of the dimension is returned.
  getDimension() {}
  /// Lists the linked objects to a generic object, a dimension or a measure.
  getLinkedObjects() {}
  /// Publishes a dimension.
  publish() {}
  /// Unpublishes a dimension.
  unPublish() {}
}
