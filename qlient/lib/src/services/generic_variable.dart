import 'dart:async';
import '../rpc/handle_object.dart';
import '../rpc/rpc.dart';
import '../models.dart';
import 'package:built_collection/built_collection.dart';

/// This class describes all the methods that apply at generic variable level.
/// The _handle_ member in the JSON request for all methods listed in this section is the handle of the generic variable.
class GenericVariable extends HandleObject {
  GenericVariable(Rpc rpc, int handle) : super(rpc, handle);

  String get serviceType => 'GenericVariable';

  /// Evaluates an object and displays its properties including the dynamic properties.
  /// If the member _delta_ is set to true in the request object, only the delta is evaluated.
  Future<GenericVariableLayout> getLayout() async {}

  /// Applies a patch to the properties of a variable. Allows an update to some of the properties.
  /// <div class=tip>Applying a patch takes less time than resetting all the properties.</div>
  Future<void> applyPatches(BuiltList<NxCell> qPatches) async {}

  /// Sets some properties for a variable.
  /// <div class=note>The identifier of a variable cannot be modified.</div> <div class=note>You cannot update the properties of a script-defined variable using the _SetProperties method_. </div>
  Future<void> setProperties(GenericVariableProperties qProp) async {}

  /// Shows the properties of an object.
  /// <div class=note>If the member **delta** is set to true in the request, only the delta is retrieved. </div>
  /// The following is always returned in the output:
  Future<GenericVariableProperties> getProperties() async {}

  /// Returns the type and identifier of the object.
  Future<NxInfo> getInfo() async {}

  /// Sets a string value to a variable.
  /// <div class=note>These changes are not persistent. They only last the duration of the engine session.</div>
  Future<void> setStringValue(String qVal) async {}

  /// Sets a numerical value to a variable.
  /// <div class=note>These changes are not persistent. They only last the duration of the engine session.</div>
  Future<void> setNumValue(num qVal) async {}

  /// Sets the value of a dual variable.
  /// <div class=note>These changes are not persistent. They only last the duration of the engine session.</div>
  Future<void> setDualValue(String qText, num qNum) async {}
}
