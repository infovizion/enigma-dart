import 'dart:async';
import '../enigma/base_service.dart';
import '../enigma/enigma.dart';
import '../models.dart';
import 'package:built_collection/built_collection.dart';

/// This class describes all the methods that apply at field level.
/// The handle member in the JSON request for all methods listed in this section is the handle of the field.
class Field extends BaseService {
  Field(Enigma enigma, int handle) : super(enigma, handle);

  String get serviceType => 'Field';

  /// Retrieves the number of distinct values in a field.
  Future<int> getCardinal() async {}

  /// Returns the AND mode status of a field.
  Future<bool> getAndMode() async {}

  /// Selects some values in a field, by entering the values to select.
  Future<bool> selectValues(BuiltList<NxCell> qFieldValues,
      {bool qToggleMode, bool qSoftLock}) async {}

  /// Selects field values matching a search string.
  Future<bool> select(String qMatch,
      {bool qSoftLock, int qExcludedValuesMode}) async {}

  /// Toggle selects field values matching a search string.
  Future<bool> toggleSelect(String qMatch,
      {bool qSoftLock, int qExcludedValuesMode}) async {}

  /// Maintains the selections in the current field while clearing the selections in the other fields.
  Future<bool> clearAllButThis({bool qSoftLock}) async {}

  /// Selects all possible values in a specific field.
  Future<bool> selectPossible({bool qSoftLock}) async {}

  /// Inverts the current selections.
  Future<bool> selectExcluded({bool qSoftLock}) async {}

  /// Selects all values of a field. Excluded values are also selected.
  Future<bool> selectAll({bool qSoftLock}) async {}

  /// Locks all selected values of a specific field.
  Future<bool> lock() async {}

  /// Unlocks all selected values of a specific field if the target (or handle ) is a field.
  Future<bool> unlock() async {}

  /// Gets the properties of a field.
  ///
  /// <div class=note>The property _OneAndOnlyOne_ is set to true if one and only value has been selected in the field prior setting the property. </div>
  Future<NxFieldProperties> getNxProperties() async {}

  /// Sets some properties to a field.
  Future<void> setNxProperties(NxFieldProperties qProperties) async {}

  /// Sets a field in the AND mode.
  Future<void> setAndMode(bool qAndMode) async {}

  /// Selects all alternatives values in a specific field.
  /// <div class=note>In a field that contains at least one selected value, the values that are neither selected nor excluded are alternatives values.</div>
  Future<bool> selectAlternative({bool qSoftLock}) async {}

  /// Selects some values in a field, by entering the element numbers related to the values to select.
  Future<bool> lowLevelSelect(BuiltList<NxCell> qValues, bool qToggleMode,
      {bool qSoftLock}) async {}

  /// Clears the selections in a specific field.
  Future<bool> clear() async {}
}
