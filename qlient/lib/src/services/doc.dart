import 'dart:async';
import '../enigma/base_service.dart';
import '../enigma/enigma.dart';
import '../models.dart';
import 'package:built_collection/built_collection.dart';

class Doc extends BaseService {
  Doc(Enigma enigma, int handle) : super(enigma, handle);

  String get serviceType => 'Doc';

  /// Returns a handle to a field.
  Future<ObjectInterface> getField(String qFieldName,
      {String qStateName}) async {}

  /// Returns the description of a field.
  Future<FieldDescription> getFieldDescription(String qFieldName) async {}

  /// Returns a handle to a variable.
  Future<ObjectInterface> getVariable(String qName) async {}

  /// Returns a list of table states.
  ///
  /// The following states apply:
  /// * 0 The table is not loosely coupled.
  /// * 1 The table is loosely coupled.
  /// * 2 The table is loosely coupled and cannot be changed to another state using the Qlik Engine API.
  ///
  /// <div class=note>The last three values in the vector are for internal use.</div>
  /// <div class=note>In case of circular references, the engine automatically sets the table state to loosely coupled to avoid creating loops.</div>
  Future<BuiltList<NxCell>> getLooselyCoupledVector() async {}

  /// Sets a list of table states, one for each table.
  ///
  /// The following states apply:
  /// * 0 The table is not loosely coupled.
  /// * 1 The table is loosely coupled.
  /// * 2 The table is loosely coupled and cannot be changed to another state using the Qlik Engine API.
  ///
  /// <div class=note>The last three values in the vector are for internal use.</div>
  Future<bool> setLooselyCoupledVector(BuiltList<NxCell> qv) async {}

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
  Future<String> evaluate(String qExpression) async {}

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
  Future<FieldValue> evaluateEx(String qExpression) async {}

  /// Clear selections in fields for current state. Locked fields are not cleared by default.
  Future<void> clearAll({bool qLockedAlso, String qStateName}) async {}

  /// Locks all selections in fields for current state.
  Future<void> lockAll({String qStateName}) async {}

  /// Unlocks all selections in fields for current state.
  Future<void> unlockAll({String qStateName}) async {}

  /// Loads the last logical operation (if any).
  Future<void> back() async {}

  /// Loads the next logical operation (if any).
  Future<void> forward() async {}

  /// Creates a variable.
  Future<bool> createVariable(String qName) async {}

  /// Removes a variable.
  Future<bool> removeVariable(String qName) async {}

  /// Returns locale information.
  Future<LocaleInfo> getLocaleInfo() async {}

  /// Returns:
  /// * The list of tables in an app and the fields inside each table.
  /// * The list of derived fields.
  /// * The list of key fields.
  Future<BuiltList<NxCell>> getTablesAndKeys(Size qWindowSize, Size qNullSize,
      int qCellHeight, bool qSyntheticMode, bool qIncludeSysVars) async {}

  /// Returns information about the position of the tables in the data model viewer.
  /// <div class=note>The position of the broom points and the position of the connection points cannot be retrieved in Qlik Sense.</div>
  ///
  /// ### Representation of tables, broom points and connection points
  /// ![](images/ui_gen_BroomConnectionPoints_dmv.png)<br>
  /// The green circles represent the broom points.
  /// The red circle represents a connection point.
  Future<TableViewDlgSaveInfo> getViewDlgSaveInfo() async {}

  /// Sets the positions of the tables in the data model viewer.
  /// <div class=note>The position of the broom points and the position of the connection points cannot be set in Qlik Sense.</div>
  ///
  /// ### Representation of tables, broom points and connection points
  /// ![](images/ui_gen_BroomConnectionPoints_dmv.png)<br>
  /// The green circles represent the broom points.
  /// The red circle represents a connection point.
  Future<void> setViewDlgSaveInfo(TableViewDlgSaveInfo qInfo) async {}

  /// Creates a script that contains one section. This section contains **SET** statements that give localized information from the regional settings of the computer.
  /// <div class=note>The computer regional settings are retrieved when the engine starts.</div>
  Future<String> getEmptyScript({String qLocalizedMainSection}) async {}

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
  Future<bool> doReload({int qMode, bool qPartial, bool qDebug}) async {}

  /// Lists the breakpoints in the script of an app.
  Future<BuiltList<NxCell>> getScriptBreakpoints() async {}

  /// Set some breakpoints in the script of an app.
  Future<void> setScriptBreakpoints(BuiltList<NxCell> qBreakpoints) async {}

  /// Gets values in script.
  Future<String> getScript() async {}

  /// Fetches updated variables after a statement execution.
  ///
  /// <div class=note>If qRefSeqNo and qSetSeqNo are set to 0, it means that the variables were not updated.</div>
  Future<BuiltList<NxCell>> getTextMacros() async {}

  /// Limits the number of rows of data to load from a data source.
  /// This method works when reloading in debug mode.
  Future<void> setFetchLimit(int qLimit) async {}

  /// Saves an app. All objects and data in the data model are saved.
  Future<void> doSave({String qFileName}) async {}

  /// Retrieves the data of a specific table.
  Future<BuiltList<NxCell>> getTableData(
      int qOffset, int qRows, bool qSyntheticMode, String qTableName) async {}

  /// Evaluates an app.
  /// Returns dynamic properties (if any) in addition to the engine (fixed) properties.
  /// A data set is returned.
  Future<NxAppLayout> getAppLayout() async {}

  /// Sets properties to an app.
  Future<void> setAppProperties(NxAppProperties qProp) async {}

  /// Gets the properties of an app.
  Future<NxAppProperties> getAppProperties() async {}

  /// Gets the lineage information of the app. The lineage information includes the LOAD and STORE statements from the data load script associated with this app.
  /// An array of lineage information.
  Future<BuiltList<NxCell>> getLineage() async {}

  /// Creates a transient object. For example, you can use a transient object to create an app overview or a story overview.
  /// It is possible to create a transient object that is linked to another object.
  /// A linked object is an object that points to a linking object. The linking object is defined in the properties of the linked object (in _qExtendsId_ ).
  /// The linked object has the same properties as the linking object.
  /// <div class=note>The linking object cannot be a transient object.</div>
  Future<ObjectInterface> createSessionObject(
      GenericObjectProperties qProp) async {}

  /// Removes a transient object.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroySessionObject(String qId) async {}

  /// Creates a generic object at app level. For more information on generic objects, see _Generic object_.
  /// It is possible to create a generic object that is linked to another object.
  /// A linked object is an object that points to a linking object. The linking object is defined in the properties of the linked object (in _qExtendsId_ ).
  /// The linked object has the same properties as the linking object.
  /// <div class=note>The linking object cannot be a transient object.</div>
  Future<NxInfo> createObject(GenericObjectProperties qProp) async {}

  /// Removes an app object.
  /// The children of the object (if any) are removed as well.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyObject(String qId) async {}

  /// Returns the type of the app object and the corresponding handle.
  Future<ObjectInterface> getObject(String qId) async {}
  Future<BuiltList<NxCell>> getObjects(NxGetObjectOptions qOptions) async {}
  Future<BuiltList<NxCell>> getBookmarks(NxGetBookmarkOptions qOptions) async {}

  /// Clones root level objects, such as sheets and stories. The CloneObject method works for both app objects and child objects.
  /// When you clone an object that contains children, the children are cloned as well.
  /// If you for example want to clone a visualization, you must provide the qID of the root object, in this case the sheet since CloneObject clones root level objects.
  /// <div class=note>It is not possible to clone a session object.</div>
  ///
  /// <div class=note>The identifier is set by the engine.</div>
  Future<String> cloneObject(String qId) async {}

  /// Creates a draft of an object.
  /// This method can be used to create a draft of a sheet or a story that is published. This is a way to continue working on a sheet or a story that is published.
  /// Replace the published object by the content of the draft by invoking the _CommitDraft method_.
  ///
  /// <div class=note>The identifier is set by the engine.</div>
  Future<String> createDraft(String qId) async {}

  /// Commits the draft of an object that was previously created by invoking the _CreateDraft method_.
  /// Committing a draft replaces the corresponding published object.
  Future<void> commitDraft(String qId) async {}

  /// Removes the draft of an object.
  /// The children of the draft object (if any) are removed as well.
  /// This method can be used to cancel the work on the draft of an object. For example, if you had created a draft of a sheet that is published, you might not want anymore to replace the published sheet.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyDraft(String qId, String qSourceId) async {}

  /// Undoes the previous operation.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> undo() async {}

  /// Redoes the previous operation.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> redo() async {}

  /// Clears entirely the undo and redo buffer.
  Future<void> clearUndoBuffer() async {}

  /// Creates a master dimension.
  /// A master dimension is stored in the library of an app and can be used in many objects. Several generic objects can contain the same dimension.
  Future<NxInfo> createDimension(GenericDimensionProperties qProp) async {}

  /// Removes a dimension.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyDimension(String qId) async {}

  /// Returns the handle of a dimension.
  Future<ObjectInterface> getDimension(String qId) async {}

  /// Clones a dimension.
  ///
  /// <div class=note>The identifier is set by the engine.</div>
  Future<String> cloneDimension(String qId) async {}

  /// Creates a master measure.
  /// A master measure is stored in the library of an app and can be used in many objects. Several generic objects can contain the same measure.
  Future<NxInfo> createMeasure(GenericMeasureProperties qProp) async {}

  /// Removes a generic measure.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyMeasure(String qId) async {}

  /// Returns the handle of a measure.
  Future<ObjectInterface> getMeasure(String qId) async {}

  /// Clones a measure.
  ///
  /// <div class=note>The identifier is set by the engine.</div>
  Future<String> cloneMeasure(String qId) async {}

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
      GenericVariableProperties qProp) async {}

  /// Removes a transient variable.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroySessionVariable(String qId) async {}

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
  Future<NxInfo> createVariableEx(GenericVariableProperties qProp) async {}

  /// Removes a variable.
  /// Script-defined variables cannot be removed using the _DestroyVariableById method_ or the _DestroyVariableByName method_. For more information, see _Remove a variable_.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyVariableById(String qId) async {}

  /// Removes a variable.
  /// Script-defined variables cannot be removed using the _DestroyVariableById method_ or the _DestroyVariableByName method_. For more information, see _Remove a variable_.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyVariableByName(String qName) async {}

  /// Gets the handle of a variable.
  Future<ObjectInterface> getVariableById(String qId) async {}

  /// Gets the handle of a variable.
  Future<ObjectInterface> getVariableByName(String qName) async {}

  /// Checks if a given expression is valid.
  /// <div class=note>The expression is correct if the parameters _qErrorMsg_ , _qBadFieldNames_ and _qDangerousFieldNames_ are empty. </div>
  Future<String> checkExpression(String qExpr,
      {BuiltList<NxCell> qLabels}) async {}

  /// Checks if:
  /// * A given expression is valid.
  /// * A number is correct according to the locale.
  Future<String> checkNumberOrExpression(String qExpr) async {}

  /// Adds an alternate state in the app.
  /// You can create multiple states within a Qlik Sense app and apply these states to specific objects within the app. Objects in a given state are not affected by user selections in the other states.
  Future<void> addAlternateState(String qStateName) async {}

  /// Removes an alternate state in the app.
  Future<void> removeAlternateState(String qStateName) async {}

  /// Creates a bookmark.
  Future<NxInfo> createBookmark(GenericBookmarkProperties qProp) async {}

  /// Removes a bookmark.
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyBookmark(String qId) async {}

  /// Returns the handle of a bookmark.
  Future<ObjectInterface> getBookmark(String qId) async {}

  /// Applies a bookmark.
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> applyBookmark(String qId) async {}

  /// Clones a bookmark.
  /// <div class=note>The identifier is set by the engine.</div>
  Future<String> cloneBookmark(String qId) async {}

  /// Adds a field on the fly.
  /// <div class=note>The expression of a field on the fly is persisted but not its values. </div>
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> addFieldFromExpression(String qName, String qExpr) async {}

  /// Find the field-on-the-fly by passing its readable name.
  Future<String> getFieldOnTheFlyByName(String qReadableName) async {}

  /// Returns the identifier and the type of any generic object in the app.
  Future<BuiltList<NxCell>> getAllInfos() async {}

  /// Resumes the app as the user left it.
  Future<void> resume() async {}

  /// Aborts any selection mode in an app. For more information about selection mode, see _BeginSelections method_.
  Future<void> abortModal(bool qAccept) async {}

  /// Publishes an app.
  /// All app objects are published. Generic objects, bookmarks, dimensions and measures inside the app are published.
  /// <div class=note>An app can only be published once and cannot be published to more than one stream.</div>
  Future<void> publish(String qStreamId, {String qName}) async {}

  /// Retrieves any fields that match all of the specified tags or just one of them in the data model of an app.
  /// <div class=note>Tags set by Qlik Sense are prefixed by the _$_ sign.  </div>
  Future<BuiltList<NxCell>> getMatchingFields(BuiltList<NxCell> qTags,
      {String qMatchingFieldMode}) async {}

  /// Retrieves any fields that belong to the same archipelago as the specified field and that match at least one of the specified tags.
  /// <div class=note>Tags set by Qlik Sense are prefixed by the _$_ sign.  </div>
  Future<BuiltList<NxCell>> findMatchingFields(
      String qFieldName, BuiltList<NxCell> qTags) async {}

  /// Scrambles a field so the data is not recognizable. Some properties are retained to help debugging. For example, special characters are not changed, and small numbers are scrambled to another small number.
  /// <div class=note>Update access is required to use the function in Qlik Sense Enterprise.</div>
  Future<void> scramble(String qFieldName) async {}

  /// Saves all objects that were modified in the app.
  /// <div class=note>Data from the data model are not saved.</div> <div class=note>This operation is possible only in Qlik Sense Enterprise.</div>
  Future<void> saveObjects() async {}

  /// Computes a set of association scores for each pair of fields between two given tables that have been loaded in an app.
  /// When a table contains some synthetic keys, all fields in the synthetic key tables are analyzed against fields in other tables. To denote that a field is a synthetic key, the field name is prefixed by _[Synthetic Key]:_ .
  Future<BuiltList<NxCell>> getAssociationScores(
      String qTable1, String qTable2) async {}

  /// Lists the media files.
  Future<MediaList> getMediaList() async {}

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
  Future<ContentLibraryList> getContentLibraries() async {}

  /// Returns the content of a library.
  ///
  /// ### Global content library
  /// In Qlik Sense Desktop, the content files are retrieved from:
  /// _%userprofile%\Documents\Qlik\Sense\Content\Default_
  /// In Qlik Sense Enterprise, the content files are retrieved from the Qlik Sense repository.
  ///
  /// ### App specific content library
  /// The embedded files are returned.
  Future<StaticContentList> getLibraryContent(String qName) async {}

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
  Future<DoReloadExResult> doReloadEx({DoReloadExParams qParams}) async {}

  /// Returns the number of entries on the back stack.
  Future<int> backCount() async {}

  /// Returns the number of entries on the Forward stack.
  Future<int> forwardCount() async {}

  /// Sets values in script.
  Future<void> setScript(String qScript) async {}

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
  Future<BuiltList<NxCell>> checkScriptSyntax() async {}

  /// Retrieves the variables that are tagged as favorite.
  Future<BuiltList<NxCell>> getFavoriteVariables() async {}

  /// Set some variables as favorite.
  Future<void> setFavoriteVariables(BuiltList<NxCell> qNames) async {}

  /// Gets the content of a file.
  Future<String> getIncludeFileContent(String qPath) async {}

  /// Creates a connection.
  /// A connection indicates from which data source the data should be taken.
  Future<String> createConnection(Connection qConnection) async {}

  /// Updates a connection.
  /// <div class=note>The identifier of a connection cannot be updated. qType cannot be modified with the ModifyConnection method.</div>
  Future<void> modifyConnection(String qConnectionId, Connection qConnection,
      {bool qOverrideCredentials}) async {}

  /// Deletes a connection.
  /// <div class=note>In Qlik Sense Enterprise, there is an additional file connection named _AttachedFiles_ . The AttachedFiles connection can only be removed by the administrator of the system. </div>
  Future<void> deleteConnection(String qConnectionId) async {}

  /// Retrieves a connection and returns:
  /// * The creation time of the connection.
  /// * The identifier of the connection.
  /// * The type of the connection.
  /// * The name of the connection.
  /// * The connection string.
  Future<Connection> getConnection(String qConnectionId) async {}

  /// Lists the connections in an app.
  /// <div class=note>In Qlik Sense Enterprise, there is an additional file connection named _AttachedFiles_ . This connection is stored in the Qlik Sense repository. </div>
  Future<BuiltList<NxCell>> getConnections() async {}

  /// Gives information about an ODBC, OLEDB or CUSTOM connection. See _Outputs_ for more details.
  Future<DatabaseInfo> getDatabaseInfo(String qConnectionId) async {}

  /// Lists the databases inside a ODBC, OLEDB or CUSTOM data source.
  Future<BuiltList<NxCell>> getDatabases(String qConnectionId) async {}

  /// Lists the owners of a database for a ODBC, OLEDB or CUSTOM connection.
  Future<BuiltList<NxCell>> getDatabaseOwners(String qConnectionId,
      {String qDatabase}) async {}

  /// Lists the tables inside a database for a ODBC, OLEDB or CUSTOM connection.
  Future<BuiltList<NxCell>> getDatabaseTables(String qConnectionId,
      {String qDatabase, String qOwner}) async {}

  /// Lists the fields inside a table of a database for a ODBC, OLEDB or CUSTOM connection.
  Future<BuiltList<NxCell>> getDatabaseTableFields(
      String qConnectionId, String qTable,
      {String qDatabase, String qOwner}) async {}

  /// Retrieves the values of the specified table of a database for a ODBC, OLEDB or CUSTOM connection.
  Future<BuiltList<NxCell>> getDatabaseTablePreview(
      String qConnectionId, String qTable,
      {String qDatabase, String qOwner, FilterInfo qConditions}) async {}

  /// Lists the items for a folder connection.
  Future<BuiltList<NxCell>> getFolderItemsForConnection(String qConnectionId,
      {String qRelativePath}) async {}

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
  Future<FileDataFormat> guessFileType(String qConnectionId,
      {String qRelativePath}) async {}

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
  Future<BuiltList<NxCell>> getFileTables(
      String qConnectionId, FileDataFormat qDataFormat,
      {String qRelativePath}) async {}

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
  Future<BuiltList<NxCell>> getFileTableFields(
      String qConnectionId, FileDataFormat qDataFormat, String qTable,
      {String qRelativePath}) async {}

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
  Future<BuiltList<NxCell>> getFileTablePreview(
      String qConnectionId, FileDataFormat qDataFormat, String qTable,
      {String qRelativePath}) async {}

  /// Lists the tables and fields of a JSON or XML file for a folder connection.
  Future<BuiltList<NxCell>> getFileTablesEx(
      String qConnectionId, FileDataFormat qDataFormat,
      {String qRelativePath}) async {}

  /// Sends a generic command to a custom connector.
  /// For more information on the commands that can be sent to a custom connector, see the QVX SDK help.
  Future<String> sendGenericCommandToCustomConnector(
      String qProvider,
      String qCommand,
      String qMethod,
      BuiltList<NxCell> qParameters,
      String qAppendConnection) async {}

  /// Returns search terms suggestions.
  Future<SearchSuggestionResult> searchSuggest(
      SearchCombinationOptions qOptions, BuiltList<NxCell> qTerms) async {}

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
      SearchCombinationOptions qOptions,
      BuiltList<NxCell> qTerms,
      SearchPage qPage) async {}

  /// Selects all search hits for a specified group.
  /// The results depend on the search context.
  /// _SearchCombinationOptions_.
  Future<void> selectAssociations(
      SearchCombinationOptions qOptions, BuiltList<NxCell> qTerms, int qMatchIx,
      {bool qSoftLock}) async {}

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
  Future<SearchResult> searchResults(SearchCombinationOptions qOptions,
      BuiltList<NxCell> qTerms, SearchPage qPage) async {}

  /// Returns the generic objects corresponding to one or more search terms. The search is performed within the title, subtitle, footnote and type. In addition, associated dimension values are also searched in. For example, if the country “Japan” is selected and the object contains the dimension City, the object will appear in the results for “Osaka” but not for “Johannesburg”. The generic objects with the following types will never appear in the results: _slideitem_ , _sheet_ , _story_ , _slide_ , _masterobject_ , _snapshot_ , _LoadModel_ , _appprops_ and _searchhistory_ .
  Future<SearchResult> searchObjects(SearchObjectOptions qOptions,
      BuiltList<NxCell> qTerms, SearchPage qPage) async {}

  /// Gets script and script meta-data.
  Future<AppScript> getScriptEx() async {}
}
