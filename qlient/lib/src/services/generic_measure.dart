import '../models.dart';
/// This class describes all the methods that apply at measure level.
/// The _handle_ member in the JSON request for all methods listed in this section is the handle of the measure.
class GenericMeasure {
  /// Evaluates a measure and displays its properties, including the dynamic properties.
  getLayout() {}
  /// Applies a patch to the properties of an object. Allows an update to some of the properties.
  /// <div class=tip>Applying a patch takes less time than resetting all the properties.</div>
  applyPatches(List<NxCell> qPatches) {}
  /// Sets some properties for a measure.
  setProperties(GenericMeasureProperties qProp) {}
  /// Shows the properties of an object.
  /// Returns the identifier and the definition of the measure.
  /// <div class=note>If the member delta is set to true in the request object, only the delta is retrieved.</div>
  /// The following is always returned in the output:
  getProperties() {}
  /// Returns the type and identifier of the object.
  getInfo() {}
  /// Returns the definition of a measure.
  getMeasure() {}
  /// Lists the linked objects to a generic object, a dimension or a measure.
  getLinkedObjects() {}
  /// Publishes a measure.
  publish() {}
  /// Unpublishes a measure.
  unPublish() {}
}
