import 'dart:async';
import '../rpc/handle_object.dart';
import '../rpc/rpc.dart';
import '../models.dart';
import 'package:built_collection/built_collection.dart';

/// This class describes all the methods that apply at measure level.
/// The _handle_ member in the JSON request for all methods listed in this section is the handle of the measure.
class GenericMeasure extends HandleObject {
  GenericMeasure(Rpc rpc, int handle) : super(rpc, handle);

  String get serviceType => 'GenericMeasure';

  /// Evaluates a measure and displays its properties, including the dynamic properties.
  Future<GenericMeasureLayout> getLayout() async {}

  /// Applies a patch to the properties of an object. Allows an update to some of the properties.
  /// <div class=tip>Applying a patch takes less time than resetting all the properties.</div>
  Future<void> applyPatches(BuiltList<NxCell> qPatches) async {}

  /// Sets some properties for a measure.
  Future<void> setProperties(GenericMeasureProperties qProp) async {}

  /// Shows the properties of an object.
  /// Returns the identifier and the definition of the measure.
  /// <div class=note>If the member delta is set to true in the request object, only the delta is retrieved.</div>
  /// The following is always returned in the output:
  Future<GenericMeasureProperties> getProperties() async {}

  /// Returns the type and identifier of the object.
  Future<NxInfo> getInfo() async {}

  /// Returns the definition of a measure.
  Future<NxLibraryMeasureDef> getMeasure() async {}

  /// Lists the linked objects to a generic object, a dimension or a measure.
  Future<BuiltList<NxCell>> getLinkedObjects() async {}

  /// Publishes a measure.
  Future<void> publish() async {}

  /// Unpublishes a measure.
  Future<void> unPublish() async {}
}
