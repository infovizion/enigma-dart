import 'dart:async';
import '../enigma/base_service.dart';
import '../enigma/enigma.dart';
import '../models.dart';
import 'package:built_collection/built_collection.dart';

class Doc extends BaseService {
  Doc(Enigma enigma, int handle) : super(enigma, handle);

  String get serviceType => 'Doc';

  /// Returns a handle to a field.
  Future<ObjectInterface> getField(String fieldName, String stateName) async {
    var params = <String, dynamic>{};
    params['qFieldName'] = fieldName;
    params['qStateName'] = stateName;
    var rawResult = await query('GetField', params);
  }

  /// Returns the description of a field.
  Future<FieldDescription> getFieldDescription(String fieldName) async {
    var params = <String, dynamic>{};
    params['qFieldName'] = fieldName;
    var rawResult = await query('GetFieldDescription', params);
  }

  /// Returns a handle to a variable.
  Future<ObjectInterface> getVariable(String name) async {
    var params = <String, dynamic>{};
    params['qName'] = name;
    var rawResult = await query('GetVariable', params);
  }

  /// Returns a list of table states.
  ///
  /// The following states apply:
  /// * 0 The table is not loosely coupled.
  /// * 1 The table is loosely coupled.
  /// * 2 The table is loosely coupled and cannot be changed to another state using the Qlik Engine API.
  ///
  /// <div class=note>The last three values in the vector are for internal use.</div>
  /// <div class=note>In case of circular references, the engine automatically sets the table state to loosely coupled to avoid creating loops.</div>
  Future<BuiltList<NxCell>> getLooselyCoupledVector() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetLooselyCoupledVector', params);
  }

  /// Sets a list of table states, one for each table.
  ///
  /// The following states apply:
  /// * 0 The table is not loosely coupled.
  /// * 1 The table is loosely coupled.
  /// * 2 The table is loosely coupled and cannot be changed to another state using the Qlik Engine API.
  ///
  /// <div class=note>The last three values in the vector are for internal use.</div>
  Future<bool> setLooselyCoupledVector(BuiltList<NxCell> v) async {
    var params = <String, dynamic>{};
    var rawResult = await query('SetLooselyCoupledVector', params);
    return rawResult['qReturn'];
  }

  /// Evaluates an expression and returns the result as a string.
  ///
  /// ### Example
  /// The client sends:
  /// ```
  /// {
  ///     "handle": 1,
  ///     "method": "Evaluate",
  ///     "params": {
  ///         "qExpression": "Sum(Holes)"
  ///     },
  ///     "id": 6,
  ///     "jsonrpc": "2.0"
  /// }
  /// ```
  /// The engine returns:
  /// ```
  /// {
  ///     "jsonrpc": "2.0",
  ///     "id": 6,
  ///     "result": {
  ///         "qReturn": "361716"
  ///     }
  /// }
  /// ```
  Future<String> evaluate(String expression) async {
    var params = <String, dynamic>{};
    params['qExpression'] = expression;
    var rawResult = await query('Evaluate', params);
    return rawResult['qReturn'];
  }

  /// Evaluates an expression and returns the result as a dual.
  ///
  /// ### Example
  /// The client sends:
  /// ```
  /// {
  ///     "handle": 1,
  ///     "method": "EvaluateEx",
  ///     "params": {
  ///         "qExpression": "Sum(Holes)"
  ///     },
  ///     "id": 7,
  ///     "jsonrpc": "2.0"
  /// }
  /// ```
  /// The engine returns:
  /// ```
  /// {
  ///     "jsonrpc": "2.0",
  ///     "id": 7,
  ///     "result": {
  ///         "qReturn": "361716"
  ///     }
  /// }
  /// ```
  Future<FieldValue> evaluateEx(String expression) async {
    var params = <String, dynamic>{};
    params['qExpression'] = expression;
    var rawResult = await query('EvaluateEx', params);
  }

  /// Clear selections in fields for current state. Locked fields are not cleared by default.
  Future<void> clearAll(bool lockedAlso, String stateName) async {
    var params = <String, dynamic>{};
    params['qLockedAlso'] = lockedAlso;
    params['qStateName'] = stateName;
    var rawResult = await query('ClearAll', params);
  }

  /// Locks all selections in fields for current state.
  Future<void> lockAll(String stateName) async {
    var params = <String, dynamic>{};
    params['qStateName'] = stateName;
    var rawResult = await query('LockAll', params);
  }

  /// Unlocks all selections in fields for current state.
  Future<void> unlockAll(String stateName) async {
    var params = <String, dynamic>{};
    params['qStateName'] = stateName;
    var rawResult = await query('UnlockAll', params);
  }

  /// Loads the last logical operation (if any).
  Future<void> back() async {
    var params = <String, dynamic>{};
    var rawResult = await query('Back', params);
  }

  /// Loads the next logical operation (if any).
  Future<void> forward() async {
    var params = <String, dynamic>{};
    var rawResult = await query('Forward', params);
  }

  /// Creates a variable.
  Future<bool> createVariable(String name) async {
    var params = <String, dynamic>{};
    params['qName'] = name;
    var rawResult = await query('CreateVariable', params);
    return rawResult['qReturn'];
  }

  /// Removes a variable.
  Future<bool> removeVariable(String name) async {
    var params = <String, dynamic>{};
    params['qName'] = name;
    var rawResult = await query('RemoveVariable', params);
    return rawResult['qReturn'];
  }

  /// Returns locale information.
  Future<LocaleInfo> getLocaleInfo() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetLocaleInfo', params);
  }

  /// Returns:
  /// * The list of tables in an app and the fields inside each table.
  /// * The list of derived fields.
  /// * The list of key fields.
  Future<BuiltList<NxCell>> getTablesAndKeys(Size windowSize, Size nullSize,
      int cellHeight, bool syntheticMode, bool includeSysVars) async {
    var params = <String, dynamic>{};
    params['qCellHeight'] = cellHeight;
    params['qSyntheticMode'] = syntheticMode;
    params['qIncludeSysVars'] = includeSysVars;
    var rawResult = await query('GetTablesAndKeys', params);
  }

  /// Returns information about the position of the tables in the data model viewer.
  /// <div class=note>The position of the broom points and the position of the connection points cannot be retrieved in Qlik Sense.</div>
  ///
  /// ### Representation of tables, broom points and connection points
  /// ![](images/ui_gen_BroomConnectionPoints_dmv.png)<br>
  /// The green circles represent the broom points.
  /// The red circle represents a connection point.
  Future<TableViewDlgSaveInfo> getViewDlgSaveInfo() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetViewDlgSaveInfo', params);
  }

  /// Sets the positions of the tables in the data model viewer.
  /// <div class=note>The position of the broom points and the position of the connection points cannot be set in Qlik Sense.</div>
  ///
  /// ### Representation of tables, broom points and connection points
  /// ![](images/ui_gen_BroomConnectionPoints_dmv.png)<br>
  /// The green circles represent the broom points.
  /// The red circle represents a connection point.
  Future<void> setViewDlgSaveInfo(TableViewDlgSaveInfo info) async {
    var params = <String, dynamic>{};
    var rawResult = await query('SetViewDlgSaveInfo', params);
  }

  /// Creates a script that contains one section. This section contains **SET** statements that give localized information from the regional settings of the computer.
  /// <div class=note>The computer regional settings are retrieved when the engine starts.</div>
  Future<String> getEmptyScript(String localizedMainSection) async {
    var params = <String, dynamic>{};
    params['qLocalizedMainSection'] = localizedMainSection;
    var rawResult = await query('GetEmptyScript', params);
    return rawResult['qReturn'];
  }

  /// Reloads the script that is set in an app.
  ///
  /// ### Logs
  /// When this method is called, audit activity logs are produced to track the user activity.
  /// In the case of errors, both audit activity logs and system services logs are produced.
  /// The log files are named as follows:
  /// <table>
  /// <tr>
  /// <th>Audit activity log</th>
  /// <th>System service log</th>
  /// </tr>
  /// <tr>
  /// <td><i>&lt;MachineName&gt;_AuditActivity_Engine.txt</i> in Qlik Sense Enterprise<br><i>&lt;MachineName&gt;_AuditActivity_Engine.log</i> in Qlik Sense Desktop</td>
  /// <td><i>&lt;MachineName&gt;_Service_Engine.txt</i> in Qlik Sense Enterprise<br><i>&lt;MachineName&gt;_Service_Engine.log</i> in Qlik Sense Desktop</td>
  /// </tr>
  /// </table>
  ///
  /// ### Where to find the log files
  /// The location of the log files depends on whether you have installed Qlik Sense Enterprise or Qlik Sense Desktop.
  /// <table>
  /// <tr>
  /// <th>Qlik Sense Enterprise </th>
  /// <th>Qlik Sense Desktop </th>
  /// </tr>
  /// <tr>
  /// <td><i>%ProgramData%/Qlik/Sense/Log/Engine</i></td>
  /// <td><i>%UserProfile%/Documents/Qlik/Sense/Log</i></td>
  /// </tr>
  /// </table>
  Future<bool> doReload(int mode, bool partial, bool debug) async {
    var params = <String, dynamic>{};
    params['qMode'] = mode;
    params['qPartial'] = partial;
    params['qDebug'] = debug;
    var rawResult = await query('DoReload', params);
    return rawResult['qReturn'];
  }

  /// Lists the breakpoints in the script of an app.
  Future<BuiltList<NxCell>> getScriptBreakpoints() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetScriptBreakpoints', params);
  }

  /// Set some breakpoints in the script of an app.
  Future<void> setScriptBreakpoints(BuiltList<NxCell> breakpoints) async {
    var params = <String, dynamic>{};
    var rawResult = await query('SetScriptBreakpoints', params);
  }

  /// Gets values in script.
  Future<String> getScript() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetScript', params);
    return rawResult['qScript'];
  }

  /// Fetches updated variables after a statement execution.
  ///
  /// <div class=note>If qRefSeqNo and qSetSeqNo are set to 0, it means that the variables were not updated.</div>
  Future<BuiltList<NxCell>> getTextMacros() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetTextMacros', params);
  }

  /// Limits the number of rows of data to load from a data source.
  /// This method works when reloading in debug mode.
  Future<void> setFetchLimit(int limit) async {
    var params = <String, dynamic>{};
    params['qLimit'] = limit;
    var rawResult = await query('SetFetchLimit', params);
  }

  /// Saves an app. All objects and data in the data model are saved.
  Future<void> doSave(String fileName) async {
    var params = <String, dynamic>{};
    params['qFileName'] = fileName;
    var rawResult = await query('DoSave', params);
  }

  /// Retrieves the data of a specific table.
  Future<BuiltList<NxCell>> getTableData(
      int offset, int rows, bool syntheticMode, String tableName) async {
    var params = <String, dynamic>{};
    params['qOffset'] = offset;
    params['qRows'] = rows;
    params['qSyntheticMode'] = syntheticMode;
    params['qTableName'] = tableName;
    var rawResult = await query('GetTableData', params);
  }

  /// Evaluates an app.
  /// Returns dynamic properties (if any) in addition to the engine (fixed) properties.
  /// A data set is returned.
  Future<NxAppLayout> getAppLayout() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetAppLayout', params);
  }

  /// Sets properties to an app.
  Future<void> setAppProperties(NxAppProperties prop) async {
    var params = <String, dynamic>{};
    var rawResult = await query('SetAppProperties', params);
  }

  /// Gets the properties of an app.
  Future<NxAppProperties> getAppProperties() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetAppProperties', params);
  }

  /// Gets the lineage information of the app. The lineage information includes the LOAD and STORE statements from the data load script associated with this app.
  /// An array of lineage information.
  Future<BuiltList<NxCell>> getLineage() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetLineage', params);
  }

  /// Creates a transient object. For example, you can use a transient object to create an app overview or a story overview.
  /// It is possible to create a transient object that is linked to another object.
  /// A linked object is an object that points to a linking object. The linking object is defined in the properties of the linked object (in _qExtendsId_ ).
  /// The linked object has the same properties as the linking object.
  /// <div class=note>The linking object cannot be a transient object.</div>
  Future<ObjectInterface> createSessionObject(
      GenericObjectProperties prop) async {
    var params = <String, dynamic>{};
    var rawResult = await query('CreateSessionObject', params);
  }

  /// Removes a transient object.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroySessionObject(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('DestroySessionObject', params);
    return rawResult['qSuccess'];
  }

  /// Creates a generic object at app level. For more information on generic objects, see _Generic object_.
  /// It is possible to create a generic object that is linked to another object.
  /// A linked object is an object that points to a linking object. The linking object is defined in the properties of the linked object (in _qExtendsId_ ).
  /// The linked object has the same properties as the linking object.
  /// <div class=note>The linking object cannot be a transient object.</div>
  Future<NxInfo> createObject(GenericObjectProperties prop) async {
    var params = <String, dynamic>{};
    var rawResult = await query('CreateObject', params);
  }

  /// Removes an app object.
  /// The children of the object (if any) are removed as well.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyObject(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('DestroyObject', params);
    return rawResult['qSuccess'];
  }

  /// Returns the type of the app object and the corresponding handle.
  Future<ObjectInterface> getObject(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('GetObject', params);
  }

  Future<BuiltList<NxCell>> getObjects(NxGetObjectOptions options) async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetObjects', params);
  }

  Future<BuiltList<NxCell>> getBookmarks(NxGetBookmarkOptions options) async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetBookmarks', params);
  }

  /// Clones root level objects, such as sheets and stories. The CloneObject method works for both app objects and child objects.
  /// When you clone an object that contains children, the children are cloned as well.
  /// If you for example want to clone a visualization, you must provide the qID of the root object, in this case the sheet since CloneObject clones root level objects.
  /// <div class=note>It is not possible to clone a session object.</div>
  ///
  /// <div class=note>The identifier is set by the engine.</div>
  Future<String> cloneObject(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('CloneObject', params);
    return rawResult['qCloneId'];
  }

  /// Creates a draft of an object.
  /// This method can be used to create a draft of a sheet or a story that is published. This is a way to continue working on a sheet or a story that is published.
  /// Replace the published object by the content of the draft by invoking the _CommitDraft method_.
  ///
  /// <div class=note>The identifier is set by the engine.</div>
  Future<String> createDraft(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('CreateDraft', params);
    return rawResult['qDraftId'];
  }

  /// Commits the draft of an object that was previously created by invoking the _CreateDraft method_.
  /// Committing a draft replaces the corresponding published object.
  Future<void> commitDraft(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('CommitDraft', params);
  }

  /// Removes the draft of an object.
  /// The children of the draft object (if any) are removed as well.
  /// This method can be used to cancel the work on the draft of an object. For example, if you had created a draft of a sheet that is published, you might not want anymore to replace the published sheet.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyDraft(String id, String sourceId) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    params['qSourceId'] = sourceId;
    var rawResult = await query('DestroyDraft', params);
    return rawResult['qSuccess'];
  }

  /// Undoes the previous operation.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> undo() async {
    var params = <String, dynamic>{};
    var rawResult = await query('Undo', params);
    return rawResult['qSuccess'];
  }

  /// Redoes the previous operation.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> redo() async {
    var params = <String, dynamic>{};
    var rawResult = await query('Redo', params);
    return rawResult['qSuccess'];
  }

  /// Clears entirely the undo and redo buffer.
  Future<void> clearUndoBuffer() async {
    var params = <String, dynamic>{};
    var rawResult = await query('ClearUndoBuffer', params);
  }

  /// Creates a master dimension.
  /// A master dimension is stored in the library of an app and can be used in many objects. Several generic objects can contain the same dimension.
  Future<NxInfo> createDimension(GenericDimensionProperties prop) async {
    var params = <String, dynamic>{};
    var rawResult = await query('CreateDimension', params);
  }

  /// Removes a dimension.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyDimension(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('DestroyDimension', params);
    return rawResult['qSuccess'];
  }

  /// Returns the handle of a dimension.
  Future<ObjectInterface> getDimension(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('GetDimension', params);
  }

  /// Clones a dimension.
  ///
  /// <div class=note>The identifier is set by the engine.</div>
  Future<String> cloneDimension(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('CloneDimension', params);
    return rawResult['qCloneId'];
  }

  /// Creates a master measure.
  /// A master measure is stored in the library of an app and can be used in many objects. Several generic objects can contain the same measure.
  Future<NxInfo> createMeasure(GenericMeasureProperties prop) async {
    var params = <String, dynamic>{};
    var rawResult = await query('CreateMeasure', params);
  }

  /// Removes a generic measure.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyMeasure(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('DestroyMeasure', params);
    return rawResult['qSuccess'];
  }

  /// Returns the handle of a measure.
  Future<ObjectInterface> getMeasure(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('GetMeasure', params);
  }

  /// Clones a measure.
  ///
  /// <div class=note>The identifier is set by the engine.</div>
  Future<String> cloneMeasure(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('CloneMeasure', params);
    return rawResult['qCloneId'];
  }

  /// Creates a transient variable.
  /// <div class=note>To set some properties to the variable, use the _SetProperties method_. </div>
  ///
  /// ### Definition
  /// A variable in Qlik Sense is a named entity, containing a data value. This value can be static or be the result of a calculation. A variable acquires its value at the same time that the variable is created or after when updating the properties of the variable. Variables can be used in bookmarks and can contain numeric or alphanumeric data. Any change made to the variable is applied everywhere the variable is used.
  /// When a variable is used in an expression, it is substituted by its value or the variable's definition.
  ///
  /// ### Example
  /// The variable _x_ contains the text string _Sum(Sales)_ .
  /// In a chart, you define the expression _$(x)/12_ . The effect is exactly the same as having the chart expression _Sum(Sales)/12_ .
  /// However, if you change the value of the variable _x_ to _Sum(Budget)_ , the data in the chart are immediately recalculated with the expression interpreted as _Sum(Budget)/12_ .
  Future<ObjectInterface> createSessionVariable(
      GenericVariableProperties prop) async {
    var params = <String, dynamic>{};
    var rawResult = await query('CreateSessionVariable', params);
  }

  /// Removes a transient variable.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroySessionVariable(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('DestroySessionVariable', params);
    return rawResult['qSuccess'];
  }

  /// Creates a variable.
  /// To create a variable via a script, you need to use the _SetScript method_. For more information, see _Create a variable_.
  /// <div class=note>To set some properties to the variable, use the _SetProperties method_. </div> <div class=note>In a published app, only transient variables can be created. See _CreateSessionVariable method_. </div>
  ///
  /// ### Definition
  /// A variable in Qlik Sense is a named entity, containing a data value. This value can be static or be the result of a calculation. A variable acquires its value at the same time that the variable is created or after when updating the properties of the variable. Variables can be used in bookmarks and can contain numeric or alphanumeric data. Any change made to the variable is applied everywhere the variable is used.
  /// When a variable is used in an expression, it is substituted by its value or the variable's definition.
  ///
  /// ### Example
  /// The variable _x_ contains the text string _Sum(Sales)_ .
  /// In a chart, you define the expression _$(x)/12_ . The effect is exactly the same as having the chart expression _Sum(Sales)/12_ .
  /// However, if you change the value of the variable _x_ to _Sum(Budget)_ , the data in the chart are immediately recalculated with the expression interpreted as _Sum(Budget)/12_ .
  Future<NxInfo> createVariableEx(GenericVariableProperties prop) async {
    var params = <String, dynamic>{};
    var rawResult = await query('CreateVariableEx', params);
  }

  /// Removes a variable.
  /// Script-defined variables cannot be removed using the _DestroyVariableById method_ or the _DestroyVariableByName method_. For more information, see _Remove a variable_.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyVariableById(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('DestroyVariableById', params);
    return rawResult['qSuccess'];
  }

  /// Removes a variable.
  /// Script-defined variables cannot be removed using the _DestroyVariableById method_ or the _DestroyVariableByName method_. For more information, see _Remove a variable_.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyVariableByName(String name) async {
    var params = <String, dynamic>{};
    params['qName'] = name;
    var rawResult = await query('DestroyVariableByName', params);
    return rawResult['qSuccess'];
  }

  /// Gets the handle of a variable.
  Future<ObjectInterface> getVariableById(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('GetVariableById', params);
  }

  /// Gets the handle of a variable.
  Future<ObjectInterface> getVariableByName(String name) async {
    var params = <String, dynamic>{};
    params['qName'] = name;
    var rawResult = await query('GetVariableByName', params);
  }

  /// Checks if a given expression is valid.
  /// <div class=note>The expression is correct if the parameters _qErrorMsg_ , _qBadFieldNames_ and _qDangerousFieldNames_ are empty. </div>
  Future<String> checkExpression(String expr, BuiltList<NxCell> labels) async {
    var params = <String, dynamic>{};
    params['qExpr'] = expr;
    var rawResult = await query('CheckExpression', params);
    return rawResult['qErrorMsg'];
  }

  /// Checks if:
  /// * A given expression is valid.
  /// * A number is correct according to the locale.
  Future<String> checkNumberOrExpression(String expr) async {
    var params = <String, dynamic>{};
    params['qExpr'] = expr;
    var rawResult = await query('CheckNumberOrExpression', params);
    return rawResult['qErrorMsg'];
  }

  /// Adds an alternate state in the app.
  /// You can create multiple states within a Qlik Sense app and apply these states to specific objects within the app. Objects in a given state are not affected by user selections in the other states.
  Future<void> addAlternateState(String stateName) async {
    var params = <String, dynamic>{};
    params['qStateName'] = stateName;
    var rawResult = await query('AddAlternateState', params);
  }

  /// Removes an alternate state in the app.
  Future<void> removeAlternateState(String stateName) async {
    var params = <String, dynamic>{};
    params['qStateName'] = stateName;
    var rawResult = await query('RemoveAlternateState', params);
  }

  /// Creates a bookmark.
  Future<NxInfo> createBookmark(GenericBookmarkProperties prop) async {
    var params = <String, dynamic>{};
    var rawResult = await query('CreateBookmark', params);
  }

  /// Removes a bookmark.
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyBookmark(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('DestroyBookmark', params);
    return rawResult['qSuccess'];
  }

  /// Returns the handle of a bookmark.
  Future<ObjectInterface> getBookmark(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('GetBookmark', params);
  }

  /// Applies a bookmark.
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> applyBookmark(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('ApplyBookmark', params);
    return rawResult['qSuccess'];
  }

  /// Clones a bookmark.
  /// <div class=note>The identifier is set by the engine.</div>
  Future<String> cloneBookmark(String id) async {
    var params = <String, dynamic>{};
    params['qId'] = id;
    var rawResult = await query('CloneBookmark', params);
    return rawResult['qCloneId'];
  }

  /// Adds a field on the fly.
  /// <div class=note>The expression of a field on the fly is persisted but not its values. </div>
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> addFieldFromExpression(String name, String expr) async {
    var params = <String, dynamic>{};
    params['qName'] = name;
    params['qExpr'] = expr;
    var rawResult = await query('AddFieldFromExpression', params);
    return rawResult['qSuccess'];
  }

  /// Find the field-on-the-fly by passing its readable name.
  Future<String> getFieldOnTheFlyByName(String readableName) async {
    var params = <String, dynamic>{};
    params['qReadableName'] = readableName;
    var rawResult = await query('GetFieldOnTheFlyByName', params);
    return rawResult['qName'];
  }

  /// Returns the identifier and the type of any generic object in the app.
  Future<BuiltList<NxCell>> getAllInfos() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetAllInfos', params);
  }

  /// Resumes the app as the user left it.
  Future<void> resume() async {
    var params = <String, dynamic>{};
    var rawResult = await query('Resume', params);
  }

  /// Aborts any selection mode in an app. For more information about selection mode, see _BeginSelections method_.
  Future<void> abortModal(bool accept) async {
    var params = <String, dynamic>{};
    params['qAccept'] = accept;
    var rawResult = await query('AbortModal', params);
  }

  /// Publishes an app.
  /// All app objects are published. Generic objects, bookmarks, dimensions and measures inside the app are published.
  /// <div class=note>An app can only be published once and cannot be published to more than one stream.</div>
  Future<void> publish(String streamId, String name) async {
    var params = <String, dynamic>{};
    params['qStreamId'] = streamId;
    params['qName'] = name;
    var rawResult = await query('Publish', params);
  }

  /// Retrieves any fields that match all of the specified tags or just one of them in the data model of an app.
  /// <div class=note>Tags set by Qlik Sense are prefixed by the _$_ sign.  </div>
  Future<BuiltList<NxCell>> getMatchingFields(
      BuiltList<NxCell> tags, String matchingFieldMode) async {
    var params = <String, dynamic>{};
    params['qMatchingFieldMode'] = matchingFieldMode;
    var rawResult = await query('GetMatchingFields', params);
  }

  /// Retrieves any fields that belong to the same archipelago as the specified field and that match at least one of the specified tags.
  /// <div class=note>Tags set by Qlik Sense are prefixed by the _$_ sign.  </div>
  Future<BuiltList<NxCell>> findMatchingFields(
      String fieldName, BuiltList<NxCell> tags) async {
    var params = <String, dynamic>{};
    params['qFieldName'] = fieldName;
    var rawResult = await query('FindMatchingFields', params);
  }

  /// Scrambles a field so the data is not recognizable. Some properties are retained to help debugging. For example, special characters are not changed, and small numbers are scrambled to another small number.
  /// <div class=note>Update access is required to use the function in Qlik Sense Enterprise.</div>
  Future<void> scramble(String fieldName) async {
    var params = <String, dynamic>{};
    params['qFieldName'] = fieldName;
    var rawResult = await query('Scramble', params);
  }

  /// Saves all objects that were modified in the app.
  /// <div class=note>Data from the data model are not saved.</div> <div class=note>This operation is possible only in Qlik Sense Enterprise.</div>
  Future<void> saveObjects() async {
    var params = <String, dynamic>{};
    var rawResult = await query('SaveObjects', params);
  }

  /// Computes a set of association scores for each pair of fields between two given tables that have been loaded in an app.
  /// When a table contains some synthetic keys, all fields in the synthetic key tables are analyzed against fields in other tables. To denote that a field is a synthetic key, the field name is prefixed by _[Synthetic Key]:_ .
  Future<BuiltList<NxCell>> getAssociationScores(
      String table1, String table2) async {
    var params = <String, dynamic>{};
    params['qTable1'] = table1;
    params['qTable2'] = table2;
    var rawResult = await query('GetAssociationScores', params);
  }

  /// Lists the media files.
  Future<MediaList> getMediaList() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetMediaList', params);
  }

  /// Lists the content libraries.
  /// To differentiate a global content library from an app specific content library, you can check the property _qAppSpecific_ . If this property is set to true, it means that the content library is app specific.
  /// <div class=note>There is always one specific content library per app.</div>
  ///
  /// ### Qlik Sense
  /// Returns the global content libraries and the app specific content library.
  /// When using Qlik Sense, you can have more than one global content library. The global content libraries are common to all apps in the Qlik Sense repository.
  /// By default, there is one global content library named _Default_ .
  ///
  /// ### Qlik Sense Desktop
  /// Returns the global content library and the app specific content library from the disk.
  Future<ContentLibraryList> getContentLibraries() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetContentLibraries', params);
  }

  /// Returns the content of a library.
  ///
  /// ### Global content library
  /// In Qlik Sense Desktop, the content files are retrieved from:
  /// _%userprofile%\Documents\Qlik\Sense\Content\Default_
  /// In Qlik Sense Enterprise, the content files are retrieved from the Qlik Sense repository.
  ///
  /// ### App specific content library
  /// The embedded files are returned.
  Future<StaticContentList> getLibraryContent(String name) async {
    var params = <String, dynamic>{};
    params['qName'] = name;
    var rawResult = await query('GetLibraryContent', params);
  }

  /// Reloads the script that is set in an app and returns the path to the script log file.
  /// <div class=note>A log file is created per reload.</div>
  ///
  /// ### Logs
  /// When this method is called, audit activity logs are produced to track the user activity.
  /// In the case of errors, both audit activity logs and system services logs are produced.
  /// The log files are named as follows:
  /// <table>
  /// <tr>
  /// <th>Audit activity log</th>
  /// <th>System service log</th>
  /// </tr>
  /// <tr>
  /// <td><i>&lt; MachineName&gt;</i>AuditActivity<i>Engine.txt</i> in Qlik Sense Enterprise<br><i>&lt; MachineName&gt;</i>AuditActivity<i>Engine.log</i> in Qlik Sense Desktop</td>
  /// <td><i>&lt; MachineName&gt;</i>Service<i>Engine.txt</i> in Qlik Sense Enterprise<br><i>&lt; MachineName&gt;</i>Service<i>Engine.log</i> in Qlik Sense Desktop</td>
  /// </tr>
  /// </table>
  ///
  /// ### Where to find the log files
  /// The location of the log files depends on whether you have installed Qlik Sense Enterprise or Qlik Sense Desktop.
  /// <table>
  /// <tr>
  /// <th>Qlik Sense Enterprise </th>
  /// <th>Qlik Sense Desktop </th>
  /// </tr>
  /// <tr>
  /// <td><i>%ProgramData%/Qlik/Sense/Log/Engine</i></td>
  /// <td><i>%UserProfile%/Documents/Qlik/Sense/Log</i></td>
  /// </tr>
  /// </table>
  ///
  /// ### DoReloadExParams
  /// <table>
  /// <tr>
  /// <th>Name</th>
  /// <th>Description</th>
  /// <th>Type</th>
  /// </tr>
  /// <tr>
  /// <td>qMode</td>
  /// <td>Error handling mode<br>One of:<br>
  /// <ul>
  /// <li>0: for default mode.</li>
  /// <li>1: for ABEND; the reload of the script ends if an error occurs.</li>
  /// <li>2: for ignore; the reload of the script continues even if an error is detected in the script.</li>
  /// </ul>
  /// </td>
  /// <td>Integer</td>
  /// </tr>
  /// <tr>
  /// <td>qPartial</td>
  /// <td>Set to true for partial reload.<br>The default value is false.</td>
  /// <td>Boolean</td>
  /// </tr>
  /// <tr>
  /// <td>qDebug</td>
  /// <td>Set to true if debug breakpoints are to be honored. The execution of the script will be in debug mode.<br>The default value is false.</td>
  /// <td>Boolean</td>
  /// </tr>
  /// </table>
  ///
  /// ### DoReloadExResult
  /// <table>
  /// <tr>
  /// <th>Name</th>
  /// <th>Description</th>
  /// <th>Type</th>
  /// </tr>
  /// <tr>
  /// <td>qSuccess</td>
  /// <td>The operation is successful if <i>qSuccess</i> is set to True.</td>
  /// <td>Boolean</td>
  /// </tr>
  /// <tr>
  /// <td>qScriptLogFile</td>
  /// <td>Path to the script log file.</td>
  /// <td>String</td>
  /// </tr>
  /// </table>
  ///
  /// If the data load has successfully finished, no matter how the indexing behaves, _true_ is returned. This happens even if there is a timeout, a memory limit is reached or any other error occurs during the indexing.
  Future<DoReloadExResult> doReloadEx(DoReloadExParams params) async {
    var params = <String, dynamic>{};
    var rawResult = await query('DoReloadEx', params);
  }

  /// Returns the number of entries on the back stack.
  Future<int> backCount() async {
    var params = <String, dynamic>{};
    var rawResult = await query('BackCount', params);
    return rawResult['qReturn'];
  }

  /// Returns the number of entries on the Forward stack.
  Future<int> forwardCount() async {
    var params = <String, dynamic>{};
    var rawResult = await query('ForwardCount', params);
    return rawResult['qReturn'];
  }

  /// Sets values in script.
  Future<void> setScript(String script) async {
    var params = <String, dynamic>{};
    params['qScript'] = script;
    var rawResult = await query('SetScript', params);
  }

  /// Checks the syntax of a script.
  ///
  /// ### Example
  /// "result": { "qErrors": [ { "qErrLen": 3, "qTabIx": 0, "qLineInTab": 0, "qColInLine": 0, "qTextPos": 0 }, { "qErrLen": 5, "qTabIx": 0, "qLineInTab": 0, "qColInLine": 1, "qTextPos": 4, "qSecondaryFailure": true } ] }
  /// <div class=note>The first area is the primary error area, the second area is the secondary error area. The second area is optional and is shown only if qSecondaryFailure is set to true. The second area ends when the next statement in the script begins.</div>
  /// The list of syntax errors in the script.
  /// If there are no errors, the engine returns:
  /// If there are errors, the engine returns the following properties in the response:
  /// <table>
  /// <tr>
  /// <th>Name</th>
  /// <th>Description</th>
  /// <th>Type</th>
  /// </tr>
  /// <tr>
  /// <td>qErrLen</td>
  /// <td>Length of the word where the error is located.</td>
  /// <td>Integer</td>
  /// </tr>
  /// <tr>
  /// <td>qTabIx</td>
  /// <td>Number of the faulty section.</td>
  /// <td>Integer</td>
  /// </tr>
  /// <tr>
  /// <td>qLineInTab</td>
  /// <td>Line number in the section where the error is located.</td>
  /// <td>Integer</td>
  /// </tr>
  /// <tr>
  /// <td>qColInLine</td>
  /// <td>Position of the erroneous text from the beginning of the line.</td>
  /// <td>Integer</td>
  /// </tr>
  /// <tr>
  /// <td>qTextPos</td>
  /// <td>Position of the erroneous text from the beginning of the script.</td>
  /// <td>Integer</td>
  /// </tr>
  /// <tr>
  /// <td>qSecondaryFailure</td>
  /// <td>The default value is false.</td>
  /// <td>Boolean</td>
  /// </tr>
  /// </table>
  Future<BuiltList<NxCell>> checkScriptSyntax() async {
    var params = <String, dynamic>{};
    var rawResult = await query('CheckScriptSyntax', params);
  }

  /// Retrieves the variables that are tagged as favorite.
  Future<BuiltList<NxCell>> getFavoriteVariables() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetFavoriteVariables', params);
  }

  /// Set some variables as favorite.
  Future<void> setFavoriteVariables(BuiltList<NxCell> names) async {
    var params = <String, dynamic>{};
    var rawResult = await query('SetFavoriteVariables', params);
  }

  /// Gets the content of a file.
  Future<String> getIncludeFileContent(String path) async {
    var params = <String, dynamic>{};
    params['qPath'] = path;
    var rawResult = await query('GetIncludeFileContent', params);
    return rawResult['qContent'];
  }

  /// Creates a connection.
  /// A connection indicates from which data source the data should be taken.
  Future<String> createConnection(Connection connection) async {
    var params = <String, dynamic>{};
    var rawResult = await query('CreateConnection', params);
    return rawResult['qConnectionId'];
  }

  /// Updates a connection.
  /// <div class=note>The identifier of a connection cannot be updated. qType cannot be modified with the ModifyConnection method.</div>
  Future<void> modifyConnection(String connectionId, Connection connection,
      bool overrideCredentials) async {
    var params = <String, dynamic>{};
    params['qConnectionId'] = connectionId;
    params['qOverrideCredentials'] = overrideCredentials;
    var rawResult = await query('ModifyConnection', params);
  }

  /// Deletes a connection.
  /// <div class=note>In Qlik Sense Enterprise, there is an additional file connection named _AttachedFiles_ . The AttachedFiles connection can only be removed by the administrator of the system. </div>
  Future<void> deleteConnection(String connectionId) async {
    var params = <String, dynamic>{};
    params['qConnectionId'] = connectionId;
    var rawResult = await query('DeleteConnection', params);
  }

  /// Retrieves a connection and returns:
  /// * The creation time of the connection.
  /// * The identifier of the connection.
  /// * The type of the connection.
  /// * The name of the connection.
  /// * The connection string.
  Future<Connection> getConnection(String connectionId) async {
    var params = <String, dynamic>{};
    params['qConnectionId'] = connectionId;
    var rawResult = await query('GetConnection', params);
  }

  /// Lists the connections in an app.
  /// <div class=note>In Qlik Sense Enterprise, there is an additional file connection named _AttachedFiles_ . This connection is stored in the Qlik Sense repository. </div>
  Future<BuiltList<NxCell>> getConnections() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetConnections', params);
  }

  /// Gives information about an ODBC, OLEDB or CUSTOM connection. See _Outputs_ for more details.
  Future<DatabaseInfo> getDatabaseInfo(String connectionId) async {
    var params = <String, dynamic>{};
    params['qConnectionId'] = connectionId;
    var rawResult = await query('GetDatabaseInfo', params);
  }

  /// Lists the databases inside a ODBC, OLEDB or CUSTOM data source.
  Future<BuiltList<NxCell>> getDatabases(String connectionId) async {
    var params = <String, dynamic>{};
    params['qConnectionId'] = connectionId;
    var rawResult = await query('GetDatabases', params);
  }

  /// Lists the owners of a database for a ODBC, OLEDB or CUSTOM connection.
  Future<BuiltList<NxCell>> getDatabaseOwners(
      String connectionId, String database) async {
    var params = <String, dynamic>{};
    params['qConnectionId'] = connectionId;
    params['qDatabase'] = database;
    var rawResult = await query('GetDatabaseOwners', params);
  }

  /// Lists the tables inside a database for a ODBC, OLEDB or CUSTOM connection.
  Future<BuiltList<NxCell>> getDatabaseTables(
      String connectionId, String database, String owner) async {
    var params = <String, dynamic>{};
    params['qConnectionId'] = connectionId;
    params['qDatabase'] = database;
    params['qOwner'] = owner;
    var rawResult = await query('GetDatabaseTables', params);
  }

  /// Lists the fields inside a table of a database for a ODBC, OLEDB or CUSTOM connection.
  Future<BuiltList<NxCell>> getDatabaseTableFields(
      String connectionId, String table, String database, String owner) async {
    var params = <String, dynamic>{};
    params['qConnectionId'] = connectionId;
    params['qDatabase'] = database;
    params['qOwner'] = owner;
    params['qTable'] = table;
    var rawResult = await query('GetDatabaseTableFields', params);
  }

  /// Retrieves the values of the specified table of a database for a ODBC, OLEDB or CUSTOM connection.
  Future<BuiltList<NxCell>> getDatabaseTablePreview(
      String connectionId,
      String table,
      String database,
      String owner,
      FilterInfo conditions) async {
    var params = <String, dynamic>{};
    params['qConnectionId'] = connectionId;
    params['qDatabase'] = database;
    params['qOwner'] = owner;
    params['qTable'] = table;
    var rawResult = await query('GetDatabaseTablePreview', params);
  }

  /// Lists the items for a folder connection.
  Future<BuiltList<NxCell>> getFolderItemsForConnection(
      String connectionId, String relativePath) async {
    var params = <String, dynamic>{};
    params['qConnectionId'] = connectionId;
    params['qRelativePath'] = relativePath;
    var rawResult = await query('GetFolderItemsForConnection', params);
  }

  /// Guesses the data format for a given file.
  /// Recognized file formats are:
  /// * _CSV_ for Delimited
  /// * _FIX_ for Fixed Record
  /// * _DIF_ for Data Interchange Format
  /// * _EXCEL_BIFF_ for Microsoft Excel (XLS)
  /// * _EXCEL_OOXML_ for Microsoft Excel (XLSX)
  /// * _HTML_ for HTML
  /// * _QVD_ for QVD file
  /// * _XML_ for XML
  /// * _QVX_ for QVX file
  /// * _JSON_ for JSON format
  /// * _KML_ for KML file
  ///
  /// ### FileType
  /// Recognized file formats are:
  /// * _CSV_ for Delimited
  /// * _FIX_ for Fixed Record
  /// * _DIF_ for Data Interchange Format
  /// * _EXCEL_BIFF_ for Microsoft Excel (XLS)
  /// * _EXCEL_OOXML_ for Microsoft Excel (XLSX)
  /// * _HTML_ for HTML
  /// * _QVD_ for QVD file
  /// * _XML_ for XML
  /// * _QVX_ for QVX file
  /// * _JSON_ for JSON format
  /// * _KML_ for KML file
  Future<FileDataFormat> guessFileType(
      String connectionId, String relativePath) async {
    var params = <String, dynamic>{};
    params['qConnectionId'] = connectionId;
    params['qRelativePath'] = relativePath;
    var rawResult = await query('GuessFileType', params);
  }

  /// Lists the tables for a folder connection.
  ///
  /// ### FileType
  /// Recognized file formats are:
  /// * _CSV_ for Delimited
  /// * _FIX_ for Fixed Record
  /// * _DIF_ for Data Interchange Format
  /// * _EXCEL_BIFF_ for Microsoft Excel (XLS)
  /// * _EXCEL_OOXML_ for Microsoft Excel (XLSX)
  /// * _HTML_ for HTML
  /// * _QVD_ for QVD file
  /// * _XML_ for XML
  /// * _QVX_ for QVX file
  /// * _JSON_ for JSON format
  /// * _KML_ for KML file
  Future<BuiltList<NxCell>> getFileTables(String connectionId,
      FileDataFormat dataFormat, String relativePath) async {
    var params = <String, dynamic>{};
    params['qConnectionId'] = connectionId;
    params['qRelativePath'] = relativePath;
    var rawResult = await query('GetFileTables', params);
  }

  /// Lists the fields of a table for a folder connection.
  ///
  /// ### FileType
  /// Recognized file formats are:
  /// * _CSV_ for Delimited
  /// * _FIX_ for Fixed Record
  /// * _DIF_ for Data Interchange Format
  /// * _EXCEL_BIFF_ for Microsoft Excel (XLS)
  /// * _EXCEL_OOXML_ for Microsoft Excel (XLSX)
  /// * _HTML_ for HTML
  /// * _QVD_ for QVD file
  /// * _XML_ for XML
  /// * _QVX_ for QVX file
  /// * _JSON_ for JSON format
  /// * _KML_ for KML file
  Future<BuiltList<NxCell>> getFileTableFields(String connectionId,
      FileDataFormat dataFormat, String table, String relativePath) async {
    var params = <String, dynamic>{};
    params['qConnectionId'] = connectionId;
    params['qRelativePath'] = relativePath;
    params['qTable'] = table;
    var rawResult = await query('GetFileTableFields', params);
  }

  /// Lists the values in a table for a folder connection.
  ///
  /// ### FileType
  /// Recognized file formats are:
  /// * _CSV_ for Delimited
  /// * _FIX_ for Fixed Record
  /// * _DIF_ for Data Interchange Format
  /// * _EXCEL_BIFF_ for Microsoft Excel (XLS)
  /// * _EXCEL_OOXML_ for Microsoft Excel (XLSX)
  /// * _HTML_ for HTML
  /// * _QVD_ for QVD file
  /// * _XML_ for XML
  /// * _QVX_ for QVX file
  /// * _JSON_ for JSON format
  /// * _KML_ for KML file
  Future<BuiltList<NxCell>> getFileTablePreview(String connectionId,
      FileDataFormat dataFormat, String table, String relativePath) async {
    var params = <String, dynamic>{};
    params['qConnectionId'] = connectionId;
    params['qRelativePath'] = relativePath;
    params['qTable'] = table;
    var rawResult = await query('GetFileTablePreview', params);
  }

  /// Lists the tables and fields of a JSON or XML file for a folder connection.
  Future<BuiltList<NxCell>> getFileTablesEx(String connectionId,
      FileDataFormat dataFormat, String relativePath) async {
    var params = <String, dynamic>{};
    params['qConnectionId'] = connectionId;
    params['qRelativePath'] = relativePath;
    var rawResult = await query('GetFileTablesEx', params);
  }

  /// Sends a generic command to a custom connector.
  /// For more information on the commands that can be sent to a custom connector, see the QVX SDK help.
  Future<String> sendGenericCommandToCustomConnector(
      String provider,
      String command,
      String method,
      BuiltList<NxCell> parameters,
      String appendConnection) async {
    var params = <String, dynamic>{};
    params['qProvider'] = provider;
    params['qCommand'] = command;
    params['qMethod'] = method;
    params['qAppendConnection'] = appendConnection;
    var rawResult = await query('SendGenericCommandToCustomConnector', params);
    return rawResult['qResult'];
  }

  /// Returns search terms suggestions.
  Future<SearchSuggestionResult> searchSuggest(
      SearchCombinationOptions options, BuiltList<NxCell> terms) async {
    var params = <String, dynamic>{};
    var rawResult = await query('SearchSuggest', params);
  }

  /// Returns the search matches for one or more search terms.
  /// The search results depend on the search context.
  /// _SearchCombinationOptions_
  ///
  /// ### SearchMatchCombinations
  /// <table>
  /// <tr>
  /// <th>Name</th>
  /// <th>Description</th>
  /// <th>Type</th>
  /// </tr>
  /// <tr>
  /// <td>qSearchMatchCombinations</td>
  /// <td>Array of search combinations.</td>
  /// <td>Array of <i>SearchMatchCombination</i> </td>
  /// </tr>
  /// </table>
  Future<SearchAssociationResult> searchAssociations(
      SearchCombinationOptions options,
      BuiltList<NxCell> terms,
      SearchPage page) async {
    var params = <String, dynamic>{};
    var rawResult = await query('SearchAssociations', params);
  }

  /// Selects all search hits for a specified group.
  /// The results depend on the search context.
  /// _SearchCombinationOptions_.
  Future<void> selectAssociations(SearchCombinationOptions options,
      BuiltList<NxCell> terms, int matchIx, bool softLock) async {
    var params = <String, dynamic>{};
    params['qMatchIx'] = matchIx;
    params['qSoftLock'] = softLock;
    var rawResult = await query('SelectAssociations', params);
  }

  /// Returns the search matches for one or more search terms.
  /// Search results are organized in search groups. The type of search group indicates where the search matches come from (from data for example).
  /// Each search group contains search results that correspond to a combination of search terms.
  /// For example, if the search terms are _organic_ , _pasta_ , and _America_ , the possible combination of search groups are:
  /// * organic
  /// * pasta
  /// * America
  /// * organic, pasta, America
  /// * organic, pasta
  /// * organic, America
  /// * pasta, America
  ///
  /// For every search group, there are one or more search group items. Each subgroup item contains results that correspond to an item type (for example a field).
  /// For every search group item, there are one or several search matches. The position of the match in each search result is given.
  Future<SearchResult> searchResults(SearchCombinationOptions options,
      BuiltList<NxCell> terms, SearchPage page) async {
    var params = <String, dynamic>{};
    var rawResult = await query('SearchResults', params);
  }

  /// Returns the generic objects corresponding to one or more search terms. The search is performed within the title, subtitle, footnote and type. In addition, associated dimension values are also searched in. For example, if the country “Japan” is selected and the object contains the dimension City, the object will appear in the results for “Osaka” but not for “Johannesburg”. The generic objects with the following types will never appear in the results: _slideitem_ , _sheet_ , _story_ , _slide_ , _masterobject_ , _snapshot_ , _LoadModel_ , _appprops_ and _searchhistory_ .
  Future<SearchResult> searchObjects(SearchObjectOptions options,
      BuiltList<NxCell> terms, SearchPage page) async {
    var params = <String, dynamic>{};
    var rawResult = await query('SearchObjects', params);
  }

  /// Gets script and script meta-data.
  Future<AppScript> getScriptEx() async {
    var params = <String, dynamic>{};
    var rawResult = await query('GetScriptEx', params);
  }
}
