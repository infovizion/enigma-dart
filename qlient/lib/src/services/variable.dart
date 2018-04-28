import 'dart:async';
import '../rpc/handle_object.dart';
import '../rpc/rpc.dart';
import '../models.dart';
import 'package:built_collection/built_collection.dart';

/// This class describes all the methods that apply at variable level.
/// <div class=note>Methods in this class are deprecated. Use methods in the _GenericVariableClass_ instead. </div>
/// The _handle_ member in the JSON request for all methods listed in this section is the handle of the variable.
class Variable extends HandleObject {
  Variable(Rpc rpc, int handle) : super(rpc, handle);

  String get serviceType => 'Variable';

  /// Returns the calculated value of a variable.
  Future<AlfaNumString> getContent() async {}

  /// Returns the raw value of a variable.
  Future<String> getRawContent() async {}

  /// Sets a value to a variable.
  Future<bool> setContent(String qContent, bool qUpdateMRU) async {}

  /// Sets the value of a dual variable overriding any input constraints.
  Future<void> forceContent(String qs, num qd) async {}

  /// Gets the properties of a variable.
  Future<NxVariableProperties> getNxProperties() async {}

  /// Sets some properties to a variable.
  Future<void> setNxProperties(NxVariableProperties qProperties) async {}
}
