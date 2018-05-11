import 'dart:async';
import '../enigma/base_service.dart';
import '../enigma/enigma.dart';
import '../models.dart';
import '../serializers/json_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

/// This class describes all the methods that apply at field level.
/// The handle member in the JSON request for all methods listed in this section is the handle of the field.
class Field extends BaseService {
  Field(Enigma enigma, int handle) : super(enigma, handle);

  String get serviceType => 'Field';

  /// Retrieves the number of distinct values in a field.
  Future<int> getCardinal() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetCardinal', __params);
    return rawResult['result']['qReturn'];
  }

  /// Returns the AND mode status of a field.
  Future<bool> getAndMode() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetAndMode', __params);
    return rawResult['result']['qReturn'];
  }

  /// Selects some values in a field, by entering the values to select.
  Future<bool> selectValues(List<FieldValue> fieldValues,
      {bool toggleMode, bool softLock}) async {
    var __params = <String, dynamic>{};
    __params['qFieldValues'] = toJson(fieldValues,
        specifiedType:
            const FullType(BuiltList, const [const FullType(FieldValue)]));
    if (toggleMode != null) {
      __params['qToggleMode'] = toggleMode;
    }
    if (softLock != null) {
      __params['qSoftLock'] = softLock;
    }
    var rawResult = await query('SelectValues', __params);
    return rawResult['result']['qReturn'];
  }

  /// Selects field values matching a search string.
  Future<bool> select(String match,
      {bool softLock, int excludedValuesMode}) async {
    var __params = <String, dynamic>{};
    __params['qMatch'] = match;
    if (softLock != null) {
      __params['qSoftLock'] = softLock;
    }
    if (excludedValuesMode != null) {
      __params['qExcludedValuesMode'] = excludedValuesMode;
    }
    var rawResult = await query('Select', __params);
    return rawResult['result']['qReturn'];
  }

  /// Toggle selects field values matching a search string.
  Future<bool> toggleSelect(String match,
      {bool softLock, int excludedValuesMode}) async {
    var __params = <String, dynamic>{};
    __params['qMatch'] = match;
    if (softLock != null) {
      __params['qSoftLock'] = softLock;
    }
    if (excludedValuesMode != null) {
      __params['qExcludedValuesMode'] = excludedValuesMode;
    }
    var rawResult = await query('ToggleSelect', __params);
    return rawResult['result']['qReturn'];
  }

  /// Maintains the selections in the current field while clearing the selections in the other fields.
  Future<bool> clearAllButThis({bool softLock}) async {
    var __params = <String, dynamic>{};
    if (softLock != null) {
      __params['qSoftLock'] = softLock;
    }
    var rawResult = await query('ClearAllButThis', __params);
    return rawResult['result']['qReturn'];
  }

  /// Selects all possible values in a specific field.
  Future<bool> selectPossible({bool softLock}) async {
    var __params = <String, dynamic>{};
    if (softLock != null) {
      __params['qSoftLock'] = softLock;
    }
    var rawResult = await query('SelectPossible', __params);
    return rawResult['result']['qReturn'];
  }

  /// Inverts the current selections.
  Future<bool> selectExcluded({bool softLock}) async {
    var __params = <String, dynamic>{};
    if (softLock != null) {
      __params['qSoftLock'] = softLock;
    }
    var rawResult = await query('SelectExcluded', __params);
    return rawResult['result']['qReturn'];
  }

  /// Selects all values of a field. Excluded values are also selected.
  Future<bool> selectAll({bool softLock}) async {
    var __params = <String, dynamic>{};
    if (softLock != null) {
      __params['qSoftLock'] = softLock;
    }
    var rawResult = await query('SelectAll', __params);
    return rawResult['result']['qReturn'];
  }

  /// Locks all selected values of a specific field.
  Future<bool> lock() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('Lock', __params);
    return rawResult['result']['qReturn'];
  }

  /// Unlocks all selected values of a specific field if the target (or handle ) is a field.
  Future<bool> unlock() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('Unlock', __params);
    return rawResult['result']['qReturn'];
  }

  /// Gets the properties of a field.
  ///
  /// <div class=note>The property _OneAndOnlyOne_ is set to true if one and only value has been selected in the field prior setting the property. </div>
  Future<NxFieldProperties> getNxProperties() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetNxProperties', __params);
    var __jsonData = rawResult['result']['qProperties'];
    var __dartData = fromJsonFullType<NxFieldProperties>(
        const FullType(NxFieldProperties), __jsonData);
    return __dartData;
  }

  /// Sets some properties to a field.
  Future<void> setNxProperties(NxFieldProperties properties) async {
    var __params = <String, dynamic>{};
    __params['qProperties'] =
        toJson(properties, specifiedType: const FullType(NxFieldProperties));
    var rawResult = await query('SetNxProperties', __params);
  }

  /// Sets a field in the AND mode.
  Future<void> setAndMode(bool andMode) async {
    var __params = <String, dynamic>{};
    __params['qAndMode'] = andMode;
    var rawResult = await query('SetAndMode', __params);
  }

  /// Selects all alternatives values in a specific field.
  /// <div class=note>In a field that contains at least one selected value, the values that are neither selected nor excluded are alternatives values.</div>
  Future<bool> selectAlternative({bool softLock}) async {
    var __params = <String, dynamic>{};
    if (softLock != null) {
      __params['qSoftLock'] = softLock;
    }
    var rawResult = await query('SelectAlternative', __params);
    return rawResult['result']['qReturn'];
  }

  /// Selects some values in a field, by entering the element numbers related to the values to select.
  Future<bool> lowLevelSelect(List<int> values, bool toggleMode,
      {bool softLock}) async {
    var __params = <String, dynamic>{};
    __params['qValues'] = values;
    __params['qToggleMode'] = toggleMode;
    if (softLock != null) {
      __params['qSoftLock'] = softLock;
    }
    var rawResult = await query('LowLevelSelect', __params);
    return rawResult['result']['qReturn'];
  }

  /// Clears the selections in a specific field.
  Future<bool> clear() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('Clear', __params);
    return rawResult['result']['qReturn'];
  }
}
