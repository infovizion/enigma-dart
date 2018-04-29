import 'dart:async';
import '../enigma/base_service.dart';
import '../enigma/enigma.dart';
import '../models.dart';
import 'package:built_collection/built_collection.dart';

/// This class describes all the methods that apply at generic variable level.
/// The _handle_ member in the JSON request for all methods listed in this section is the handle of the generic variable.
class GenericVariable extends BaseService {
  GenericVariable(Enigma enigma, int handle) : super(enigma, handle);

  String get serviceType => 'GenericVariable';

  /// Evaluates an object and displays its properties including the dynamic properties.
  /// If the member _delta_ is set to true in the request object, only the delta is evaluated.
  Future<GenericVariableLayout> getLayout() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetLayout', params);
  }

  /// Applies a patch to the properties of a variable. Allows an update to some of the properties.
  /// <div class=tip>Applying a patch takes less time than resetting all the properties.</div>
  Future<void> applyPatches(BuiltList<NxCell> patches) async {
    var params = <String, dynamic>{};
    var rawResult = await query('ApplyPatches', params);
  }

  /// Sets some properties for a variable.
  /// <div class=note>The identifier of a variable cannot be modified.</div> <div class=note>You cannot update the properties of a script-defined variable using the _SetProperties method_. </div>
  Future<void> setProperties(GenericVariableProperties prop) async {
    var params = <String, dynamic>{};
    var rawResult = await query('SetProperties', params);
  }

  /// Shows the properties of an object.
  /// <div class=note>If the member **delta** is set to true in the request, only the delta is retrieved. </div>
  /// The following is always returned in the output:
  Future<GenericVariableProperties> getProperties() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetProperties', params);
  }

  /// Returns the type and identifier of the object.
  Future<NxInfo> getInfo() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetInfo', params);
  }

  /// Sets a string value to a variable.
  /// <div class=note>These changes are not persistent. They only last the duration of the engine session.</div>
  Future<void> setStringValue(String val) async {
    var params = <String, dynamic>{};
    params['qVal'] = val;
    var rawResult = await query('SetStringValue', params);
  }

  /// Sets a numerical value to a variable.
  /// <div class=note>These changes are not persistent. They only last the duration of the engine session.</div>
  Future<void> setNumValue(num val) async {
    var params = <String, dynamic>{};
    params['qVal'] = val;
    var rawResult = await query('SetNumValue', params);
  }

  /// Sets the value of a dual variable.
  /// <div class=note>These changes are not persistent. They only last the duration of the engine session.</div>
  Future<void> setDualValue(String text, num qNum) async {
    var params = <String, dynamic>{};
    params['qText'] = text;
    params['qNum'] = qNum;
    var rawResult = await query('SetDualValue', params);
  }
}
