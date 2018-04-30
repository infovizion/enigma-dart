import 'dart:async';
import '../enigma/base_service.dart';
import '../enigma/enigma.dart';
import '../models.dart';
import '../serializers/json_serializer.dart';
import 'package:built_collection/built_collection.dart';

/// This class describes all the methods that apply at field level.
/// The handle member in the JSON request for all methods listed in this section is the handle of the field.
class Field extends BaseService {
  Field(Enigma enigma, int handle) : super(enigma, handle);

  String get serviceType => 'Field';

  /// Retrieves the number of distinct values in a field.
  Future<int> getCardinal() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetCardinal', params);
    return rawResult['result']['qReturn'];
  }

  /// Returns the AND mode status of a field.
  Future<bool> getAndMode() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetAndMode', params);
    return rawResult['result']['qReturn'];
  }

  /// Selects some values in a field, by entering the values to select.
  Future<bool> selectValues(
      BuiltList<NxCell> fieldValues, bool toggleMode, bool softLock) async {
    var params = <String, dynamic>{};
    params['qToggleMode'] = toggleMode;
    params['qSoftLock'] = softLock;
    var rawResult = await query('SelectValues', params);
    return rawResult['result']['qReturn'];
  }

  /// Selects field values matching a search string.
  Future<bool> select(
      String match, bool softLock, int excludedValuesMode) async {
    var params = <String, dynamic>{};
    params['qMatch'] = match;
    params['qSoftLock'] = softLock;
    params['qExcludedValuesMode'] = excludedValuesMode;
    var rawResult = await query('Select', params);
    return rawResult['result']['qReturn'];
  }

  /// Toggle selects field values matching a search string.
  Future<bool> toggleSelect(
      String match, bool softLock, int excludedValuesMode) async {
    var params = <String, dynamic>{};
    params['qMatch'] = match;
    params['qSoftLock'] = softLock;
    params['qExcludedValuesMode'] = excludedValuesMode;
    var rawResult = await query('ToggleSelect', params);
    return rawResult['result']['qReturn'];
  }

  /// Maintains the selections in the current field while clearing the selections in the other fields.
  Future<bool> clearAllButThis(bool softLock) async {
    var params = <String, dynamic>{};
    params['qSoftLock'] = softLock;
    var rawResult = await query('ClearAllButThis', params);
    return rawResult['result']['qReturn'];
  }

  /// Selects all possible values in a specific field.
  Future<bool> selectPossible(bool softLock) async {
    var params = <String, dynamic>{};
    params['qSoftLock'] = softLock;
    var rawResult = await query('SelectPossible', params);
    return rawResult['result']['qReturn'];
  }

  /// Inverts the current selections.
  Future<bool> selectExcluded(bool softLock) async {
    var params = <String, dynamic>{};
    params['qSoftLock'] = softLock;
    var rawResult = await query('SelectExcluded', params);
    return rawResult['result']['qReturn'];
  }

  /// Selects all values of a field. Excluded values are also selected.
  Future<bool> selectAll(bool softLock) async {
    var params = <String, dynamic>{};
    params['qSoftLock'] = softLock;
    var rawResult = await query('SelectAll', params);
    return rawResult['result']['qReturn'];
  }

  /// Locks all selected values of a specific field.
  Future<bool> lock() async {
    var params = <String, dynamic>{};
    var rawResult = await query('Lock', params);
    return rawResult['result']['qReturn'];
  }

  /// Unlocks all selected values of a specific field if the target (or handle ) is a field.
  Future<bool> unlock() async {
    var params = <String, dynamic>{};
    var rawResult = await query('Unlock', params);
    return rawResult['result']['qReturn'];
  }

  /// Gets the properties of a field.
  ///
  /// <div class=note>The property _OneAndOnlyOne_ is set to true if one and only value has been selected in the field prior setting the property. </div>
  Future<NxFieldProperties> getNxProperties() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetNxProperties', params);
    var jsonData = rawResult['result']['qProperties'];
    var dartData = fromJson<NxFieldProperties>(NxFieldProperties, jsonData);
    return dartData;
  }

  /// Sets some properties to a field.
  Future<void> setNxProperties(NxFieldProperties properties) async {
    var params = <String, dynamic>{};
    var rawResult = await query('SetNxProperties', params);
  }

  /// Sets a field in the AND mode.
  Future<void> setAndMode(bool andMode) async {
    var params = <String, dynamic>{};
    params['qAndMode'] = andMode;
    var rawResult = await query('SetAndMode', params);
  }

  /// Selects all alternatives values in a specific field.
  /// <div class=note>In a field that contains at least one selected value, the values that are neither selected nor excluded are alternatives values.</div>
  Future<bool> selectAlternative(bool softLock) async {
    var params = <String, dynamic>{};
    params['qSoftLock'] = softLock;
    var rawResult = await query('SelectAlternative', params);
    return rawResult['result']['qReturn'];
  }

  /// Selects some values in a field, by entering the element numbers related to the values to select.
  Future<bool> lowLevelSelect(
      BuiltList<NxCell> values, bool toggleMode, bool softLock) async {
    var params = <String, dynamic>{};
    params['qToggleMode'] = toggleMode;
    params['qSoftLock'] = softLock;
    var rawResult = await query('LowLevelSelect', params);
    return rawResult['result']['qReturn'];
  }

  /// Clears the selections in a specific field.
  Future<bool> clear() async {
    var params = <String, dynamic>{};
    var rawResult = await query('Clear', params);
    return rawResult['result']['qReturn'];
  }
}
