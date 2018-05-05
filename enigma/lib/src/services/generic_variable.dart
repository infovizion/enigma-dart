import 'dart:async';
import '../enigma/base_service.dart';
import '../enigma/enigma.dart';
import '../models.dart';
import '../serializers/json_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

/// This class describes all the methods that apply at generic variable level.
/// The _handle_ member in the JSON request for all methods listed in this section is the handle of the generic variable.
class GenericVariable extends BaseService {
  GenericVariable(Enigma enigma, int handle) : super(enigma, handle);

  String get serviceType => 'GenericVariable';

  /// Evaluates an object and displays its properties including the dynamic properties.
  /// If the member _delta_ is set to true in the request object, only the delta is evaluated.
  Future<GenericVariableLayout> getLayout() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetLayout', __params);
    var __jsonData = rawResult['result']['qLayout'];
    var __dartData = fromJsonFullType<GenericVariableLayout>(
        const FullType(GenericVariableLayout), __jsonData);
    return __dartData;
  }

  /// Applies a patch to the properties of a variable. Allows an update to some of the properties.
  /// <div class=tip>Applying a patch takes less time than resetting all the properties.</div>
  Future<void> applyPatches(NxPatch patches) async {
    var __params = <String, dynamic>{};
    __params['qPatches'] =
        toJson(patches, specifiedType: const FullType(NxPatch));
    var rawResult = await query('ApplyPatches', __params);
  }

  /// Sets some properties for a variable.
  /// <div class=note>The identifier of a variable cannot be modified.</div> <div class=note>You cannot update the properties of a script-defined variable using the _SetProperties method_. </div>
  Future<void> setProperties(GenericVariableProperties prop) async {
    var __params = <String, dynamic>{};
    __params['qProp'] =
        toJson(prop, specifiedType: const FullType(GenericVariableProperties));
    var rawResult = await query('SetProperties', __params);
  }

  /// Shows the properties of an object.
  /// <div class=note>If the member **delta** is set to true in the request, only the delta is retrieved. </div>
  /// The following is always returned in the output:
  Future<GenericVariableProperties> getProperties() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetProperties', __params);
    var __jsonData = rawResult['result']['qProp'];
    var __dartData = fromJsonFullType<GenericVariableProperties>(
        const FullType(GenericVariableProperties), __jsonData);
    return __dartData;
  }

  /// Returns the type and identifier of the object.
  Future<NxInfo> getInfo() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetInfo', __params);
    var __jsonData = rawResult['result']['qInfo'];
    var __dartData =
        fromJsonFullType<NxInfo>(const FullType(NxInfo), __jsonData);
    return __dartData;
  }

  /// Sets a string value to a variable.
  /// <div class=note>These changes are not persistent. They only last the duration of the engine session.</div>
  Future<void> setStringValue(String val) async {
    var __params = <String, dynamic>{};
    __params['qVal'] = val;
    var rawResult = await query('SetStringValue', __params);
  }

  /// Sets a numerical value to a variable.
  /// <div class=note>These changes are not persistent. They only last the duration of the engine session.</div>
  Future<void> setNumValue(num val) async {
    var __params = <String, dynamic>{};
    __params['qVal'] = val;
    var rawResult = await query('SetNumValue', __params);
  }

  /// Sets the value of a dual variable.
  /// <div class=note>These changes are not persistent. They only last the duration of the engine session.</div>
  Future<void> setDualValue(String text, num qNum) async {
    var __params = <String, dynamic>{};
    __params['qText'] = text;
    __params['qNum'] = qNum;
    var rawResult = await query('SetDualValue', __params);
  }
}
