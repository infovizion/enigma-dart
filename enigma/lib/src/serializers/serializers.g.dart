// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(AlfaNumString.serializer)
      ..add(AlternateStateData.serializer)
      ..add(AppEntry.serializer)
      ..add(AppObjectList.serializer)
      ..add(AppObjectListDef.serializer)
      ..add(AppScript.serializer)
      ..add(AssociationScore.serializer)
      ..add(BNFDef.serializer)
      ..add(BookmarkFieldItem.serializer)
      ..add(BookmarkFieldPage.serializer)
      ..add(BookmarkList.serializer)
      ..add(BookmarkListDef.serializer)
      ..add(BookmarkVariableItem.serializer)
      ..add(CalendarStrings.serializer)
      ..add(CharRange.serializer)
      ..add(CheckExpressionResult.serializer)
      ..add(ChildList.serializer)
      ..add(ChildListDef.serializer)
      ..add(CodePage.serializer)
      ..add(Connection.serializer)
      ..add(ContentLibraryList.serializer)
      ..add(ContentLibraryListItem.serializer)
      ..add(CreateAppResult.serializer)
      ..add(CustomConnector.serializer)
      ..add(DataField.serializer)
      ..add(DataRecord.serializer)
      ..add(DataTable.serializer)
      ..add(DataTableEx.serializer)
      ..add(Database.serializer)
      ..add(DatabaseInfo.serializer)
      ..add(DatabaseOwner.serializer)
      ..add(DelimiterInfo.serializer)
      ..add(DerivedFieldsInTableData.serializer)
      ..add(DimensionList.serializer)
      ..add(DimensionListDef.serializer)
      ..add(DoReloadExParams.serializer)
      ..add(DoReloadExResult.serializer)
      ..add(DocListEntry.serializer)
      ..add(DriveInfo.serializer)
      ..add(EditorBreakpoint.serializer)
      ..add(ErrorData.serializer)
      ..add(ExportDataResult.serializer)
      ..add(ExtensionList.serializer)
      ..add(FieldAttributes.serializer)
      ..add(FieldDefEx.serializer)
      ..add(FieldDescription.serializer)
      ..add(FieldInTableData.serializer)
      ..add(FieldList.serializer)
      ..add(FieldListDef.serializer)
      ..add(FieldScores.serializer)
      ..add(FieldValue.serializer)
      ..add(FileDataFormat.serializer)
      ..add(FilterInfo.serializer)
      ..add(FolderItem.serializer)
      ..add(GenericBookmarkEntry.serializer)
      ..add(GenericBookmarkLayout.serializer)
      ..add(GenericBookmarkProperties.serializer)
      ..add(GenericDimensionInfo.serializer)
      ..add(GenericDimensionLayout.serializer)
      ..add(GenericDimensionProperties.serializer)
      ..add(GenericMeasureLayout.serializer)
      ..add(GenericMeasureProperties.serializer)
      ..add(GenericObjectEntry.serializer)
      ..add(GenericObjectLayout.serializer)
      ..add(GenericObjectProperties.serializer)
      ..add(GenericVariableLayout.serializer)
      ..add(GenericVariableProperties.serializer)
      ..add(GetHyperCubeContinuousDataResult.serializer)
      ..add(GetTablesAndKeysResult.serializer)
      ..add(HyperCube.serializer)
      ..add(HyperCubeDef.serializer)
      ..add(InteractDef.serializer)
      ..add(LayoutFieldInfo.serializer)
      ..add(LineageInfo.serializer)
      ..add(ListObject.serializer)
      ..add(ListObjectDef.serializer)
      ..add(ListTypeContainer.serializer)
      ..add(LocaleInfo.serializer)
      ..add(MeasureList.serializer)
      ..add(MeasureListDef.serializer)
      ..add(MediaList.serializer)
      ..add(MediaListItem.serializer)
      ..add(NxAppLayout.serializer)
      ..add(NxAppProperties.serializer)
      ..add(NxAttrDimDef.serializer)
      ..add(NxAttrDimInfo.serializer)
      ..add(NxAttrExprDef.serializer)
      ..add(NxAttrExprInfo.serializer)
      ..add(NxAttributeDimValues.serializer)
      ..add(NxAttributeExpressionValues.serializer)
      ..add(NxAutoSortByStateDef.serializer)
      ..add(NxAxisData.serializer)
      ..add(NxAxisTicks.serializer)
      ..add(NxBookmark.serializer)
      ..add(NxCalcCond.serializer)
      ..add(NxCell.serializer)
      ..add(NxCellPosition.serializer)
      ..add(NxContainerEntry.serializer)
      ..add(NxContinuousDataOptions.serializer)
      ..add(NxContinuousRangeSelectInfo.serializer)
      ..add(NxCurrentSelectionItem.serializer)
      ..add(NxDataAreaPage.serializer)
      ..add(NxDataPage.serializer)
      ..add(NxDerivedField.serializer)
      ..add(NxDerivedFieldDescriptionList.serializer)
      ..add(NxDerivedFieldsData.serializer)
      ..add(NxDerivedGroup.serializer)
      ..add(NxDimension.serializer)
      ..add(NxDimensionInfo.serializer)
      ..add(NxEngineVersion.serializer)
      ..add(NxFieldDescription.serializer)
      ..add(NxFieldProperties.serializer)
      ..add(NxFieldSelectionInfo.serializer)
      ..add(NxGetBookmarkOptions.serializer)
      ..add(NxGetObjectOptions.serializer)
      ..add(NxGroupTail.serializer)
      ..add(NxHighlightRanges.serializer)
      ..add(NxInfo.serializer)
      ..add(NxInlineDimensionDef.serializer)
      ..add(NxInlineMeasureDef.serializer)
      ..add(NxLayoutErrors.serializer)
      ..add(NxLibraryDimension.serializer)
      ..add(NxLibraryDimensionDef.serializer)
      ..add(NxLibraryMeasure.serializer)
      ..add(NxLibraryMeasureDef.serializer)
      ..add(NxLinkedObjectInfo.serializer)
      ..add(NxListObjectExpression.serializer)
      ..add(NxListObjectExpressionDef.serializer)
      ..add(NxMatchingFieldInfo.serializer)
      ..add(NxMeasure.serializer)
      ..add(NxMeasureInfo.serializer)
      ..add(NxMeta.serializer)
      ..add(NxMultiRangeSelectInfo.serializer)
      ..add(NxPage.serializer)
      ..add(NxPageTreeLevel.serializer)
      ..add(NxPageTreeNode.serializer)
      ..add(NxPatch.serializer)
      ..add(NxPivotDimensionCell.serializer)
      ..add(NxPivotPage.serializer)
      ..add(NxPivotValuePoint.serializer)
      ..add(NxRange.serializer)
      ..add(NxRangeSelectInfo.serializer)
      ..add(NxSelectionCell.serializer)
      ..add(NxSelectionInfo.serializer)
      ..add(NxSimpleDimValue.serializer)
      ..add(NxSimpleValue.serializer)
      ..add(NxStackPage.serializer)
      ..add(NxStackedPivotCell.serializer)
      ..add(NxStateCounts.serializer)
      ..add(NxStreamListEntry.serializer)
      ..add(NxTickCell.serializer)
      ..add(NxTreeDataOption.serializer)
      ..add(NxTreeDimensionDef.serializer)
      ..add(NxTreeDimensionInfo.serializer)
      ..add(NxTreeMultiRangeSelectInfo.serializer)
      ..add(NxTreeNode.serializer)
      ..add(NxTreeRangeSelectInfo.serializer)
      ..add(NxTreeValue.serializer)
      ..add(NxValidationError.serializer)
      ..add(NxVariableListItem.serializer)
      ..add(NxVariableProperties.serializer)
      ..add(NxViewPort.serializer)
      ..add(ObjectInterface.serializer)
      ..add(OdbcDsn.serializer)
      ..add(OleDbProvider.serializer)
      ..add(OtherTotalSpecProp.serializer)
      ..add(Point.serializer)
      ..add(ProgressData.serializer)
      ..add(ProgressMessage.serializer)
      ..add(Range.serializer)
      ..add(RangeSelectInfo.serializer)
      ..add(Rect.serializer)
      ..add(ScriptFunction.serializer)
      ..add(ScriptSyntaxError.serializer)
      ..add(SearchAssociationResult.serializer)
      ..add(SearchAttribute.serializer)
      ..add(SearchCharRange.serializer)
      ..add(SearchCombinationOptions.serializer)
      ..add(SearchFieldDictionary.serializer)
      ..add(SearchFieldMatch.serializer)
      ..add(SearchGroup.serializer)
      ..add(SearchGroupItem.serializer)
      ..add(SearchGroupItemMatch.serializer)
      ..add(SearchGroupItemOptions.serializer)
      ..add(SearchGroupOptions.serializer)
      ..add(SearchMatchCombination.serializer)
      ..add(SearchObjectOptions.serializer)
      ..add(SearchPage.serializer)
      ..add(SearchResult.serializer)
      ..add(SearchSuggestItem.serializer)
      ..add(SearchSuggestionResult.serializer)
      ..add(SearchTermResult.serializer)
      ..add(SelectInfo.serializer)
      ..add(SelectionObject.serializer)
      ..add(SelectionObjectDef.serializer)
      ..add(Size.serializer)
      ..add(SortCriteria.serializer)
      ..add(SourceKeyRecord.serializer)
      ..add(StaticContentList.serializer)
      ..add(StaticContentListItem.serializer)
      ..add(StaticContentUrl.serializer)
      ..add(StaticContentUrlDef.serializer)
      ..add(StringExpr.serializer)
      ..add(StringExpression.serializer)
      ..add(TableRecord.serializer)
      ..add(TableRow.serializer)
      ..add(TableViewBroomPointSaveInfo.serializer)
      ..add(TableViewConnectionPointSaveInfo.serializer)
      ..add(TableViewCtlSaveInfo.serializer)
      ..add(TableViewDlgSaveInfo.serializer)
      ..add(TableViewSaveInfo.serializer)
      ..add(TableViewTableWinSaveInfo.serializer)
      ..add(TextMacro.serializer)
      ..add(TreeData.serializer)
      ..add(TreeDataDef.serializer)
      ..add(UndoInfo.serializer)
      ..add(ValueExpr.serializer)
      ..add(ValueExpression.serializer)
      ..add(VariableList.serializer)
      ..add(VariableListDef.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AlternateStateData)]),
          () => new ListBuilder<AlternateStateData>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(BookmarkVariableItem)]),
          () => new ListBuilder<BookmarkVariableItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(BookmarkFieldItem)]),
          () => new ListBuilder<BookmarkFieldItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(BuiltList, const [const FullType(NxCell)])
          ]),
          () => new ListBuilder<BuiltList<NxCell>>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxGroupTail)]),
          () => new ListBuilder<NxGroupTail>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CharRange)]),
          () => new ListBuilder<CharRange>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ContentLibraryListItem)]),
          () => new ListBuilder<ContentLibraryListItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(DataField)]),
          () => new ListBuilder<DataField>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ErrorData)]),
          () => new ListBuilder<ErrorData>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ProgressMessage)]),
          () => new ListBuilder<ProgressMessage>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FieldInTableData)]),
          () => new ListBuilder<FieldInTableData>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FieldValue)]),
          () => new ListBuilder<FieldValue>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FieldValue)]),
          () => new ListBuilder<FieldValue>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FieldValue)]),
          () => new ListBuilder<FieldValue>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GenericDimensionInfo)]),
          () => new ListBuilder<GenericDimensionInfo>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GenericObjectEntry)]),
          () => new ListBuilder<GenericObjectEntry>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(LayoutFieldInfo)]),
          () => new ListBuilder<LayoutFieldInfo>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(MediaListItem)]),
          () => new ListBuilder<MediaListItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxAttrExprDef)]),
          () => new ListBuilder<NxAttrExprDef>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxAttrDimDef)]),
          () => new ListBuilder<NxAttrDimDef>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxAttrExprDef)]),
          () => new ListBuilder<NxAttrExprDef>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxAttrDimDef)]),
          () => new ListBuilder<NxAttrDimDef>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxAttrExprInfo)]),
          () => new ListBuilder<NxAttrExprInfo>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxAttrDimInfo)]),
          () => new ListBuilder<NxAttrDimInfo>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxAxisTicks)]),
          () => new ListBuilder<NxAxisTicks>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxContainerEntry)]),
          () => new ListBuilder<NxContainerEntry>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxContainerEntry)]),
          () => new ListBuilder<NxContainerEntry>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxContainerEntry)]),
          () => new ListBuilder<NxContainerEntry>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxContainerEntry)]),
          () => new ListBuilder<NxContainerEntry>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxContainerEntry)]),
          () => new ListBuilder<NxContainerEntry>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(NxCurrentSelectionItem)]),
          () => new ListBuilder<NxCurrentSelectionItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxDataPage)]),
          () => new ListBuilder<NxDataPage>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxPivotPage)]),
          () => new ListBuilder<NxPivotPage>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxStackPage)]),
          () => new ListBuilder<NxStackPage>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxTreeNode)]),
          () => new ListBuilder<NxTreeNode>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxInfo)]),
          () => new ListBuilder<NxInfo>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxLinkedObjectInfo)]),
          () => new ListBuilder<NxLinkedObjectInfo>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FieldValue)]),
          () => new ListBuilder<FieldValue>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(EditorBreakpoint)]),
          () => new ListBuilder<EditorBreakpoint>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TextMacro)]),
          () => new ListBuilder<TextMacro>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TableRow)]),
          () => new ListBuilder<TableRow>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(LineageInfo)]),
          () => new ListBuilder<LineageInfo>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxContainerEntry)]),
          () => new ListBuilder<NxContainerEntry>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(NxMatchingFieldInfo)]),
          () => new ListBuilder<NxMatchingFieldInfo>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AssociationScore)]),
          () => new ListBuilder<AssociationScore>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ScriptSyntaxError)]),
          () => new ListBuilder<ScriptSyntaxError>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Connection)]),
          () => new ListBuilder<Connection>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Database)]),
          () => new ListBuilder<Database>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(DatabaseOwner)]),
          () => new ListBuilder<DatabaseOwner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(DataTable)]),
          () => new ListBuilder<DataTable>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(DataField)]),
          () => new ListBuilder<DataField>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FolderItem)]),
          () => new ListBuilder<FolderItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(DataTableEx)]),
          () => new ListBuilder<DataTableEx>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(DocListEntry)]),
          () => new ListBuilder<DocListEntry>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(BNFDef)]),
          () => new ListBuilder<BNFDef>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(OdbcDsn)]),
          () => new ListBuilder<OdbcDsn>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(OleDbProvider)]),
          () => new ListBuilder<OleDbProvider>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(DriveInfo)]),
          () => new ListBuilder<DriveInfo>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CodePage)]),
          () => new ListBuilder<CodePage>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CustomConnector)]),
          () => new ListBuilder<CustomConnector>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxStreamListEntry)]),
          () => new ListBuilder<NxStreamListEntry>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxDerivedField)]),
          () => new ListBuilder<NxDerivedField>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxDerivedGroup)]),
          () => new ListBuilder<NxDerivedGroup>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(NxDerivedFieldsData)]),
          () => new ListBuilder<NxDerivedFieldsData>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxDimension)]),
          () => new ListBuilder<NxDimension>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxMeasure)]),
          () => new ListBuilder<NxMeasure>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => new ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxPage)]),
          () => new ListBuilder<NxPage>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => new ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxDimensionInfo)]),
          () => new ListBuilder<NxDimensionInfo>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxMeasureInfo)]),
          () => new ListBuilder<NxMeasureInfo>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => new ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxCell)]),
          () => new ListBuilder<NxCell>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxDataPage)]),
          () => new ListBuilder<NxDataPage>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxPivotPage)]),
          () => new ListBuilder<NxPivotPage>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxStackPage)]),
          () => new ListBuilder<NxStackPage>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => new ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => new ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxFieldDescription)]),
          () => new ListBuilder<NxFieldDescription>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(NxListObjectExpression)]),
          () => new ListBuilder<NxListObjectExpression>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxDataPage)]),
          () => new ListBuilder<NxDataPage>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxMeasure)]),
          () => new ListBuilder<NxMeasure>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxAttrExprDef)]),
          () => new ListBuilder<NxAttrExprDef>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxAttrDimDef)]),
          () => new ListBuilder<NxAttrDimDef>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxPage)]),
          () => new ListBuilder<NxPage>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(NxListObjectExpressionDef)]),
          () => new ListBuilder<NxListObjectExpressionDef>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NxPageTreeNode)]),
          () => new ListBuilder<NxPageTreeNode>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(NxPivotDimensionCell)]),
          () => new ListBuilder<NxPivotDimensionCell>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(NxPivotDimensionCell)]),
          () => new ListBuilder<NxPivotDimensionCell>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(NxPivotDimensionCell)]),
          () => new ListBuilder<NxPivotDimensionCell>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(BuiltList, const [const FullType(NxPivotValuePoint)])
          ]),
          () => new ListBuilder<BuiltList<NxPivotValuePoint>>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxRangeSelectInfo)]), () => new ListBuilder<NxRangeSelectInfo>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(int)]), () => new ListBuilder<int>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxSimpleDimValue)]), () => new ListBuilder<NxSimpleDimValue>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxSimpleValue)]), () => new ListBuilder<NxSimpleValue>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxStackedPivotCell)]), () => new ListBuilder<NxStackedPivotCell>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxStackedPivotCell)]), () => new ListBuilder<NxStackedPivotCell>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxTreeDimensionDef)]), () => new ListBuilder<NxTreeDimensionDef>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(int)]), () => new ListBuilder<int>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxTreeRangeSelectInfo)]), () => new ListBuilder<NxTreeRangeSelectInfo>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxTreeValue)]), () => new ListBuilder<NxTreeValue>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxTreeNode)]), () => new ListBuilder<NxTreeNode>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxVariableListItem)]), () => new ListBuilder<NxVariableListItem>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(RangeSelectInfo)]), () => new ListBuilder<RangeSelectInfo>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxFieldSelectionInfo)]), () => new ListBuilder<NxFieldSelectionInfo>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxFieldSelectionInfo)]), () => new ListBuilder<NxFieldSelectionInfo>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(RangeSelectInfo)]), () => new ListBuilder<RangeSelectInfo>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(Range)]), () => new ListBuilder<Range>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(SearchCharRange)]), () => new ListBuilder<SearchCharRange>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(SearchCharRange)]), () => new ListBuilder<SearchCharRange>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(SearchAttribute)]), () => new ListBuilder<SearchAttribute>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(SearchFieldMatch)]), () => new ListBuilder<SearchFieldMatch>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(SearchGroupItemMatch)]), () => new ListBuilder<SearchGroupItemMatch>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(int)]), () => new ListBuilder<int>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(SearchGroupOptions)]), () => new ListBuilder<SearchGroupOptions>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(SearchGroupItemOptions)]), () => new ListBuilder<SearchGroupItemOptions>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(SearchSuggestItem)]), () => new ListBuilder<SearchSuggestItem>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(SearchTermResult)]), () => new ListBuilder<SearchTermResult>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(StaticContentListItem)]), () => new ListBuilder<StaticContentListItem>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxTickCell)]), () => new ListBuilder<NxTickCell>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(SearchGroup)]), () => new ListBuilder<SearchGroup>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(DerivedFieldsInTableData)]), () => new ListBuilder<DerivedFieldsInTableData>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(SearchFieldDictionary)]), () => new ListBuilder<SearchFieldDictionary>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                BuiltList, const [const FullType(SearchMatchCombination)])
          ]),
          () => new ListBuilder<BuiltList<SearchMatchCombination>>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(SortCriteria)]), () => new ListBuilder<SortCriteria>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(FieldAttributes)]), () => new ListBuilder<FieldAttributes>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxAttrExprInfo)]), () => new ListBuilder<NxAttrExprInfo>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxAttrDimInfo)]), () => new ListBuilder<NxAttrDimInfo>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxMeasureInfo)]), () => new ListBuilder<NxMeasureInfo>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxAttrExprInfo)]), () => new ListBuilder<NxAttrExprInfo>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxAttrDimInfo)]), () => new ListBuilder<NxAttrDimInfo>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(TableRecord)]), () => new ListBuilder<TableRecord>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(SourceKeyRecord)]), () => new ListBuilder<SourceKeyRecord>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(TableViewTableWinSaveInfo)]), () => new ListBuilder<TableViewTableWinSaveInfo>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(TableViewBroomPointSaveInfo)]), () => new ListBuilder<TableViewBroomPointSaveInfo>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(TableViewConnectionPointSaveInfo)]), () => new ListBuilder<TableViewConnectionPointSaveInfo>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(int)]), () => new ListBuilder<int>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(int)]), () => new ListBuilder<int>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(NxTreeDimensionInfo)]), () => new ListBuilder<NxTreeDimensionInfo>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(int)]), () => new ListBuilder<int>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(int)]), () => new ListBuilder<int>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(SearchGroupItem)]), () => new ListBuilder<SearchGroupItem>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(int)]), () => new ListBuilder<int>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(int)]), () => new ListBuilder<int>()))
    .build();
