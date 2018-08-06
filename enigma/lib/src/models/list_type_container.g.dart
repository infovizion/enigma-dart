// GENERATED CODE - DO NOT MODIFY BY HAND

part of list_type_container;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<ListTypeContainer> _$listTypeContainerSerializer =
    new _$ListTypeContainerSerializer();

class _$ListTypeContainerSerializer
    implements StructuredSerializer<ListTypeContainer> {
  @override
  final Iterable<Type> types = const [ListTypeContainer, _$ListTypeContainer];
  @override
  final String wireName = 'ListTypeContainer';

  @override
  Iterable serialize(Serializers serializers, ListTypeContainer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.nxDataPageList != null) {
      result
        ..add('NxDataPageList')
        ..add(serializers.serialize(object.nxDataPageList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxDataPage)])));
    }
    if (object.nxPivotPageList != null) {
      result
        ..add('NxPivotPageList')
        ..add(serializers.serialize(object.nxPivotPageList,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxPivotPage)])));
    }
    if (object.nxStackPageList != null) {
      result
        ..add('NxStackPageList')
        ..add(serializers.serialize(object.nxStackPageList,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxStackPage)])));
    }
    if (object.nxTreeNodeList != null) {
      result
        ..add('NxTreeNodeList')
        ..add(serializers.serialize(object.nxTreeNodeList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxTreeNode)])));
    }
    if (object.nxInfoList != null) {
      result
        ..add('NxInfoList')
        ..add(serializers.serialize(object.nxInfoList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxInfo)])));
    }
    if (object.nxLinkedObjectInfoList != null) {
      result
        ..add('NxLinkedObjectInfoList')
        ..add(serializers.serialize(object.nxLinkedObjectInfoList,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxLinkedObjectInfo)])));
    }
    if (object.fieldValueList != null) {
      result
        ..add('FieldValueList')
        ..add(serializers.serialize(object.fieldValueList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(FieldValue)])));
    }
    if (object.stringList != null) {
      result
        ..add('StringList')
        ..add(serializers.serialize(object.stringList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.editorBreakpointList != null) {
      result
        ..add('EditorBreakpointList')
        ..add(serializers.serialize(object.editorBreakpointList,
            specifiedType: const FullType(
                BuiltList, const [const FullType(EditorBreakpoint)])));
    }
    if (object.textMacroList != null) {
      result
        ..add('TextMacroList')
        ..add(serializers.serialize(object.textMacroList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TextMacro)])));
    }
    if (object.tableRowList != null) {
      result
        ..add('TableRowList')
        ..add(serializers.serialize(object.tableRowList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TableRow)])));
    }
    if (object.lineageInfoList != null) {
      result
        ..add('LineageInfoList')
        ..add(serializers.serialize(object.lineageInfoList,
            specifiedType: const FullType(
                BuiltList, const [const FullType(LineageInfo)])));
    }
    if (object.nxContainerEntryList != null) {
      result
        ..add('NxContainerEntryList')
        ..add(serializers.serialize(object.nxContainerEntryList,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxContainerEntry)])));
    }
    if (object.nxMatchingFieldInfoList != null) {
      result
        ..add('NxMatchingFieldInfoList')
        ..add(serializers.serialize(object.nxMatchingFieldInfoList,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxMatchingFieldInfo)])));
    }
    if (object.associationScoreList != null) {
      result
        ..add('AssociationScoreList')
        ..add(serializers.serialize(object.associationScoreList,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AssociationScore)])));
    }
    if (object.scriptSyntaxErrorList != null) {
      result
        ..add('ScriptSyntaxErrorList')
        ..add(serializers.serialize(object.scriptSyntaxErrorList,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ScriptSyntaxError)])));
    }
    if (object.connectionList != null) {
      result
        ..add('ConnectionList')
        ..add(serializers.serialize(object.connectionList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Connection)])));
    }
    if (object.databaseList != null) {
      result
        ..add('DatabaseList')
        ..add(serializers.serialize(object.databaseList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Database)])));
    }
    if (object.databaseOwnerList != null) {
      result
        ..add('DatabaseOwnerList')
        ..add(serializers.serialize(object.databaseOwnerList,
            specifiedType: const FullType(
                BuiltList, const [const FullType(DatabaseOwner)])));
    }
    if (object.dataTableList != null) {
      result
        ..add('DataTableList')
        ..add(serializers.serialize(object.dataTableList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(DataTable)])));
    }
    if (object.dataFieldList != null) {
      result
        ..add('DataFieldList')
        ..add(serializers.serialize(object.dataFieldList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(DataField)])));
    }
    if (object.folderItemList != null) {
      result
        ..add('FolderItemList')
        ..add(serializers.serialize(object.folderItemList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(FolderItem)])));
    }
    if (object.dataTableExList != null) {
      result
        ..add('DataTableExList')
        ..add(serializers.serialize(object.dataTableExList,
            specifiedType: const FullType(
                BuiltList, const [const FullType(DataTableEx)])));
    }
    if (object.docListEntryList != null) {
      result
        ..add('DocListEntryList')
        ..add(serializers.serialize(object.docListEntryList,
            specifiedType: const FullType(
                BuiltList, const [const FullType(DocListEntry)])));
    }
    if (object.bNFDefList != null) {
      result
        ..add('BNFDefList')
        ..add(serializers.serialize(object.bNFDefList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(BNFDef)])));
    }
    if (object.odbcDsnList != null) {
      result
        ..add('OdbcDsnList')
        ..add(serializers.serialize(object.odbcDsnList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(OdbcDsn)])));
    }
    if (object.oleDbProviderList != null) {
      result
        ..add('OleDbProviderList')
        ..add(serializers.serialize(object.oleDbProviderList,
            specifiedType: const FullType(
                BuiltList, const [const FullType(OleDbProvider)])));
    }
    if (object.driveInfoList != null) {
      result
        ..add('DriveInfoList')
        ..add(serializers.serialize(object.driveInfoList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(DriveInfo)])));
    }
    if (object.codePageList != null) {
      result
        ..add('CodePageList')
        ..add(serializers.serialize(object.codePageList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(CodePage)])));
    }
    if (object.customConnectorList != null) {
      result
        ..add('CustomConnectorList')
        ..add(serializers.serialize(object.customConnectorList,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CustomConnector)])));
    }
    if (object.nxStreamListEntryList != null) {
      result
        ..add('NxStreamListEntryList')
        ..add(serializers.serialize(object.nxStreamListEntryList,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxStreamListEntry)])));
    }

    return result;
  }

  @override
  ListTypeContainer deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListTypeContainerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'NxDataPageList':
          result.nxDataPageList.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(NxDataPage)])) as BuiltList);
          break;
        case 'NxPivotPageList':
          result.nxPivotPageList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxPivotPage)]))
              as BuiltList);
          break;
        case 'NxStackPageList':
          result.nxStackPageList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxStackPage)]))
              as BuiltList);
          break;
        case 'NxTreeNodeList':
          result.nxTreeNodeList.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(NxTreeNode)])) as BuiltList);
          break;
        case 'NxInfoList':
          result.nxInfoList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxInfo)]))
              as BuiltList);
          break;
        case 'NxLinkedObjectInfoList':
          result.nxLinkedObjectInfoList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxLinkedObjectInfo)]))
              as BuiltList);
          break;
        case 'FieldValueList':
          result.fieldValueList.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(FieldValue)])) as BuiltList);
          break;
        case 'StringList':
          result.stringList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'EditorBreakpointList':
          result.editorBreakpointList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(EditorBreakpoint)]))
              as BuiltList);
          break;
        case 'TextMacroList':
          result.textMacroList.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(TextMacro)])) as BuiltList);
          break;
        case 'TableRowList':
          result.tableRowList.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(TableRow)])) as BuiltList);
          break;
        case 'LineageInfoList':
          result.lineageInfoList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LineageInfo)]))
              as BuiltList);
          break;
        case 'NxContainerEntryList':
          result.nxContainerEntryList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxContainerEntry)]))
              as BuiltList);
          break;
        case 'NxMatchingFieldInfoList':
          result.nxMatchingFieldInfoList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxMatchingFieldInfo)]))
              as BuiltList);
          break;
        case 'AssociationScoreList':
          result.associationScoreList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AssociationScore)]))
              as BuiltList);
          break;
        case 'ScriptSyntaxErrorList':
          result.scriptSyntaxErrorList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ScriptSyntaxError)]))
              as BuiltList);
          break;
        case 'ConnectionList':
          result.connectionList.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Connection)])) as BuiltList);
          break;
        case 'DatabaseList':
          result.databaseList.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Database)])) as BuiltList);
          break;
        case 'DatabaseOwnerList':
          result.databaseOwnerList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DatabaseOwner)]))
              as BuiltList);
          break;
        case 'DataTableList':
          result.dataTableList.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(DataTable)])) as BuiltList);
          break;
        case 'DataFieldList':
          result.dataFieldList.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(DataField)])) as BuiltList);
          break;
        case 'FolderItemList':
          result.folderItemList.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(FolderItem)])) as BuiltList);
          break;
        case 'DataTableExList':
          result.dataTableExList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DataTableEx)]))
              as BuiltList);
          break;
        case 'DocListEntryList':
          result.docListEntryList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DocListEntry)]))
              as BuiltList);
          break;
        case 'BNFDefList':
          result.bNFDefList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(BNFDef)]))
              as BuiltList);
          break;
        case 'OdbcDsnList':
          result.odbcDsnList.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(OdbcDsn)])) as BuiltList);
          break;
        case 'OleDbProviderList':
          result.oleDbProviderList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(OleDbProvider)]))
              as BuiltList);
          break;
        case 'DriveInfoList':
          result.driveInfoList.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(DriveInfo)])) as BuiltList);
          break;
        case 'CodePageList':
          result.codePageList.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(CodePage)])) as BuiltList);
          break;
        case 'CustomConnectorList':
          result.customConnectorList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CustomConnector)]))
              as BuiltList);
          break;
        case 'NxStreamListEntryList':
          result.nxStreamListEntryList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxStreamListEntry)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ListTypeContainer extends ListTypeContainer {
  @override
  final BuiltList<NxDataPage> nxDataPageList;
  @override
  final BuiltList<NxPivotPage> nxPivotPageList;
  @override
  final BuiltList<NxStackPage> nxStackPageList;
  @override
  final BuiltList<NxTreeNode> nxTreeNodeList;
  @override
  final BuiltList<NxInfo> nxInfoList;
  @override
  final BuiltList<NxLinkedObjectInfo> nxLinkedObjectInfoList;
  @override
  final BuiltList<FieldValue> fieldValueList;
  @override
  final BuiltList<String> stringList;
  @override
  final BuiltList<EditorBreakpoint> editorBreakpointList;
  @override
  final BuiltList<TextMacro> textMacroList;
  @override
  final BuiltList<TableRow> tableRowList;
  @override
  final BuiltList<LineageInfo> lineageInfoList;
  @override
  final BuiltList<NxContainerEntry> nxContainerEntryList;
  @override
  final BuiltList<NxMatchingFieldInfo> nxMatchingFieldInfoList;
  @override
  final BuiltList<AssociationScore> associationScoreList;
  @override
  final BuiltList<ScriptSyntaxError> scriptSyntaxErrorList;
  @override
  final BuiltList<Connection> connectionList;
  @override
  final BuiltList<Database> databaseList;
  @override
  final BuiltList<DatabaseOwner> databaseOwnerList;
  @override
  final BuiltList<DataTable> dataTableList;
  @override
  final BuiltList<DataField> dataFieldList;
  @override
  final BuiltList<FolderItem> folderItemList;
  @override
  final BuiltList<DataTableEx> dataTableExList;
  @override
  final BuiltList<DocListEntry> docListEntryList;
  @override
  final BuiltList<BNFDef> bNFDefList;
  @override
  final BuiltList<OdbcDsn> odbcDsnList;
  @override
  final BuiltList<OleDbProvider> oleDbProviderList;
  @override
  final BuiltList<DriveInfo> driveInfoList;
  @override
  final BuiltList<CodePage> codePageList;
  @override
  final BuiltList<CustomConnector> customConnectorList;
  @override
  final BuiltList<NxStreamListEntry> nxStreamListEntryList;

  factory _$ListTypeContainer([void updates(ListTypeContainerBuilder b)]) =>
      (new ListTypeContainerBuilder()..update(updates)).build();

  _$ListTypeContainer._(
      {this.nxDataPageList,
      this.nxPivotPageList,
      this.nxStackPageList,
      this.nxTreeNodeList,
      this.nxInfoList,
      this.nxLinkedObjectInfoList,
      this.fieldValueList,
      this.stringList,
      this.editorBreakpointList,
      this.textMacroList,
      this.tableRowList,
      this.lineageInfoList,
      this.nxContainerEntryList,
      this.nxMatchingFieldInfoList,
      this.associationScoreList,
      this.scriptSyntaxErrorList,
      this.connectionList,
      this.databaseList,
      this.databaseOwnerList,
      this.dataTableList,
      this.dataFieldList,
      this.folderItemList,
      this.dataTableExList,
      this.docListEntryList,
      this.bNFDefList,
      this.odbcDsnList,
      this.oleDbProviderList,
      this.driveInfoList,
      this.codePageList,
      this.customConnectorList,
      this.nxStreamListEntryList})
      : super._();

  @override
  ListTypeContainer rebuild(void updates(ListTypeContainerBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ListTypeContainerBuilder toBuilder() =>
      new ListTypeContainerBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ListTypeContainer) return false;
    return nxDataPageList == other.nxDataPageList &&
        nxPivotPageList == other.nxPivotPageList &&
        nxStackPageList == other.nxStackPageList &&
        nxTreeNodeList == other.nxTreeNodeList &&
        nxInfoList == other.nxInfoList &&
        nxLinkedObjectInfoList == other.nxLinkedObjectInfoList &&
        fieldValueList == other.fieldValueList &&
        stringList == other.stringList &&
        editorBreakpointList == other.editorBreakpointList &&
        textMacroList == other.textMacroList &&
        tableRowList == other.tableRowList &&
        lineageInfoList == other.lineageInfoList &&
        nxContainerEntryList == other.nxContainerEntryList &&
        nxMatchingFieldInfoList == other.nxMatchingFieldInfoList &&
        associationScoreList == other.associationScoreList &&
        scriptSyntaxErrorList == other.scriptSyntaxErrorList &&
        connectionList == other.connectionList &&
        databaseList == other.databaseList &&
        databaseOwnerList == other.databaseOwnerList &&
        dataTableList == other.dataTableList &&
        dataFieldList == other.dataFieldList &&
        folderItemList == other.folderItemList &&
        dataTableExList == other.dataTableExList &&
        docListEntryList == other.docListEntryList &&
        bNFDefList == other.bNFDefList &&
        odbcDsnList == other.odbcDsnList &&
        oleDbProviderList == other.oleDbProviderList &&
        driveInfoList == other.driveInfoList &&
        codePageList == other.codePageList &&
        customConnectorList == other.customConnectorList &&
        nxStreamListEntryList == other.nxStreamListEntryList;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, nxDataPageList.hashCode), nxPivotPageList.hashCode), nxStackPageList.hashCode), nxTreeNodeList.hashCode), nxInfoList.hashCode), nxLinkedObjectInfoList.hashCode), fieldValueList.hashCode), stringList.hashCode), editorBreakpointList.hashCode), textMacroList.hashCode), tableRowList.hashCode), lineageInfoList.hashCode),
                                                                                nxContainerEntryList.hashCode),
                                                                            nxMatchingFieldInfoList.hashCode),
                                                                        associationScoreList.hashCode),
                                                                    scriptSyntaxErrorList.hashCode),
                                                                connectionList.hashCode),
                                                            databaseList.hashCode),
                                                        databaseOwnerList.hashCode),
                                                    dataTableList.hashCode),
                                                dataFieldList.hashCode),
                                            folderItemList.hashCode),
                                        dataTableExList.hashCode),
                                    docListEntryList.hashCode),
                                bNFDefList.hashCode),
                            odbcDsnList.hashCode),
                        oleDbProviderList.hashCode),
                    driveInfoList.hashCode),
                codePageList.hashCode),
            customConnectorList.hashCode),
        nxStreamListEntryList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListTypeContainer')
          ..add('nxDataPageList', nxDataPageList)
          ..add('nxPivotPageList', nxPivotPageList)
          ..add('nxStackPageList', nxStackPageList)
          ..add('nxTreeNodeList', nxTreeNodeList)
          ..add('nxInfoList', nxInfoList)
          ..add('nxLinkedObjectInfoList', nxLinkedObjectInfoList)
          ..add('fieldValueList', fieldValueList)
          ..add('stringList', stringList)
          ..add('editorBreakpointList', editorBreakpointList)
          ..add('textMacroList', textMacroList)
          ..add('tableRowList', tableRowList)
          ..add('lineageInfoList', lineageInfoList)
          ..add('nxContainerEntryList', nxContainerEntryList)
          ..add('nxMatchingFieldInfoList', nxMatchingFieldInfoList)
          ..add('associationScoreList', associationScoreList)
          ..add('scriptSyntaxErrorList', scriptSyntaxErrorList)
          ..add('connectionList', connectionList)
          ..add('databaseList', databaseList)
          ..add('databaseOwnerList', databaseOwnerList)
          ..add('dataTableList', dataTableList)
          ..add('dataFieldList', dataFieldList)
          ..add('folderItemList', folderItemList)
          ..add('dataTableExList', dataTableExList)
          ..add('docListEntryList', docListEntryList)
          ..add('bNFDefList', bNFDefList)
          ..add('odbcDsnList', odbcDsnList)
          ..add('oleDbProviderList', oleDbProviderList)
          ..add('driveInfoList', driveInfoList)
          ..add('codePageList', codePageList)
          ..add('customConnectorList', customConnectorList)
          ..add('nxStreamListEntryList', nxStreamListEntryList))
        .toString();
  }
}

class ListTypeContainerBuilder
    implements Builder<ListTypeContainer, ListTypeContainerBuilder> {
  _$ListTypeContainer _$v;

  ListBuilder<NxDataPage> _nxDataPageList;
  ListBuilder<NxDataPage> get nxDataPageList =>
      _$this._nxDataPageList ??= new ListBuilder<NxDataPage>();
  set nxDataPageList(ListBuilder<NxDataPage> nxDataPageList) =>
      _$this._nxDataPageList = nxDataPageList;

  ListBuilder<NxPivotPage> _nxPivotPageList;
  ListBuilder<NxPivotPage> get nxPivotPageList =>
      _$this._nxPivotPageList ??= new ListBuilder<NxPivotPage>();
  set nxPivotPageList(ListBuilder<NxPivotPage> nxPivotPageList) =>
      _$this._nxPivotPageList = nxPivotPageList;

  ListBuilder<NxStackPage> _nxStackPageList;
  ListBuilder<NxStackPage> get nxStackPageList =>
      _$this._nxStackPageList ??= new ListBuilder<NxStackPage>();
  set nxStackPageList(ListBuilder<NxStackPage> nxStackPageList) =>
      _$this._nxStackPageList = nxStackPageList;

  ListBuilder<NxTreeNode> _nxTreeNodeList;
  ListBuilder<NxTreeNode> get nxTreeNodeList =>
      _$this._nxTreeNodeList ??= new ListBuilder<NxTreeNode>();
  set nxTreeNodeList(ListBuilder<NxTreeNode> nxTreeNodeList) =>
      _$this._nxTreeNodeList = nxTreeNodeList;

  ListBuilder<NxInfo> _nxInfoList;
  ListBuilder<NxInfo> get nxInfoList =>
      _$this._nxInfoList ??= new ListBuilder<NxInfo>();
  set nxInfoList(ListBuilder<NxInfo> nxInfoList) =>
      _$this._nxInfoList = nxInfoList;

  ListBuilder<NxLinkedObjectInfo> _nxLinkedObjectInfoList;
  ListBuilder<NxLinkedObjectInfo> get nxLinkedObjectInfoList =>
      _$this._nxLinkedObjectInfoList ??= new ListBuilder<NxLinkedObjectInfo>();
  set nxLinkedObjectInfoList(
          ListBuilder<NxLinkedObjectInfo> nxLinkedObjectInfoList) =>
      _$this._nxLinkedObjectInfoList = nxLinkedObjectInfoList;

  ListBuilder<FieldValue> _fieldValueList;
  ListBuilder<FieldValue> get fieldValueList =>
      _$this._fieldValueList ??= new ListBuilder<FieldValue>();
  set fieldValueList(ListBuilder<FieldValue> fieldValueList) =>
      _$this._fieldValueList = fieldValueList;

  ListBuilder<String> _stringList;
  ListBuilder<String> get stringList =>
      _$this._stringList ??= new ListBuilder<String>();
  set stringList(ListBuilder<String> stringList) =>
      _$this._stringList = stringList;

  ListBuilder<EditorBreakpoint> _editorBreakpointList;
  ListBuilder<EditorBreakpoint> get editorBreakpointList =>
      _$this._editorBreakpointList ??= new ListBuilder<EditorBreakpoint>();
  set editorBreakpointList(
          ListBuilder<EditorBreakpoint> editorBreakpointList) =>
      _$this._editorBreakpointList = editorBreakpointList;

  ListBuilder<TextMacro> _textMacroList;
  ListBuilder<TextMacro> get textMacroList =>
      _$this._textMacroList ??= new ListBuilder<TextMacro>();
  set textMacroList(ListBuilder<TextMacro> textMacroList) =>
      _$this._textMacroList = textMacroList;

  ListBuilder<TableRow> _tableRowList;
  ListBuilder<TableRow> get tableRowList =>
      _$this._tableRowList ??= new ListBuilder<TableRow>();
  set tableRowList(ListBuilder<TableRow> tableRowList) =>
      _$this._tableRowList = tableRowList;

  ListBuilder<LineageInfo> _lineageInfoList;
  ListBuilder<LineageInfo> get lineageInfoList =>
      _$this._lineageInfoList ??= new ListBuilder<LineageInfo>();
  set lineageInfoList(ListBuilder<LineageInfo> lineageInfoList) =>
      _$this._lineageInfoList = lineageInfoList;

  ListBuilder<NxContainerEntry> _nxContainerEntryList;
  ListBuilder<NxContainerEntry> get nxContainerEntryList =>
      _$this._nxContainerEntryList ??= new ListBuilder<NxContainerEntry>();
  set nxContainerEntryList(
          ListBuilder<NxContainerEntry> nxContainerEntryList) =>
      _$this._nxContainerEntryList = nxContainerEntryList;

  ListBuilder<NxMatchingFieldInfo> _nxMatchingFieldInfoList;
  ListBuilder<NxMatchingFieldInfo> get nxMatchingFieldInfoList =>
      _$this._nxMatchingFieldInfoList ??=
          new ListBuilder<NxMatchingFieldInfo>();
  set nxMatchingFieldInfoList(
          ListBuilder<NxMatchingFieldInfo> nxMatchingFieldInfoList) =>
      _$this._nxMatchingFieldInfoList = nxMatchingFieldInfoList;

  ListBuilder<AssociationScore> _associationScoreList;
  ListBuilder<AssociationScore> get associationScoreList =>
      _$this._associationScoreList ??= new ListBuilder<AssociationScore>();
  set associationScoreList(
          ListBuilder<AssociationScore> associationScoreList) =>
      _$this._associationScoreList = associationScoreList;

  ListBuilder<ScriptSyntaxError> _scriptSyntaxErrorList;
  ListBuilder<ScriptSyntaxError> get scriptSyntaxErrorList =>
      _$this._scriptSyntaxErrorList ??= new ListBuilder<ScriptSyntaxError>();
  set scriptSyntaxErrorList(
          ListBuilder<ScriptSyntaxError> scriptSyntaxErrorList) =>
      _$this._scriptSyntaxErrorList = scriptSyntaxErrorList;

  ListBuilder<Connection> _connectionList;
  ListBuilder<Connection> get connectionList =>
      _$this._connectionList ??= new ListBuilder<Connection>();
  set connectionList(ListBuilder<Connection> connectionList) =>
      _$this._connectionList = connectionList;

  ListBuilder<Database> _databaseList;
  ListBuilder<Database> get databaseList =>
      _$this._databaseList ??= new ListBuilder<Database>();
  set databaseList(ListBuilder<Database> databaseList) =>
      _$this._databaseList = databaseList;

  ListBuilder<DatabaseOwner> _databaseOwnerList;
  ListBuilder<DatabaseOwner> get databaseOwnerList =>
      _$this._databaseOwnerList ??= new ListBuilder<DatabaseOwner>();
  set databaseOwnerList(ListBuilder<DatabaseOwner> databaseOwnerList) =>
      _$this._databaseOwnerList = databaseOwnerList;

  ListBuilder<DataTable> _dataTableList;
  ListBuilder<DataTable> get dataTableList =>
      _$this._dataTableList ??= new ListBuilder<DataTable>();
  set dataTableList(ListBuilder<DataTable> dataTableList) =>
      _$this._dataTableList = dataTableList;

  ListBuilder<DataField> _dataFieldList;
  ListBuilder<DataField> get dataFieldList =>
      _$this._dataFieldList ??= new ListBuilder<DataField>();
  set dataFieldList(ListBuilder<DataField> dataFieldList) =>
      _$this._dataFieldList = dataFieldList;

  ListBuilder<FolderItem> _folderItemList;
  ListBuilder<FolderItem> get folderItemList =>
      _$this._folderItemList ??= new ListBuilder<FolderItem>();
  set folderItemList(ListBuilder<FolderItem> folderItemList) =>
      _$this._folderItemList = folderItemList;

  ListBuilder<DataTableEx> _dataTableExList;
  ListBuilder<DataTableEx> get dataTableExList =>
      _$this._dataTableExList ??= new ListBuilder<DataTableEx>();
  set dataTableExList(ListBuilder<DataTableEx> dataTableExList) =>
      _$this._dataTableExList = dataTableExList;

  ListBuilder<DocListEntry> _docListEntryList;
  ListBuilder<DocListEntry> get docListEntryList =>
      _$this._docListEntryList ??= new ListBuilder<DocListEntry>();
  set docListEntryList(ListBuilder<DocListEntry> docListEntryList) =>
      _$this._docListEntryList = docListEntryList;

  ListBuilder<BNFDef> _bNFDefList;
  ListBuilder<BNFDef> get bNFDefList =>
      _$this._bNFDefList ??= new ListBuilder<BNFDef>();
  set bNFDefList(ListBuilder<BNFDef> bNFDefList) =>
      _$this._bNFDefList = bNFDefList;

  ListBuilder<OdbcDsn> _odbcDsnList;
  ListBuilder<OdbcDsn> get odbcDsnList =>
      _$this._odbcDsnList ??= new ListBuilder<OdbcDsn>();
  set odbcDsnList(ListBuilder<OdbcDsn> odbcDsnList) =>
      _$this._odbcDsnList = odbcDsnList;

  ListBuilder<OleDbProvider> _oleDbProviderList;
  ListBuilder<OleDbProvider> get oleDbProviderList =>
      _$this._oleDbProviderList ??= new ListBuilder<OleDbProvider>();
  set oleDbProviderList(ListBuilder<OleDbProvider> oleDbProviderList) =>
      _$this._oleDbProviderList = oleDbProviderList;

  ListBuilder<DriveInfo> _driveInfoList;
  ListBuilder<DriveInfo> get driveInfoList =>
      _$this._driveInfoList ??= new ListBuilder<DriveInfo>();
  set driveInfoList(ListBuilder<DriveInfo> driveInfoList) =>
      _$this._driveInfoList = driveInfoList;

  ListBuilder<CodePage> _codePageList;
  ListBuilder<CodePage> get codePageList =>
      _$this._codePageList ??= new ListBuilder<CodePage>();
  set codePageList(ListBuilder<CodePage> codePageList) =>
      _$this._codePageList = codePageList;

  ListBuilder<CustomConnector> _customConnectorList;
  ListBuilder<CustomConnector> get customConnectorList =>
      _$this._customConnectorList ??= new ListBuilder<CustomConnector>();
  set customConnectorList(ListBuilder<CustomConnector> customConnectorList) =>
      _$this._customConnectorList = customConnectorList;

  ListBuilder<NxStreamListEntry> _nxStreamListEntryList;
  ListBuilder<NxStreamListEntry> get nxStreamListEntryList =>
      _$this._nxStreamListEntryList ??= new ListBuilder<NxStreamListEntry>();
  set nxStreamListEntryList(
          ListBuilder<NxStreamListEntry> nxStreamListEntryList) =>
      _$this._nxStreamListEntryList = nxStreamListEntryList;

  ListTypeContainerBuilder();

  ListTypeContainerBuilder get _$this {
    if (_$v != null) {
      _nxDataPageList = _$v.nxDataPageList?.toBuilder();
      _nxPivotPageList = _$v.nxPivotPageList?.toBuilder();
      _nxStackPageList = _$v.nxStackPageList?.toBuilder();
      _nxTreeNodeList = _$v.nxTreeNodeList?.toBuilder();
      _nxInfoList = _$v.nxInfoList?.toBuilder();
      _nxLinkedObjectInfoList = _$v.nxLinkedObjectInfoList?.toBuilder();
      _fieldValueList = _$v.fieldValueList?.toBuilder();
      _stringList = _$v.stringList?.toBuilder();
      _editorBreakpointList = _$v.editorBreakpointList?.toBuilder();
      _textMacroList = _$v.textMacroList?.toBuilder();
      _tableRowList = _$v.tableRowList?.toBuilder();
      _lineageInfoList = _$v.lineageInfoList?.toBuilder();
      _nxContainerEntryList = _$v.nxContainerEntryList?.toBuilder();
      _nxMatchingFieldInfoList = _$v.nxMatchingFieldInfoList?.toBuilder();
      _associationScoreList = _$v.associationScoreList?.toBuilder();
      _scriptSyntaxErrorList = _$v.scriptSyntaxErrorList?.toBuilder();
      _connectionList = _$v.connectionList?.toBuilder();
      _databaseList = _$v.databaseList?.toBuilder();
      _databaseOwnerList = _$v.databaseOwnerList?.toBuilder();
      _dataTableList = _$v.dataTableList?.toBuilder();
      _dataFieldList = _$v.dataFieldList?.toBuilder();
      _folderItemList = _$v.folderItemList?.toBuilder();
      _dataTableExList = _$v.dataTableExList?.toBuilder();
      _docListEntryList = _$v.docListEntryList?.toBuilder();
      _bNFDefList = _$v.bNFDefList?.toBuilder();
      _odbcDsnList = _$v.odbcDsnList?.toBuilder();
      _oleDbProviderList = _$v.oleDbProviderList?.toBuilder();
      _driveInfoList = _$v.driveInfoList?.toBuilder();
      _codePageList = _$v.codePageList?.toBuilder();
      _customConnectorList = _$v.customConnectorList?.toBuilder();
      _nxStreamListEntryList = _$v.nxStreamListEntryList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListTypeContainer other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ListTypeContainer;
  }

  @override
  void update(void updates(ListTypeContainerBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ListTypeContainer build() {
    _$ListTypeContainer _$result;
    try {
      _$result = _$v ??
          new _$ListTypeContainer._(
              nxDataPageList: _nxDataPageList?.build(),
              nxPivotPageList: _nxPivotPageList?.build(),
              nxStackPageList: _nxStackPageList?.build(),
              nxTreeNodeList: _nxTreeNodeList?.build(),
              nxInfoList: _nxInfoList?.build(),
              nxLinkedObjectInfoList: _nxLinkedObjectInfoList?.build(),
              fieldValueList: _fieldValueList?.build(),
              stringList: _stringList?.build(),
              editorBreakpointList: _editorBreakpointList?.build(),
              textMacroList: _textMacroList?.build(),
              tableRowList: _tableRowList?.build(),
              lineageInfoList: _lineageInfoList?.build(),
              nxContainerEntryList: _nxContainerEntryList?.build(),
              nxMatchingFieldInfoList: _nxMatchingFieldInfoList?.build(),
              associationScoreList: _associationScoreList?.build(),
              scriptSyntaxErrorList: _scriptSyntaxErrorList?.build(),
              connectionList: _connectionList?.build(),
              databaseList: _databaseList?.build(),
              databaseOwnerList: _databaseOwnerList?.build(),
              dataTableList: _dataTableList?.build(),
              dataFieldList: _dataFieldList?.build(),
              folderItemList: _folderItemList?.build(),
              dataTableExList: _dataTableExList?.build(),
              docListEntryList: _docListEntryList?.build(),
              bNFDefList: _bNFDefList?.build(),
              odbcDsnList: _odbcDsnList?.build(),
              oleDbProviderList: _oleDbProviderList?.build(),
              driveInfoList: _driveInfoList?.build(),
              codePageList: _codePageList?.build(),
              customConnectorList: _customConnectorList?.build(),
              nxStreamListEntryList: _nxStreamListEntryList?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'nxDataPageList';
        _nxDataPageList?.build();
        _$failedField = 'nxPivotPageList';
        _nxPivotPageList?.build();
        _$failedField = 'nxStackPageList';
        _nxStackPageList?.build();
        _$failedField = 'nxTreeNodeList';
        _nxTreeNodeList?.build();
        _$failedField = 'nxInfoList';
        _nxInfoList?.build();
        _$failedField = 'nxLinkedObjectInfoList';
        _nxLinkedObjectInfoList?.build();
        _$failedField = 'fieldValueList';
        _fieldValueList?.build();
        _$failedField = 'stringList';
        _stringList?.build();
        _$failedField = 'editorBreakpointList';
        _editorBreakpointList?.build();
        _$failedField = 'textMacroList';
        _textMacroList?.build();
        _$failedField = 'tableRowList';
        _tableRowList?.build();
        _$failedField = 'lineageInfoList';
        _lineageInfoList?.build();
        _$failedField = 'nxContainerEntryList';
        _nxContainerEntryList?.build();
        _$failedField = 'nxMatchingFieldInfoList';
        _nxMatchingFieldInfoList?.build();
        _$failedField = 'associationScoreList';
        _associationScoreList?.build();
        _$failedField = 'scriptSyntaxErrorList';
        _scriptSyntaxErrorList?.build();
        _$failedField = 'connectionList';
        _connectionList?.build();
        _$failedField = 'databaseList';
        _databaseList?.build();
        _$failedField = 'databaseOwnerList';
        _databaseOwnerList?.build();
        _$failedField = 'dataTableList';
        _dataTableList?.build();
        _$failedField = 'dataFieldList';
        _dataFieldList?.build();
        _$failedField = 'folderItemList';
        _folderItemList?.build();
        _$failedField = 'dataTableExList';
        _dataTableExList?.build();
        _$failedField = 'docListEntryList';
        _docListEntryList?.build();
        _$failedField = 'bNFDefList';
        _bNFDefList?.build();
        _$failedField = 'odbcDsnList';
        _odbcDsnList?.build();
        _$failedField = 'oleDbProviderList';
        _oleDbProviderList?.build();
        _$failedField = 'driveInfoList';
        _driveInfoList?.build();
        _$failedField = 'codePageList';
        _codePageList?.build();
        _$failedField = 'customConnectorList';
        _customConnectorList?.build();
        _$failedField = 'nxStreamListEntryList';
        _nxStreamListEntryList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ListTypeContainer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
