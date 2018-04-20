import '../models.dart';
/// This class describes all the methods that apply at variable level.
/// <div class=note>Methods in this class are deprecated. Use methods in the _GenericVariableClass_ instead. </div>
/// The _handle_ member in the JSON request for all methods listed in this section is the handle of the variable.
class Variable {
  /// Returns the calculated value of a variable.
  getContent() {}
  /// Returns the raw value of a variable.
  getRawContent() {}
  /// Sets a value to a variable.
  setContent(String qContent, bool qUpdateMRU) {}
  /// Sets the value of a dual variable overriding any input constraints.
  forceContent(String qs, num qd) {}
  /// Gets the properties of a variable.
  getNxProperties() {}
  /// Sets some properties to a variable.
  setNxProperties(NxVariableProperties qProperties) {}
}
