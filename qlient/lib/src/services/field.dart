import '../models.dart';
/// This class describes all the methods that apply at field level.
/// The handle member in the JSON request for all methods listed in this section is the handle of the field.
class Field {
  /// Retrieves the number of distinct values in a field.
  getCardinal() {}
  /// Returns the AND mode status of a field.
  getAndMode() {}
  /// Selects some values in a field, by entering the values to select.
  selectValues(List<NxCell> qFieldValues, bool qToggleMode, bool qSoftLock) {}
  /// Selects field values matching a search string.
  select(String qMatch, bool qSoftLock, int qExcludedValuesMode) {}
  /// Toggle selects field values matching a search string.
  toggleSelect(String qMatch, bool qSoftLock, int qExcludedValuesMode) {}
  /// Maintains the selections in the current field while clearing the selections in the other fields.
  clearAllButThis(bool qSoftLock) {}
  /// Selects all possible values in a specific field.
  selectPossible(bool qSoftLock) {}
  /// Inverts the current selections.
  selectExcluded(bool qSoftLock) {}
  /// Selects all values of a field. Excluded values are also selected.
  selectAll(bool qSoftLock) {}
  /// Locks all selected values of a specific field.
  lock() {}
  /// Unlocks all selected values of a specific field if the target (or handle ) is a field.
  unlock() {}
  /// Gets the properties of a field.
  /// 
  /// <div class=note>The property _OneAndOnlyOne_ is set to true if one and only value has been selected in the field prior setting the property. </div>
  getNxProperties() {}
  /// Sets some properties to a field.
  setNxProperties(NxFieldProperties qProperties) {}
  /// Sets a field in the AND mode.
  setAndMode(bool qAndMode) {}
  /// Selects all alternatives values in a specific field.
  /// <div class=note>In a field that contains at least one selected value, the values that are neither selected nor excluded are alternatives values.</div>
  selectAlternative(bool qSoftLock) {}
  /// Selects some values in a field, by entering the element numbers related to the values to select.
  lowLevelSelect(List<NxCell> qValues, bool qToggleMode, bool qSoftLock) {}
  /// Clears the selections in a specific field.
  clear() {}
}
