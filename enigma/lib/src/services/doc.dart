import 'dart:async';
import '../enigma/base_service.dart';
import '../enigma/enigma.dart';
import '../models.dart';
import '../serializers/json_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'field.dart';
import 'variable.dart';
import 'generic_object.dart';
import 'generic_dimension.dart';
import 'generic_measure.dart';
import 'generic_variable.dart';
import 'generic_bookmark.dart';

class Doc extends BaseService {
  Doc(Enigma enigma, int handle) : super(enigma, handle);

  String get serviceType => 'Doc';

  /// Returns a handle to a field.
  Future<Field> getField(String fieldName, {String stateName}) async {
    var __params = <String, dynamic>{};
    __params['qFieldName'] = fieldName;
    if (stateName != null) {
      __params['qStateName'] = stateName;
    }
    var rawResult = await query('GetField', __params);
    var __jsonData = rawResult['result']['qReturn'];
    var __dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), __jsonData);
    return new Field(enigma, __dartData.handle);
  }

  /// Returns the description of a field.
  Future<FieldDescription> getFieldDescription(String fieldName) async {
    var __params = <String, dynamic>{};
    __params['qFieldName'] = fieldName;
    var rawResult = await query('GetFieldDescription', __params);
    var __jsonData = rawResult['result']['qReturn'];
    var __dartData = fromJsonFullType<FieldDescription>(
        const FullType(FieldDescription), __jsonData);
    return __dartData;
  }

  /// Returns a handle to a variable.
  Future<Variable> getVariable(String name) async {
    var __params = <String, dynamic>{};
    __params['qName'] = name;
    var rawResult = await query('GetVariable', __params);
    var __jsonData = rawResult['result']['qReturn'];
    var __dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), __jsonData);
    return new Variable(enigma, __dartData.handle);
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
  Future<BuiltList<String>> getLooselyCoupledVector() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetLooselyCoupledVector', __params);
    return rawResult['result']['qv'];
  }

  /// Sets a list of table states, one for each table.
  ///
  /// The following states apply:
  /// * 0 The table is not loosely coupled.
  /// * 1 The table is loosely coupled.
  /// * 2 The table is loosely coupled and cannot be changed to another state using the Qlik Engine API.
  ///
  /// <div class=note>The last three values in the vector are for internal use.</div>
  Future<bool> setLooselyCoupledVector(List<String> v) async {
    var __params = <String, dynamic>{};
    __params['qv'] = v;
    var rawResult = await query('SetLooselyCoupledVector', __params);
    return rawResult['result']['qReturn'];
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
    var __params = <String, dynamic>{};
    __params['qExpression'] = expression;
    var rawResult = await query('Evaluate', __params);
    return rawResult['result']['qReturn'];
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
    var __params = <String, dynamic>{};
    __params['qExpression'] = expression;
    var rawResult = await query('EvaluateEx', __params);
    var __jsonData = rawResult['result']['qValue'];
    var __dartData =
        fromJsonFullType<FieldValue>(const FullType(FieldValue), __jsonData);
    return __dartData;
  }

  /// Clear selections in fields for current state. Locked fields are not cleared by default.
  Future<void> clearAll({bool lockedAlso, String stateName}) async {
    var __params = <String, dynamic>{};
    if (lockedAlso != null) {
      __params['qLockedAlso'] = lockedAlso;
    }
    if (stateName != null) {
      __params['qStateName'] = stateName;
    }
    var rawResult = await query('ClearAll', __params);
  }

  /// Locks all selections in fields for current state.
  Future<void> lockAll({String stateName}) async {
    var __params = <String, dynamic>{};
    if (stateName != null) {
      __params['qStateName'] = stateName;
    }
    var rawResult = await query('LockAll', __params);
  }

  /// Unlocks all selections in fields for current state.
  Future<void> unlockAll({String stateName}) async {
    var __params = <String, dynamic>{};
    if (stateName != null) {
      __params['qStateName'] = stateName;
    }
    var rawResult = await query('UnlockAll', __params);
  }

  /// Loads the last logical operation (if any).
  Future<void> back() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('Back', __params);
  }

  /// Loads the next logical operation (if any).
  Future<void> forward() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('Forward', __params);
  }

  /// Creates a variable.
  Future<bool> createVariable(String name) async {
    var __params = <String, dynamic>{};
    __params['qName'] = name;
    var rawResult = await query('CreateVariable', __params);
    return rawResult['result']['qReturn'];
  }

  /// Removes a variable.
  Future<bool> removeVariable(String name) async {
    var __params = <String, dynamic>{};
    __params['qName'] = name;
    var rawResult = await query('RemoveVariable', __params);
    return rawResult['result']['qReturn'];
  }

  /// Returns locale information.
  Future<LocaleInfo> getLocaleInfo() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetLocaleInfo', __params);
    var __jsonData = rawResult['result']['qReturn'];
    var __dartData =
        fromJsonFullType<LocaleInfo>(const FullType(LocaleInfo), __jsonData);
    return __dartData;
  }

  /// Returns:
  /// * The list of tables in an app and the fields inside each table.
  /// * The list of derived fields.
  /// * The list of key fields.
  Future<GetTablesAndKeysResult> getTablesAndKeys(
      Size windowSize,
      Size nullSize,
      int cellHeight,
      bool syntheticMode,
      bool includeSysVars) async {
    var __params = <String, dynamic>{};
    __params['qWindowSize'] =
        toJson(windowSize, specifiedType: const FullType(Size));
    __params['qNullSize'] =
        toJson(nullSize, specifiedType: const FullType(Size));
    __params['qCellHeight'] = cellHeight;
    __params['qSyntheticMode'] = syntheticMode;
    __params['qIncludeSysVars'] = includeSysVars;
    var rawResult = await query('GetTablesAndKeys', __params);
    var __jsondata = {};
    __jsondata['qtr'] = rawResult['result']['qtr'];
    __jsondata['qk'] = rawResult['result']['qk'];
    var __dartData = fromJsonFullType<GetTablesAndKeysResult>(
        const FullType(GetTablesAndKeysResult), __jsondata);
    return __dartData;
  }

  /// Returns information about the position of the tables in the data model viewer.
  /// <div class=note>The position of the broom points and the position of the connection points cannot be retrieved in Qlik Sense.</div>
  ///
  /// ### Representation of tables, broom points and connection points
  /// ![](images/ui_gen_BroomConnectionPoints_dmv.png)<br>
  /// The green circles represent the broom points.
  /// The red circle represents a connection point.
  Future<TableViewDlgSaveInfo> getViewDlgSaveInfo() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetViewDlgSaveInfo', __params);
    var __jsonData = rawResult['result']['qReturn'];
    var __dartData = fromJsonFullType<TableViewDlgSaveInfo>(
        const FullType(TableViewDlgSaveInfo), __jsonData);
    return __dartData;
  }

  /// Sets the positions of the tables in the data model viewer.
  /// <div class=note>The position of the broom points and the position of the connection points cannot be set in Qlik Sense.</div>
  ///
  /// ### Representation of tables, broom points and connection points
  /// ![](images/ui_gen_BroomConnectionPoints_dmv.png)<br>
  /// The green circles represent the broom points.
  /// The red circle represents a connection point.
  Future<void> setViewDlgSaveInfo(TableViewDlgSaveInfo info) async {
    var __params = <String, dynamic>{};
    __params['qInfo'] =
        toJson(info, specifiedType: const FullType(TableViewDlgSaveInfo));
    var rawResult = await query('SetViewDlgSaveInfo', __params);
  }

  /// Creates a script that contains one section. This section contains **SET** statements that give localized information from the regional settings of the computer.
  /// <div class=note>The computer regional settings are retrieved when the engine starts.</div>
  Future<String> getEmptyScript({String localizedMainSection}) async {
    var __params = <String, dynamic>{};
    if (localizedMainSection != null) {
      __params['qLocalizedMainSection'] = localizedMainSection;
    }
    var rawResult = await query('GetEmptyScript', __params);
    return rawResult['result']['qReturn'];
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
  Future<bool> doReload({int mode, bool partial, bool debug}) async {
    var __params = <String, dynamic>{};
    if (mode != null) {
      __params['qMode'] = mode;
    }
    if (partial != null) {
      __params['qPartial'] = partial;
    }
    if (debug != null) {
      __params['qDebug'] = debug;
    }
    var rawResult = await query('DoReload', __params);
    return rawResult['result']['qReturn'];
  }

  /// Lists the breakpoints in the script of an app.
  Future<BuiltList<EditorBreakpoint>> getScriptBreakpoints() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetScriptBreakpoints', __params);
    var __jsonData = rawResult['result']['qBreakpoints'];
    var __dartData = fromJsonFullType<BuiltList<EditorBreakpoint>>(
        const FullType(BuiltList, const [const FullType(EditorBreakpoint)]),
        __jsonData);
    return __dartData;
  }

  /// Set some breakpoints in the script of an app.
  Future<void> setScriptBreakpoints(List<EditorBreakpoint> breakpoints) async {
    var __params = <String, dynamic>{};
    __params['qBreakpoints'] = toJson(BuiltList<EditorBreakpoint>(breakpoints),
        specifiedType: const FullType(
            BuiltList, const [const FullType(EditorBreakpoint)]));
    var rawResult = await query('SetScriptBreakpoints', __params);
  }

  /// Gets values in script.
  Future<String> getScript() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetScript', __params);
    return rawResult['result']['qScript'];
  }

  /// Fetches updated variables after a statement execution.
  ///
  /// <div class=note>If qRefSeqNo and qSetSeqNo are set to 0, it means that the variables were not updated.</div>
  Future<BuiltList<TextMacro>> getTextMacros() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetTextMacros', __params);
    var __jsonData = rawResult['result']['qMacros'];
    var __dartData = fromJsonFullType<BuiltList<TextMacro>>(
        const FullType(BuiltList, const [const FullType(TextMacro)]),
        __jsonData);
    return __dartData;
  }

  /// Limits the number of rows of data to load from a data source.
  /// This method works when reloading in debug mode.
  Future<void> setFetchLimit(int limit) async {
    var __params = <String, dynamic>{};
    __params['qLimit'] = limit;
    var rawResult = await query('SetFetchLimit', __params);
  }

  /// Saves an app. All objects and data in the data model are saved.
  Future<void> doSave({String fileName}) async {
    var __params = <String, dynamic>{};
    if (fileName != null) {
      __params['qFileName'] = fileName;
    }
    var rawResult = await query('DoSave', __params);
  }

  /// Retrieves the data of a specific table.
  Future<BuiltList<TableRow>> getTableData(
      int offset, int rows, bool syntheticMode, String tableName) async {
    var __params = <String, dynamic>{};
    __params['qOffset'] = offset;
    __params['qRows'] = rows;
    __params['qSyntheticMode'] = syntheticMode;
    __params['qTableName'] = tableName;
    var rawResult = await query('GetTableData', __params);
    var __jsonData = rawResult['result']['qData'];
    var __dartData = fromJsonFullType<BuiltList<TableRow>>(
        const FullType(BuiltList, const [const FullType(TableRow)]),
        __jsonData);
    return __dartData;
  }

  /// Evaluates an app.
  /// Returns dynamic properties (if any) in addition to the engine (fixed) properties.
  /// A data set is returned.
  Future<NxAppLayout> getAppLayout() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetAppLayout', __params);
    var __jsonData = rawResult['result']['qLayout'];
    var __dartData =
        fromJsonFullType<NxAppLayout>(const FullType(NxAppLayout), __jsonData);
    return __dartData;
  }

  /// Sets properties to an app.
  Future<void> setAppProperties(NxAppProperties prop) async {
    var __params = <String, dynamic>{};
    __params['qProp'] =
        toJson(prop, specifiedType: const FullType(NxAppProperties));
    var rawResult = await query('SetAppProperties', __params);
  }

  /// Gets the properties of an app.
  Future<NxAppProperties> getAppProperties() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetAppProperties', __params);
    var __jsonData = rawResult['result']['qProp'];
    var __dartData = fromJsonFullType<NxAppProperties>(
        const FullType(NxAppProperties), __jsonData);
    return __dartData;
  }

  /// Gets the lineage information of the app. The lineage information includes the LOAD and STORE statements from the data load script associated with this app.
  /// An array of lineage information.
  Future<BuiltList<LineageInfo>> getLineage() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetLineage', __params);
    var __jsonData = rawResult['result']['qLineage'];
    var __dartData = fromJsonFullType<BuiltList<LineageInfo>>(
        const FullType(BuiltList, const [const FullType(LineageInfo)]),
        __jsonData);
    return __dartData;
  }

  /// Creates a transient object. For example, you can use a transient object to create an app overview or a story overview.
  /// It is possible to create a transient object that is linked to another object.
  /// A linked object is an object that points to a linking object. The linking object is defined in the properties of the linked object (in _qExtendsId_ ).
  /// The linked object has the same properties as the linking object.
  /// <div class=note>The linking object cannot be a transient object.</div>
  Future<GenericObject> createSessionObject(
      GenericObjectProperties prop) async {
    var __params = <String, dynamic>{};
    __params['qProp'] =
        toJson(prop, specifiedType: const FullType(GenericObjectProperties));
    var rawResult = await query('CreateSessionObject', __params);
    var __jsonData = rawResult['result']['qReturn'];
    var __dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), __jsonData);
    return new GenericObject(enigma, __dartData.handle);
  }

  /// Removes a transient object.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroySessionObject(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('DestroySessionObject', __params);
    return rawResult['result']['qSuccess'];
  }

  /// Creates a generic object at app level. For more information on generic objects, see _Generic object_.
  /// It is possible to create a generic object that is linked to another object.
  /// A linked object is an object that points to a linking object. The linking object is defined in the properties of the linked object (in _qExtendsId_ ).
  /// The linked object has the same properties as the linking object.
  /// <div class=note>The linking object cannot be a transient object.</div>
  Future<GenericObject> createObject(GenericObjectProperties prop) async {
    var __params = <String, dynamic>{};
    __params['qProp'] =
        toJson(prop, specifiedType: const FullType(GenericObjectProperties));
    var rawResult = await query('CreateObject', __params);
    var __jsonData = rawResult['result']['qReturn'];
    var __dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), __jsonData);
    return new GenericObject(enigma, __dartData.handle);
  }

  /// Removes an app object.
  /// The children of the object (if any) are removed as well.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyObject(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('DestroyObject', __params);
    return rawResult['result']['qSuccess'];
  }

  /// Returns the type of the app object and the corresponding handle.
  Future<GenericObject> getObject(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('GetObject', __params);
    var __jsonData = rawResult['result']['qReturn'];
    var __dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), __jsonData);
    return new GenericObject(enigma, __dartData.handle);
  }

  Future<BuiltList<NxContainerEntry>> getObjects(
      NxGetObjectOptions options) async {
    var __params = <String, dynamic>{};
    __params['qOptions'] =
        toJson(options, specifiedType: const FullType(NxGetObjectOptions));
    var rawResult = await query('GetObjects', __params);
    var __jsonData = rawResult['result']['qList'];
    var __dartData = fromJsonFullType<BuiltList<NxContainerEntry>>(
        const FullType(BuiltList, const [const FullType(NxContainerEntry)]),
        __jsonData);
    return __dartData;
  }

  Future<BuiltList<NxContainerEntry>> getBookmarks(
      NxGetBookmarkOptions options) async {
    var __params = <String, dynamic>{};
    __params['qOptions'] =
        toJson(options, specifiedType: const FullType(NxGetBookmarkOptions));
    var rawResult = await query('GetBookmarks', __params);
    var __jsonData = rawResult['result']['qList'];
    var __dartData = fromJsonFullType<BuiltList<NxContainerEntry>>(
        const FullType(BuiltList, const [const FullType(NxContainerEntry)]),
        __jsonData);
    return __dartData;
  }

  /// Clones root level objects, such as sheets and stories. The CloneObject method works for both app objects and child objects.
  /// When you clone an object that contains children, the children are cloned as well.
  /// If you for example want to clone a visualization, you must provide the qID of the root object, in this case the sheet since CloneObject clones root level objects.
  /// <div class=note>It is not possible to clone a session object.</div>
  ///
  /// <div class=note>The identifier is set by the engine.</div>
  Future<String> cloneObject(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('CloneObject', __params);
    return rawResult['result']['qCloneId'];
  }

  /// Creates a draft of an object.
  /// This method can be used to create a draft of a sheet or a story that is published. This is a way to continue working on a sheet or a story that is published.
  /// Replace the published object by the content of the draft by invoking the _CommitDraft method_.
  ///
  /// <div class=note>The identifier is set by the engine.</div>
  Future<String> createDraft(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('CreateDraft', __params);
    return rawResult['result']['qDraftId'];
  }

  /// Commits the draft of an object that was previously created by invoking the _CreateDraft method_.
  /// Committing a draft replaces the corresponding published object.
  Future<void> commitDraft(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('CommitDraft', __params);
  }

  /// Removes the draft of an object.
  /// The children of the draft object (if any) are removed as well.
  /// This method can be used to cancel the work on the draft of an object. For example, if you had created a draft of a sheet that is published, you might not want anymore to replace the published sheet.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyDraft(String id, String sourceId) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    __params['qSourceId'] = sourceId;
    var rawResult = await query('DestroyDraft', __params);
    return rawResult['result']['qSuccess'];
  }

  /// Undoes the previous operation.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> undo() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('Undo', __params);
    return rawResult['result']['qSuccess'];
  }

  /// Redoes the previous operation.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> redo() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('Redo', __params);
    return rawResult['result']['qSuccess'];
  }

  /// Clears entirely the undo and redo buffer.
  Future<void> clearUndoBuffer() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('ClearUndoBuffer', __params);
  }

  /// Creates a master dimension.
  /// A master dimension is stored in the library of an app and can be used in many objects. Several generic objects can contain the same dimension.
  Future<GenericDimension> createDimension(
      GenericDimensionProperties prop) async {
    var __params = <String, dynamic>{};
    __params['qProp'] =
        toJson(prop, specifiedType: const FullType(GenericDimensionProperties));
    var rawResult = await query('CreateDimension', __params);
    var __jsonData = rawResult['result']['qReturn'];
    var __dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), __jsonData);
    return new GenericDimension(enigma, __dartData.handle);
  }

  /// Removes a dimension.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyDimension(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('DestroyDimension', __params);
    return rawResult['result']['qSuccess'];
  }

  /// Returns the handle of a dimension.
  Future<GenericDimension> getDimension(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('GetDimension', __params);
    var __jsonData = rawResult['result']['qReturn'];
    var __dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), __jsonData);
    return new GenericDimension(enigma, __dartData.handle);
  }

  /// Clones a dimension.
  ///
  /// <div class=note>The identifier is set by the engine.</div>
  Future<String> cloneDimension(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('CloneDimension', __params);
    return rawResult['result']['qCloneId'];
  }

  /// Creates a master measure.
  /// A master measure is stored in the library of an app and can be used in many objects. Several generic objects can contain the same measure.
  Future<GenericMeasure> createMeasure(GenericMeasureProperties prop) async {
    var __params = <String, dynamic>{};
    __params['qProp'] =
        toJson(prop, specifiedType: const FullType(GenericMeasureProperties));
    var rawResult = await query('CreateMeasure', __params);
    var __jsonData = rawResult['result']['qReturn'];
    var __dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), __jsonData);
    return new GenericMeasure(enigma, __dartData.handle);
  }

  /// Removes a generic measure.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyMeasure(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('DestroyMeasure', __params);
    return rawResult['result']['qSuccess'];
  }

  /// Returns the handle of a measure.
  Future<GenericMeasure> getMeasure(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('GetMeasure', __params);
    var __jsonData = rawResult['result']['qReturn'];
    var __dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), __jsonData);
    return new GenericMeasure(enigma, __dartData.handle);
  }

  /// Clones a measure.
  ///
  /// <div class=note>The identifier is set by the engine.</div>
  Future<String> cloneMeasure(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('CloneMeasure', __params);
    return rawResult['result']['qCloneId'];
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
  Future<GenericVariable> createSessionVariable(
      GenericVariableProperties prop) async {
    var __params = <String, dynamic>{};
    __params['qProp'] =
        toJson(prop, specifiedType: const FullType(GenericVariableProperties));
    var rawResult = await query('CreateSessionVariable', __params);
    var __jsonData = rawResult['result']['qReturn'];
    var __dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), __jsonData);
    return new GenericVariable(enigma, __dartData.handle);
  }

  /// Removes a transient variable.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroySessionVariable(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('DestroySessionVariable', __params);
    return rawResult['result']['qSuccess'];
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
  Future<Variable> createVariableEx(GenericVariableProperties prop) async {
    var __params = <String, dynamic>{};
    __params['qProp'] =
        toJson(prop, specifiedType: const FullType(GenericVariableProperties));
    var rawResult = await query('CreateVariableEx', __params);
    var __jsonData = rawResult['result']['qReturn'];
    var __dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), __jsonData);
    return new Variable(enigma, __dartData.handle);
  }

  /// Removes a variable.
  /// Script-defined variables cannot be removed using the _DestroyVariableById method_ or the _DestroyVariableByName method_. For more information, see _Remove a variable_.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyVariableById(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('DestroyVariableById', __params);
    return rawResult['result']['qSuccess'];
  }

  /// Removes a variable.
  /// Script-defined variables cannot be removed using the _DestroyVariableById method_ or the _DestroyVariableByName method_. For more information, see _Remove a variable_.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyVariableByName(String name) async {
    var __params = <String, dynamic>{};
    __params['qName'] = name;
    var rawResult = await query('DestroyVariableByName', __params);
    return rawResult['result']['qSuccess'];
  }

  /// Gets the handle of a variable.
  Future<Variable> getVariableById(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('GetVariableById', __params);
    var __jsonData = rawResult['result']['qReturn'];
    var __dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), __jsonData);
    return new Variable(enigma, __dartData.handle);
  }

  /// Gets the handle of a variable.
  Future<GenericVariable> getVariableByName(String name) async {
    var __params = <String, dynamic>{};
    __params['qName'] = name;
    var rawResult = await query('GetVariableByName', __params);
    var __jsonData = rawResult['result']['qReturn'];
    var __dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), __jsonData);
    return new GenericVariable(enigma, __dartData.handle);
  }

  /// Checks if a given expression is valid.
  /// <div class=note>The expression is correct if the parameters _qErrorMsg_ , _qBadFieldNames_ and _qDangerousFieldNames_ are empty. </div>
  Future<CheckExpressionResult> checkExpression(String expr,
      {List<String> labels}) async {
    var __params = <String, dynamic>{};
    __params['qExpr'] = expr;
    if (labels != null) {
      __params['qLabels'] = labels;
    }
    var rawResult = await query('CheckExpression', __params);
    var __jsondata = {};
    __jsondata['qErrorMsg'] = rawResult['result']['qErrorMsg'];
    __jsondata['qBadFieldNames'] = rawResult['result']['qBadFieldNames'];
    __jsondata['qDangerousFieldNames'] =
        rawResult['result']['qDangerousFieldNames'];
    var __dartData = fromJsonFullType<CheckExpressionResult>(
        const FullType(CheckExpressionResult), __jsondata);
    return __dartData;
  }

  /// Checks if:
  /// * A given expression is valid.
  /// * A number is correct according to the locale.
  Future<CheckExpressionResult> checkNumberOrExpression(String expr) async {
    var __params = <String, dynamic>{};
    __params['qExpr'] = expr;
    var rawResult = await query('CheckNumberOrExpression', __params);
    var __jsondata = {};
    __jsondata['qErrorMsg'] = rawResult['result']['qErrorMsg'];
    __jsondata['qBadFieldNames'] = rawResult['result']['qBadFieldNames'];
    var __dartData = fromJsonFullType<CheckExpressionResult>(
        const FullType(CheckExpressionResult), __jsondata);
    return __dartData;
  }

  /// Adds an alternate state in the app.
  /// You can create multiple states within a Qlik Sense app and apply these states to specific objects within the app. Objects in a given state are not affected by user selections in the other states.
  Future<void> addAlternateState(String stateName) async {
    var __params = <String, dynamic>{};
    __params['qStateName'] = stateName;
    var rawResult = await query('AddAlternateState', __params);
  }

  /// Removes an alternate state in the app.
  Future<void> removeAlternateState(String stateName) async {
    var __params = <String, dynamic>{};
    __params['qStateName'] = stateName;
    var rawResult = await query('RemoveAlternateState', __params);
  }

  /// Creates a bookmark.
  Future<GenericBookmark> createBookmark(GenericBookmarkProperties prop) async {
    var __params = <String, dynamic>{};
    __params['qProp'] =
        toJson(prop, specifiedType: const FullType(GenericBookmarkProperties));
    var rawResult = await query('CreateBookmark', __params);
    var __jsonData = rawResult['result']['qReturn'];
    var __dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), __jsonData);
    return new GenericBookmark(enigma, __dartData.handle);
  }

  /// Removes a bookmark.
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> destroyBookmark(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('DestroyBookmark', __params);
    return rawResult['result']['qSuccess'];
  }

  /// Returns the handle of a bookmark.
  Future<GenericBookmark> getBookmark(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('GetBookmark', __params);
    var __jsonData = rawResult['result']['qReturn'];
    var __dartData = fromJsonFullType<ObjectInterface>(
        const FullType(ObjectInterface), __jsonData);
    return new GenericBookmark(enigma, __dartData.handle);
  }

  /// Applies a bookmark.
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> applyBookmark(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('ApplyBookmark', __params);
    return rawResult['result']['qSuccess'];
  }

  /// Clones a bookmark.
  /// <div class=note>The identifier is set by the engine.</div>
  Future<String> cloneBookmark(String id) async {
    var __params = <String, dynamic>{};
    __params['qId'] = id;
    var rawResult = await query('CloneBookmark', __params);
    return rawResult['result']['qCloneId'];
  }

  /// Adds a field on the fly.
  /// <div class=note>The expression of a field on the fly is persisted but not its values. </div>
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> addFieldFromExpression(String name, String expr) async {
    var __params = <String, dynamic>{};
    __params['qName'] = name;
    __params['qExpr'] = expr;
    var rawResult = await query('AddFieldFromExpression', __params);
    return rawResult['result']['qSuccess'];
  }

  /// Find the field-on-the-fly by passing its readable name.
  Future<String> getFieldOnTheFlyByName(String readableName) async {
    var __params = <String, dynamic>{};
    __params['qReadableName'] = readableName;
    var rawResult = await query('GetFieldOnTheFlyByName', __params);
    return rawResult['result']['qName'];
  }

  /// Returns the identifier and the type of any generic object in the app.
  Future<BuiltList<NxInfo>> getAllInfos() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetAllInfos', __params);
    var __jsonData = rawResult['result']['qInfos'];
    var __dartData = fromJsonFullType<BuiltList<NxInfo>>(
        const FullType(BuiltList, const [const FullType(NxInfo)]), __jsonData);
    return __dartData;
  }

  /// Resumes the app as the user left it.
  Future<void> resume() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('Resume', __params);
  }

  /// Aborts any selection mode in an app. For more information about selection mode, see _BeginSelections method_.
  Future<void> abortModal(bool accept) async {
    var __params = <String, dynamic>{};
    __params['qAccept'] = accept;
    var rawResult = await query('AbortModal', __params);
  }

  /// Publishes an app.
  /// All app objects are published. Generic objects, bookmarks, dimensions and measures inside the app are published.
  /// <div class=note>An app can only be published once and cannot be published to more than one stream.</div>
  Future<void> publish(String streamId, {String name}) async {
    var __params = <String, dynamic>{};
    __params['qStreamId'] = streamId;
    if (name != null) {
      __params['qName'] = name;
    }
    var rawResult = await query('Publish', __params);
  }

  /// Retrieves any fields that match all of the specified tags or just one of them in the data model of an app.
  /// <div class=note>Tags set by Qlik Sense are prefixed by the _$_ sign.  </div>
  Future<BuiltList<NxMatchingFieldInfo>> getMatchingFields(List<String> tags,
      {String matchingFieldMode}) async {
    var __params = <String, dynamic>{};
    __params['qTags'] = tags;
    if (matchingFieldMode != null) {
      __params['qMatchingFieldMode'] = matchingFieldMode;
    }
    var rawResult = await query('GetMatchingFields', __params);
    var __jsonData = rawResult['result']['qFieldNames'];
    var __dartData = fromJsonFullType<BuiltList<NxMatchingFieldInfo>>(
        const FullType(BuiltList, const [const FullType(NxMatchingFieldInfo)]),
        __jsonData);
    return __dartData;
  }

  /// Retrieves any fields that belong to the same archipelago as the specified field and that match at least one of the specified tags.
  /// <div class=note>Tags set by Qlik Sense are prefixed by the _$_ sign.  </div>
  Future<BuiltList<NxMatchingFieldInfo>> findMatchingFields(
      String fieldName, List<String> tags) async {
    var __params = <String, dynamic>{};
    __params['qFieldName'] = fieldName;
    __params['qTags'] = tags;
    var rawResult = await query('FindMatchingFields', __params);
    var __jsonData = rawResult['result']['qFieldNames'];
    var __dartData = fromJsonFullType<BuiltList<NxMatchingFieldInfo>>(
        const FullType(BuiltList, const [const FullType(NxMatchingFieldInfo)]),
        __jsonData);
    return __dartData;
  }

  /// Scrambles a field so the data is not recognizable. Some properties are retained to help debugging. For example, special characters are not changed, and small numbers are scrambled to another small number.
  /// <div class=note>Update access is required to use the function in Qlik Sense Enterprise.</div>
  Future<void> scramble(String fieldName) async {
    var __params = <String, dynamic>{};
    __params['qFieldName'] = fieldName;
    var rawResult = await query('Scramble', __params);
  }

  /// Saves all objects that were modified in the app.
  /// <div class=note>Data from the data model are not saved.</div> <div class=note>This operation is possible only in Qlik Sense Enterprise.</div>
  Future<void> saveObjects() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('SaveObjects', __params);
  }

  /// Computes a set of association scores for each pair of fields between two given tables that have been loaded in an app.
  /// When a table contains some synthetic keys, all fields in the synthetic key tables are analyzed against fields in other tables. To denote that a field is a synthetic key, the field name is prefixed by _[Synthetic Key]:_ .
  Future<BuiltList<AssociationScore>> getAssociationScores(
      String table1, String table2) async {
    var __params = <String, dynamic>{};
    __params['qTable1'] = table1;
    __params['qTable2'] = table2;
    var rawResult = await query('GetAssociationScores', __params);
    var __jsonData = rawResult['result']['qScore'];
    var __dartData = fromJsonFullType<BuiltList<AssociationScore>>(
        const FullType(BuiltList, const [const FullType(AssociationScore)]),
        __jsonData);
    return __dartData;
  }

  /// Lists the media files.
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
    var __params = <String, dynamic>{};
    var rawResult = await query('GetContentLibraries', __params);
    var __jsonData = rawResult['result']['qList'];
    var __dartData = fromJsonFullType<ContentLibraryList>(
        const FullType(ContentLibraryList), __jsonData);
    return __dartData;
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
    var __params = <String, dynamic>{};
    __params['qName'] = name;
    var rawResult = await query('GetLibraryContent', __params);
    var __jsonData = rawResult['result']['qList'];
    var __dartData = fromJsonFullType<StaticContentList>(
        const FullType(StaticContentList), __jsonData);
    return __dartData;
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
  Future<DoReloadExResult> doReloadEx({DoReloadExParams params}) async {
    var __params = <String, dynamic>{};
    if (params != null) {
      __params['qParams'] =
          toJson(params, specifiedType: const FullType(DoReloadExParams));
    }
    var rawResult = await query('DoReloadEx', __params);
    var __jsonData = rawResult['result']['qResult'];
    var __dartData = fromJsonFullType<DoReloadExResult>(
        const FullType(DoReloadExResult), __jsonData);
    return __dartData;
  }

  /// Returns the number of entries on the back stack.
  Future<int> backCount() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('BackCount', __params);
    return rawResult['result']['qReturn'];
  }

  /// Returns the number of entries on the Forward stack.
  Future<int> forwardCount() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('ForwardCount', __params);
    return rawResult['result']['qReturn'];
  }

  /// Sets values in script.
  Future<void> setScript(String script) async {
    var __params = <String, dynamic>{};
    __params['qScript'] = script;
    var rawResult = await query('SetScript', __params);
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
  Future<BuiltList<ScriptSyntaxError>> checkScriptSyntax() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('CheckScriptSyntax', __params);
    var __jsonData = rawResult['result']['qErrors'];
    var __dartData = fromJsonFullType<BuiltList<ScriptSyntaxError>>(
        const FullType(BuiltList, const [const FullType(ScriptSyntaxError)]),
        __jsonData);
    return __dartData;
  }

  /// Retrieves the variables that are tagged as favorite.
  Future<BuiltList<String>> getFavoriteVariables() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetFavoriteVariables', __params);
    return rawResult['result']['qNames'];
  }

  /// Set some variables as favorite.
  Future<void> setFavoriteVariables(List<String> names) async {
    var __params = <String, dynamic>{};
    __params['qNames'] = names;
    var rawResult = await query('SetFavoriteVariables', __params);
  }

  /// Gets the content of a file.
  Future<String> getIncludeFileContent(String path) async {
    var __params = <String, dynamic>{};
    __params['qPath'] = path;
    var rawResult = await query('GetIncludeFileContent', __params);
    return rawResult['result']['qContent'];
  }

  /// Creates a connection.
  /// A connection indicates from which data source the data should be taken.
  Future<String> createConnection(Connection connection) async {
    var __params = <String, dynamic>{};
    __params['qConnection'] =
        toJson(connection, specifiedType: const FullType(Connection));
    var rawResult = await query('CreateConnection', __params);
    return rawResult['result']['qConnectionId'];
  }

  /// Updates a connection.
  /// <div class=note>The identifier of a connection cannot be updated. qType cannot be modified with the ModifyConnection method.</div>
  Future<void> modifyConnection(String connectionId, Connection connection,
      {bool overrideCredentials}) async {
    var __params = <String, dynamic>{};
    __params['qConnectionId'] = connectionId;
    __params['qConnection'] =
        toJson(connection, specifiedType: const FullType(Connection));
    if (overrideCredentials != null) {
      __params['qOverrideCredentials'] = overrideCredentials;
    }
    var rawResult = await query('ModifyConnection', __params);
  }

  /// Deletes a connection.
  /// <div class=note>In Qlik Sense Enterprise, there is an additional file connection named _AttachedFiles_ . The AttachedFiles connection can only be removed by the administrator of the system. </div>
  Future<void> deleteConnection(String connectionId) async {
    var __params = <String, dynamic>{};
    __params['qConnectionId'] = connectionId;
    var rawResult = await query('DeleteConnection', __params);
  }

  /// Retrieves a connection and returns:
  /// * The creation time of the connection.
  /// * The identifier of the connection.
  /// * The type of the connection.
  /// * The name of the connection.
  /// * The connection string.
  Future<Connection> getConnection(String connectionId) async {
    var __params = <String, dynamic>{};
    __params['qConnectionId'] = connectionId;
    var rawResult = await query('GetConnection', __params);
    var __jsonData = rawResult['result']['qConnection'];
    var __dartData =
        fromJsonFullType<Connection>(const FullType(Connection), __jsonData);
    return __dartData;
  }

  /// Lists the connections in an app.
  /// <div class=note>In Qlik Sense Enterprise, there is an additional file connection named _AttachedFiles_ . This connection is stored in the Qlik Sense repository. </div>
  Future<BuiltList<Connection>> getConnections() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetConnections', __params);
    var __jsonData = rawResult['result']['qConnections'];
    var __dartData = fromJsonFullType<BuiltList<Connection>>(
        const FullType(BuiltList, const [const FullType(Connection)]),
        __jsonData);
    return __dartData;
  }

  /// Gives information about an ODBC, OLEDB or CUSTOM connection. See _Outputs_ for more details.
  Future<DatabaseInfo> getDatabaseInfo(String connectionId) async {
    var __params = <String, dynamic>{};
    __params['qConnectionId'] = connectionId;
    var rawResult = await query('GetDatabaseInfo', __params);
    var __jsonData = rawResult['result']['qInfo'];
    var __dartData = fromJsonFullType<DatabaseInfo>(
        const FullType(DatabaseInfo), __jsonData);
    return __dartData;
  }

  /// Lists the databases inside a ODBC, OLEDB or CUSTOM data source.
  Future<BuiltList<Database>> getDatabases(String connectionId) async {
    var __params = <String, dynamic>{};
    __params['qConnectionId'] = connectionId;
    var rawResult = await query('GetDatabases', __params);
    var __jsonData = rawResult['result']['qDatabases'];
    var __dartData = fromJsonFullType<BuiltList<Database>>(
        const FullType(BuiltList, const [const FullType(Database)]),
        __jsonData);
    return __dartData;
  }

  /// Lists the owners of a database for a ODBC, OLEDB or CUSTOM connection.
  Future<BuiltList<DatabaseOwner>> getDatabaseOwners(String connectionId,
      {String database}) async {
    var __params = <String, dynamic>{};
    __params['qConnectionId'] = connectionId;
    if (database != null) {
      __params['qDatabase'] = database;
    }
    var rawResult = await query('GetDatabaseOwners', __params);
    var __jsonData = rawResult['result']['qOwners'];
    var __dartData = fromJsonFullType<BuiltList<DatabaseOwner>>(
        const FullType(BuiltList, const [const FullType(DatabaseOwner)]),
        __jsonData);
    return __dartData;
  }

  /// Lists the tables inside a database for a ODBC, OLEDB or CUSTOM connection.
  Future<BuiltList<DataTable>> getDatabaseTables(String connectionId,
      {String database, String owner}) async {
    var __params = <String, dynamic>{};
    __params['qConnectionId'] = connectionId;
    if (database != null) {
      __params['qDatabase'] = database;
    }
    if (owner != null) {
      __params['qOwner'] = owner;
    }
    var rawResult = await query('GetDatabaseTables', __params);
    var __jsonData = rawResult['result']['qTables'];
    var __dartData = fromJsonFullType<BuiltList<DataTable>>(
        const FullType(BuiltList, const [const FullType(DataTable)]),
        __jsonData);
    return __dartData;
  }

  /// Lists the fields inside a table of a database for a ODBC, OLEDB or CUSTOM connection.
  Future<BuiltList<DataField>> getDatabaseTableFields(
      String connectionId, String table,
      {String database, String owner}) async {
    var __params = <String, dynamic>{};
    __params['qConnectionId'] = connectionId;
    if (database != null) {
      __params['qDatabase'] = database;
    }
    if (owner != null) {
      __params['qOwner'] = owner;
    }
    __params['qTable'] = table;
    var rawResult = await query('GetDatabaseTableFields', __params);
    var __jsonData = rawResult['result']['qFields'];
    var __dartData = fromJsonFullType<BuiltList<DataField>>(
        const FullType(BuiltList, const [const FullType(DataField)]),
        __jsonData);
    return __dartData;
  }

  /// Retrieves the values of the specified table of a database for a ODBC, OLEDB or CUSTOM connection.
  /// Lists the items for a folder connection.
  Future<BuiltList<FolderItem>> getFolderItemsForConnection(String connectionId,
      {String relativePath}) async {
    var __params = <String, dynamic>{};
    __params['qConnectionId'] = connectionId;
    if (relativePath != null) {
      __params['qRelativePath'] = relativePath;
    }
    var rawResult = await query('GetFolderItemsForConnection', __params);
    var __jsonData = rawResult['result']['qFolderItems'];
    var __dartData = fromJsonFullType<BuiltList<FolderItem>>(
        const FullType(BuiltList, const [const FullType(FolderItem)]),
        __jsonData);
    return __dartData;
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
  Future<FileDataFormat> guessFileType(String connectionId,
      {String relativePath}) async {
    var __params = <String, dynamic>{};
    __params['qConnectionId'] = connectionId;
    if (relativePath != null) {
      __params['qRelativePath'] = relativePath;
    }
    var rawResult = await query('GuessFileType', __params);
    var __jsonData = rawResult['result']['qDataFormat'];
    var __dartData = fromJsonFullType<FileDataFormat>(
        const FullType(FileDataFormat), __jsonData);
    return __dartData;
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
  Future<BuiltList<DataTable>> getFileTables(
      String connectionId, FileDataFormat dataFormat,
      {String relativePath}) async {
    var __params = <String, dynamic>{};
    __params['qConnectionId'] = connectionId;
    if (relativePath != null) {
      __params['qRelativePath'] = relativePath;
    }
    __params['qDataFormat'] =
        toJson(dataFormat, specifiedType: const FullType(FileDataFormat));
    var rawResult = await query('GetFileTables', __params);
    var __jsonData = rawResult['result']['qTables'];
    var __dartData = fromJsonFullType<BuiltList<DataTable>>(
        const FullType(BuiltList, const [const FullType(DataTable)]),
        __jsonData);
    return __dartData;
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
  /// Lists the tables and fields of a JSON or XML file for a folder connection.
  Future<BuiltList<DataTableEx>> getFileTablesEx(
      String connectionId, FileDataFormat dataFormat,
      {String relativePath}) async {
    var __params = <String, dynamic>{};
    __params['qConnectionId'] = connectionId;
    if (relativePath != null) {
      __params['qRelativePath'] = relativePath;
    }
    __params['qDataFormat'] =
        toJson(dataFormat, specifiedType: const FullType(FileDataFormat));
    var rawResult = await query('GetFileTablesEx', __params);
    var __jsonData = rawResult['result']['qTables'];
    var __dartData = fromJsonFullType<BuiltList<DataTableEx>>(
        const FullType(BuiltList, const [const FullType(DataTableEx)]),
        __jsonData);
    return __dartData;
  }

  /// Sends a generic command to a custom connector.
  /// For more information on the commands that can be sent to a custom connector, see the QVX SDK help.
  Future<String> sendGenericCommandToCustomConnector(
      String provider,
      String command,
      String method,
      List<String> parameters,
      String appendConnection) async {
    var __params = <String, dynamic>{};
    __params['qProvider'] = provider;
    __params['qCommand'] = command;
    __params['qMethod'] = method;
    __params['qParameters'] = parameters;
    __params['qAppendConnection'] = appendConnection;
    var rawResult =
        await query('SendGenericCommandToCustomConnector', __params);
    return rawResult['result']['qResult'];
  }

  /// Returns search terms suggestions.
  Future<SearchSuggestionResult> searchSuggest(
      SearchCombinationOptions options, List<String> terms) async {
    var __params = <String, dynamic>{};
    __params['qOptions'] = toJson(options,
        specifiedType: const FullType(SearchCombinationOptions));
    __params['qTerms'] = terms;
    var rawResult = await query('SearchSuggest', __params);
    var __jsonData = rawResult['result']['qResult'];
    var __dartData = fromJsonFullType<SearchSuggestionResult>(
        const FullType(SearchSuggestionResult), __jsonData);
    return __dartData;
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
      List<String> terms,
      SearchPage page) async {
    var __params = <String, dynamic>{};
    __params['qOptions'] = toJson(options,
        specifiedType: const FullType(SearchCombinationOptions));
    __params['qTerms'] = terms;
    __params['qPage'] = toJson(page, specifiedType: const FullType(SearchPage));
    var rawResult = await query('SearchAssociations', __params);
    var __jsonData = rawResult['result']['qResults'];
    var __dartData = fromJsonFullType<SearchAssociationResult>(
        const FullType(SearchAssociationResult), __jsonData);
    return __dartData;
  }

  /// Selects all search hits for a specified group.
  /// The results depend on the search context.
  /// _SearchCombinationOptions_.
  Future<void> selectAssociations(
      SearchCombinationOptions options, List<String> terms, int matchIx,
      {bool softLock}) async {
    var __params = <String, dynamic>{};
    __params['qOptions'] = toJson(options,
        specifiedType: const FullType(SearchCombinationOptions));
    __params['qTerms'] = terms;
    __params['qMatchIx'] = matchIx;
    if (softLock != null) {
      __params['qSoftLock'] = softLock;
    }
    var rawResult = await query('SelectAssociations', __params);
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
      List<String> terms, SearchPage page) async {
    var __params = <String, dynamic>{};
    __params['qOptions'] = toJson(options,
        specifiedType: const FullType(SearchCombinationOptions));
    __params['qTerms'] = terms;
    __params['qPage'] = toJson(page, specifiedType: const FullType(SearchPage));
    var rawResult = await query('SearchResults', __params);
    var __jsonData = rawResult['result']['qResult'];
    var __dartData = fromJsonFullType<SearchResult>(
        const FullType(SearchResult), __jsonData);
    return __dartData;
  }

  /// Returns the generic objects corresponding to one or more search terms. The search is performed within the title, subtitle, footnote and type. In addition, associated dimension values are also searched in. For example, if the country “Japan” is selected and the object contains the dimension City, the object will appear in the results for “Osaka” but not for “Johannesburg”. The generic objects with the following types will never appear in the results: _slideitem_ , _sheet_ , _story_ , _slide_ , _masterobject_ , _snapshot_ , _LoadModel_ , _appprops_ and _searchhistory_ .
  Future<SearchResult> searchObjects(
      SearchObjectOptions options, List<String> terms, SearchPage page) async {
    var __params = <String, dynamic>{};
    __params['qOptions'] =
        toJson(options, specifiedType: const FullType(SearchObjectOptions));
    __params['qTerms'] = terms;
    __params['qPage'] = toJson(page, specifiedType: const FullType(SearchPage));
    var rawResult = await query('SearchObjects', __params);
    var __jsonData = rawResult['result']['qResult'];
    var __dartData = fromJsonFullType<SearchResult>(
        const FullType(SearchResult), __jsonData);
    return __dartData;
  }

  /// Gets script and script meta-data.
  Future<AppScript> getScriptEx() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetScriptEx', __params);
    var __jsonData = rawResult['result']['qScript'];
    var __dartData =
        fromJsonFullType<AppScript>(const FullType(AppScript), __jsonData);
    return __dartData;
  }
}
