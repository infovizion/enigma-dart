import '../models.dart';
import 'package:built_collection/built_collection.dart';

class Doc {
  /// Returns a handle to a field.
  ObjectInterface getField(String qFieldName, String qStateName) {}

  /// Returns the description of a field.
  FieldDescription getFieldDescription(String qFieldName) {}

  /// Returns a handle to a variable.
  ObjectInterface getVariable(String qName) {}

  /// Returns a list of table states.
  ///
  /// The following states apply:
  /// * 0 The table is not loosely coupled.
  /// * 1 The table is loosely coupled.
  /// * 2 The table is loosely coupled and cannot be changed to another state using the Qlik Engine API.
  ///
  /// <div class=note>The last three values in the vector are for internal use.</div>
  /// <div class=note>In case of circular references, the engine automatically sets the table state to loosely coupled to avoid creating loops.</div>
  BuiltList<NxCell> getLooselyCoupledVector() {}

  /// Sets a list of table states, one for each table.
  ///
  /// The following states apply:
  /// * 0 The table is not loosely coupled.
  /// * 1 The table is loosely coupled.
  /// * 2 The table is loosely coupled and cannot be changed to another state using the Qlik Engine API.
  ///
  /// <div class=note>The last three values in the vector are for internal use.</div>
  bool setLooselyCoupledVector(BuiltList<NxCell> qv) {}

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
  String evaluate(String qExpression) {}

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
  FieldValue evaluateEx(String qExpression) {}

  /// Clear selections in fields for current state. Locked fields are not cleared by default.
  clearAll(bool qLockedAlso, String qStateName) {}

  /// Locks all selections in fields for current state.
  lockAll(String qStateName) {}

  /// Unlocks all selections in fields for current state.
  unlockAll(String qStateName) {}

  /// Loads the last logical operation (if any).
  back() {}

  /// Loads the next logical operation (if any).
  forward() {}

  /// Creates a variable.
  bool createVariable(String qName) {}

  /// Removes a variable.
  bool removeVariable(String qName) {}

  /// Returns locale information.
  LocaleInfo getLocaleInfo() {}

  /// Returns:
  /// * The list of tables in an app and the fields inside each table.
  /// * The list of derived fields.
  /// * The list of key fields.
  BuiltList<NxCell> getTablesAndKeys(Size qWindowSize, Size qNullSize,
      int qCellHeight, bool qSyntheticMode, bool qIncludeSysVars) {}

  /// Returns information about the position of the tables in the data model viewer.
  /// <div class=note>The position of the broom points and the position of the connection points cannot be retrieved in Qlik Sense.</div>
  ///
  /// ### Representation of tables, broom points and connection points
  /// ![](images/ui_gen_BroomConnectionPoints_dmv.png)<br>
  /// The green circles represent the broom points.
  /// The red circle represents a connection point.
  TableViewDlgSaveInfo getViewDlgSaveInfo() {}

  /// Sets the positions of the tables in the data model viewer.
  /// <div class=note>The position of the broom points and the position of the connection points cannot be set in Qlik Sense.</div>
  ///
  /// ### Representation of tables, broom points and connection points
  /// ![](images/ui_gen_BroomConnectionPoints_dmv.png)<br>
  /// The green circles represent the broom points.
  /// The red circle represents a connection point.
  setViewDlgSaveInfo(TableViewDlgSaveInfo qInfo) {}

  /// Creates a script that contains one section. This section contains **SET** statements that give localized information from the regional settings of the computer.
  /// <div class=note>The computer regional settings are retrieved when the engine starts.</div>
  String getEmptyScript(String qLocalizedMainSection) {}

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
  bool doReload(int qMode, bool qPartial, bool qDebug) {}

  /// Lists the breakpoints in the script of an app.
  BuiltList<NxCell> getScriptBreakpoints() {}

  /// Set some breakpoints in the script of an app.
  setScriptBreakpoints(BuiltList<NxCell> qBreakpoints) {}

  /// Gets values in script.
  String getScript() {}

  /// Fetches updated variables after a statement execution.
  ///
  /// <div class=note>If qRefSeqNo and qSetSeqNo are set to 0, it means that the variables were not updated.</div>
  BuiltList<NxCell> getTextMacros() {}

  /// Limits the number of rows of data to load from a data source.
  /// This method works when reloading in debug mode.
  setFetchLimit(int qLimit) {}

  /// Saves an app. All objects and data in the data model are saved.
  doSave(String qFileName) {}

  /// Retrieves the data of a specific table.
  BuiltList<NxCell> getTableData(
      int qOffset, int qRows, bool qSyntheticMode, String qTableName) {}

  /// Evaluates an app.
  /// Returns dynamic properties (if any) in addition to the engine (fixed) properties.
  /// A data set is returned.
  NxAppLayout getAppLayout() {}

  /// Sets properties to an app.
  setAppProperties(NxAppProperties qProp) {}

  /// Gets the properties of an app.
  NxAppProperties getAppProperties() {}

  /// Gets the lineage information of the app. The lineage information includes the LOAD and STORE statements from the data load script associated with this app.
  /// An array of lineage information.
  BuiltList<NxCell> getLineage() {}

  /// Creates a transient object. For example, you can use a transient object to create an app overview or a story overview.
  /// It is possible to create a transient object that is linked to another object.
  /// A linked object is an object that points to a linking object. The linking object is defined in the properties of the linked object (in _qExtendsId_ ).
  /// The linked object has the same properties as the linking object.
  /// <div class=note>The linking object cannot be a transient object.</div>
  ObjectInterface createSessionObject(GenericObjectProperties qProp) {}

  /// Removes a transient object.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  bool destroySessionObject(String qId) {}

  /// Creates a generic object at app level. For more information on generic objects, see _Generic object_.
  /// It is possible to create a generic object that is linked to another object.
  /// A linked object is an object that points to a linking object. The linking object is defined in the properties of the linked object (in _qExtendsId_ ).
  /// The linked object has the same properties as the linking object.
  /// <div class=note>The linking object cannot be a transient object.</div>
  NxInfo createObject(GenericObjectProperties qProp) {}

  /// Removes an app object.
  /// The children of the object (if any) are removed as well.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  bool destroyObject(String qId) {}

  /// Returns the type of the app object and the corresponding handle.
  ObjectInterface getObject(String qId) {}
  BuiltList<NxCell> getObjects(NxGetObjectOptions qOptions) {}
  BuiltList<NxCell> getBookmarks(NxGetBookmarkOptions qOptions) {}

  /// Clones root level objects, such as sheets and stories. The CloneObject method works for both app objects and child objects.
  /// When you clone an object that contains children, the children are cloned as well.
  /// If you for example want to clone a visualization, you must provide the qID of the root object, in this case the sheet since CloneObject clones root level objects.
  /// <div class=note>It is not possible to clone a session object.</div>
  ///
  /// <div class=note>The identifier is set by the engine.</div>
  String cloneObject(String qId) {}

  /// Creates a draft of an object.
  /// This method can be used to create a draft of a sheet or a story that is published. This is a way to continue working on a sheet or a story that is published.
  /// Replace the published object by the content of the draft by invoking the _CommitDraft method_.
  ///
  /// <div class=note>The identifier is set by the engine.</div>
  String createDraft(String qId) {}

  /// Commits the draft of an object that was previously created by invoking the _CreateDraft method_.
  /// Committing a draft replaces the corresponding published object.
  commitDraft(String qId) {}

  /// Removes the draft of an object.
  /// The children of the draft object (if any) are removed as well.
  /// This method can be used to cancel the work on the draft of an object. For example, if you had created a draft of a sheet that is published, you might not want anymore to replace the published sheet.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  bool destroyDraft(String qId, String qSourceId) {}

  /// Undoes the previous operation.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  bool undo() {}

  /// Redoes the previous operation.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  bool redo() {}

  /// Clears entirely the undo and redo buffer.
  clearUndoBuffer() {}

  /// Creates a master dimension.
  /// A master dimension is stored in the library of an app and can be used in many objects. Several generic objects can contain the same dimension.
  NxInfo createDimension(GenericDimensionProperties qProp) {}

  /// Removes a dimension.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  bool destroyDimension(String qId) {}

  /// Returns the handle of a dimension.
  ObjectInterface getDimension(String qId) {}

  /// Clones a dimension.
  ///
  /// <div class=note>The identifier is set by the engine.</div>
  String cloneDimension(String qId) {}

  /// Creates a master measure.
  /// A master measure is stored in the library of an app and can be used in many objects. Several generic objects can contain the same measure.
  NxInfo createMeasure(GenericMeasureProperties qProp) {}

  /// Removes a generic measure.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  bool destroyMeasure(String qId) {}

  /// Returns the handle of a measure.
  ObjectInterface getMeasure(String qId) {}

  /// Clones a measure.
  ///
  /// <div class=note>The identifier is set by the engine.</div>
  String cloneMeasure(String qId) {}

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
  ObjectInterface createSessionVariable(GenericVariableProperties qProp) {}

  /// Removes a transient variable.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  bool destroySessionVariable(String qId) {}

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
  NxInfo createVariableEx(GenericVariableProperties qProp) {}

  /// Removes a variable.
  /// Script-defined variables cannot be removed using the _DestroyVariableById method_ or the _DestroyVariableByName method_. For more information, see _Remove a variable_.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  bool destroyVariableById(String qId) {}

  /// Removes a variable.
  /// Script-defined variables cannot be removed using the _DestroyVariableById method_ or the _DestroyVariableByName method_. For more information, see _Remove a variable_.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  bool destroyVariableByName(String qName) {}

  /// Gets the handle of a variable.
  ObjectInterface getVariableById(String qId) {}

  /// Gets the handle of a variable.
  ObjectInterface getVariableByName(String qName) {}

  /// Checks if a given expression is valid.
  /// <div class=note>The expression is correct if the parameters _qErrorMsg_ , _qBadFieldNames_ and _qDangerousFieldNames_ are empty. </div>
  String checkExpression(String qExpr, BuiltList<NxCell> qLabels) {}

  /// Checks if:
  /// * A given expression is valid.
  /// * A number is correct according to the locale.
  String checkNumberOrExpression(String qExpr) {}

  /// Adds an alternate state in the app.
  /// You can create multiple states within a Qlik Sense app and apply these states to specific objects within the app. Objects in a given state are not affected by user selections in the other states.
  addAlternateState(String qStateName) {}

  /// Removes an alternate state in the app.
  removeAlternateState(String qStateName) {}

  /// Creates a bookmark.
  NxInfo createBookmark(GenericBookmarkProperties qProp) {}

  /// Removes a bookmark.
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  bool destroyBookmark(String qId) {}

  /// Returns the handle of a bookmark.
  ObjectInterface getBookmark(String qId) {}

  /// Applies a bookmark.
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  bool applyBookmark(String qId) {}

  /// Clones a bookmark.
  /// <div class=note>The identifier is set by the engine.</div>
  String cloneBookmark(String qId) {}

  /// Adds a field on the fly.
  /// <div class=note>The expression of a field on the fly is persisted but not its values. </div>
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  bool addFieldFromExpression(String qName, String qExpr) {}

  /// Find the field-on-the-fly by passing its readable name.
  String getFieldOnTheFlyByName(String qReadableName) {}

  /// Returns the identifier and the type of any generic object in the app.
  BuiltList<NxCell> getAllInfos() {}

  /// Resumes the app as the user left it.
  resume() {}

  /// Aborts any selection mode in an app. For more information about selection mode, see _BeginSelections method_.
  abortModal(bool qAccept) {}

  /// Publishes an app.
  /// All app objects are published. Generic objects, bookmarks, dimensions and measures inside the app are published.
  /// <div class=note>An app can only be published once and cannot be published to more than one stream.</div>
  publish(String qStreamId, String qName) {}

  /// Retrieves any fields that match all of the specified tags or just one of them in the data model of an app.
  /// <div class=note>Tags set by Qlik Sense are prefixed by the _$_ sign.  </div>
  BuiltList<NxCell> getMatchingFields(
      BuiltList<NxCell> qTags, String qMatchingFieldMode) {}

  /// Retrieves any fields that belong to the same archipelago as the specified field and that match at least one of the specified tags.
  /// <div class=note>Tags set by Qlik Sense are prefixed by the _$_ sign.  </div>
  BuiltList<NxCell> findMatchingFields(
      String qFieldName, BuiltList<NxCell> qTags) {}

  /// Scrambles a field so the data is not recognizable. Some properties are retained to help debugging. For example, special characters are not changed, and small numbers are scrambled to another small number.
  /// <div class=note>Update access is required to use the function in Qlik Sense Enterprise.</div>
  scramble(String qFieldName) {}

  /// Saves all objects that were modified in the app.
  /// <div class=note>Data from the data model are not saved.</div> <div class=note>This operation is possible only in Qlik Sense Enterprise.</div>
  saveObjects() {}

  /// Computes a set of association scores for each pair of fields between two given tables that have been loaded in an app.
  /// When a table contains some synthetic keys, all fields in the synthetic key tables are analyzed against fields in other tables. To denote that a field is a synthetic key, the field name is prefixed by _[Synthetic Key]:_ .
  BuiltList<NxCell> getAssociationScores(String qTable1, String qTable2) {}

  /// Lists the media files.
  MediaList getMediaList() {}

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
  ContentLibraryList getContentLibraries() {}

  /// Returns the content of a library.
  ///
  /// ### Global content library
  /// In Qlik Sense Desktop, the content files are retrieved from:
  /// _%userprofile%\Documents\Qlik\Sense\Content\Default_
  /// In Qlik Sense Enterprise, the content files are retrieved from the Qlik Sense repository.
  ///
  /// ### App specific content library
  /// The embedded files are returned.
  StaticContentList getLibraryContent(String qName) {}

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
  DoReloadExResult doReloadEx(DoReloadExParams qParams) {}

  /// Returns the number of entries on the back stack.
  int backCount() {}

  /// Returns the number of entries on the Forward stack.
  int forwardCount() {}

  /// Sets values in script.
  setScript(String qScript) {}

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
  BuiltList<NxCell> checkScriptSyntax() {}

  /// Retrieves the variables that are tagged as favorite.
  BuiltList<NxCell> getFavoriteVariables() {}

  /// Set some variables as favorite.
  setFavoriteVariables(BuiltList<NxCell> qNames) {}

  /// Gets the content of a file.
  String getIncludeFileContent(String qPath) {}

  /// Creates a connection.
  /// A connection indicates from which data source the data should be taken.
  String createConnection(Connection qConnection) {}

  /// Updates a connection.
  /// <div class=note>The identifier of a connection cannot be updated. qType cannot be modified with the ModifyConnection method.</div>
  modifyConnection(String qConnectionId, Connection qConnection,
      bool qOverrideCredentials) {}

  /// Deletes a connection.
  /// <div class=note>In Qlik Sense Enterprise, there is an additional file connection named _AttachedFiles_ . The AttachedFiles connection can only be removed by the administrator of the system. </div>
  deleteConnection(String qConnectionId) {}

  /// Retrieves a connection and returns:
  /// * The creation time of the connection.
  /// * The identifier of the connection.
  /// * The type of the connection.
  /// * The name of the connection.
  /// * The connection string.
  Connection getConnection(String qConnectionId) {}

  /// Lists the connections in an app.
  /// <div class=note>In Qlik Sense Enterprise, there is an additional file connection named _AttachedFiles_ . This connection is stored in the Qlik Sense repository. </div>
  BuiltList<NxCell> getConnections() {}

  /// Gives information about an ODBC, OLEDB or CUSTOM connection. See _Outputs_ for more details.
  DatabaseInfo getDatabaseInfo(String qConnectionId) {}

  /// Lists the databases inside a ODBC, OLEDB or CUSTOM data source.
  BuiltList<NxCell> getDatabases(String qConnectionId) {}

  /// Lists the owners of a database for a ODBC, OLEDB or CUSTOM connection.
  BuiltList<NxCell> getDatabaseOwners(String qConnectionId, String qDatabase) {}

  /// Lists the tables inside a database for a ODBC, OLEDB or CUSTOM connection.
  BuiltList<NxCell> getDatabaseTables(
      String qConnectionId, String qDatabase, String qOwner) {}

  /// Lists the fields inside a table of a database for a ODBC, OLEDB or CUSTOM connection.
  BuiltList<NxCell> getDatabaseTableFields(
      String qConnectionId, String qDatabase, String qOwner, String qTable) {}

  /// Retrieves the values of the specified table of a database for a ODBC, OLEDB or CUSTOM connection.
  BuiltList<NxCell> getDatabaseTablePreview(String qConnectionId,
      String qDatabase, String qOwner, String qTable, FilterInfo qConditions) {}

  /// Lists the items for a folder connection.
  BuiltList<NxCell> getFolderItemsForConnection(
      String qConnectionId, String qRelativePath) {}

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
  FileDataFormat guessFileType(String qConnectionId, String qRelativePath) {}

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
  BuiltList<NxCell> getFileTables(
      String qConnectionId, String qRelativePath, FileDataFormat qDataFormat) {}

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
  BuiltList<NxCell> getFileTableFields(String qConnectionId,
      String qRelativePath, FileDataFormat qDataFormat, String qTable) {}

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
  BuiltList<NxCell> getFileTablePreview(String qConnectionId,
      String qRelativePath, FileDataFormat qDataFormat, String qTable) {}

  /// Lists the tables and fields of a JSON or XML file for a folder connection.
  BuiltList<NxCell> getFileTablesEx(
      String qConnectionId, String qRelativePath, FileDataFormat qDataFormat) {}

  /// Sends a generic command to a custom connector.
  /// For more information on the commands that can be sent to a custom connector, see the QVX SDK help.
  String sendGenericCommandToCustomConnector(
      String qProvider,
      String qCommand,
      String qMethod,
      BuiltList<NxCell> qParameters,
      String qAppendConnection) {}

  /// Returns search terms suggestions.
  SearchSuggestionResult searchSuggest(
      SearchCombinationOptions qOptions, BuiltList<NxCell> qTerms) {}

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
  SearchAssociationResult searchAssociations(SearchCombinationOptions qOptions,
      BuiltList<NxCell> qTerms, SearchPage qPage) {}

  /// Selects all search hits for a specified group.
  /// The results depend on the search context.
  /// _SearchCombinationOptions_.
  selectAssociations(SearchCombinationOptions qOptions,
      BuiltList<NxCell> qTerms, int qMatchIx, bool qSoftLock) {}

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
  SearchResult searchResults(SearchCombinationOptions qOptions,
      BuiltList<NxCell> qTerms, SearchPage qPage) {}

  /// Returns the generic objects corresponding to one or more search terms. The search is performed within the title, subtitle, footnote and type. In addition, associated dimension values are also searched in. For example, if the country “Japan” is selected and the object contains the dimension City, the object will appear in the results for “Osaka” but not for “Johannesburg”. The generic objects with the following types will never appear in the results: _slideitem_ , _sheet_ , _story_ , _slide_ , _masterobject_ , _snapshot_ , _LoadModel_ , _appprops_ and _searchhistory_ .
  SearchResult searchObjects(SearchObjectOptions qOptions,
      BuiltList<NxCell> qTerms, SearchPage qPage) {}

  /// Gets script and script meta-data.
  AppScript getScriptEx() {}
}
