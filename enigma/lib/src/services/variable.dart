import 'dart:async';
import '../enigma/base_service.dart';
import '../enigma/enigma.dart';
import '../models.dart';
import '../serializers/json_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

/// This class describes all the methods that apply at variable level.
/// <div class=note>Methods in this class are deprecated. Use methods in the _GenericVariableClass_ instead. </div>
/// The _handle_ member in the JSON request for all methods listed in this section is the handle of the variable.
class Variable extends BaseService {
  Variable(Enigma enigma, int handle) : super(enigma, handle);

  String get serviceType => 'Variable';

  /// Returns the calculated value of a variable.
  Future<AlfaNumString> getContent() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetContent', __params);
    var __jsonData = rawResult['result']['qContent'];
    var __dartData = fromJsonFullType<AlfaNumString>(
        const FullType(AlfaNumString), __jsonData);
    return __dartData;
  }

  /// Returns the raw value of a variable.
  Future<String> getRawContent() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetRawContent', __params);
    return rawResult['result']['qReturn'];
  }

  /// Sets a value to a variable.
  Future<bool> setContent(String content, bool updateMRU) async {
    var __params = <String, dynamic>{};
    __params['qContent'] = content;
    __params['qUpdateMRU'] = updateMRU;
    var rawResult = await query('SetContent', __params);
    return rawResult['result']['qReturn'];
  }

  /// Sets the value of a dual variable overriding any input constraints.
  Future<void> forceContent(String s, num d) async {
    var __params = <String, dynamic>{};
    __params['qs'] = s;
    __params['qd'] = d;
    var rawResult = await query('ForceContent', __params);
  }

  /// Gets the properties of a variable.
  Future<NxVariableProperties> getNxProperties() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetNxProperties', __params);
    var __jsonData = rawResult['result']['qProperties'];
    var __dartData = fromJsonFullType<NxVariableProperties>(
        const FullType(NxVariableProperties), __jsonData);
    return __dartData;
  }

  /// Sets some properties to a variable.
  Future<void> setNxProperties(NxVariableProperties properties) async {
    var __params = <String, dynamic>{};
    __params['qProperties'] =
        toJson(properties, specifiedType: const FullType(NxVariableProperties));
    var rawResult = await query('SetNxProperties', __params);
  }
}
