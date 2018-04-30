// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_object_layout;

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

Serializer<GenericObjectLayout> _$genericObjectLayoutSerializer =
    new _$GenericObjectLayoutSerializer();

class _$GenericObjectLayoutSerializer
    implements StructuredSerializer<GenericObjectLayout> {
  @override
  final Iterable<Type> types = const [
    GenericObjectLayout,
    _$GenericObjectLayout
  ];
  @override
  final String wireName = 'GenericObjectLayout';

  @override
  Iterable serialize(Serializers serializers, GenericObjectLayout object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.info != null) {
      result
        ..add('qInfo')
        ..add(serializers.serialize(object.info,
            specifiedType: const FullType(NxInfo)));
    }
    if (object.meta != null) {
      result
        ..add('qMeta')
        ..add(serializers.serialize(object.meta,
            specifiedType: const FullType(NxMeta)));
    }
    if (object.extendsId != null) {
      result
        ..add('qExtendsId')
        ..add(serializers.serialize(object.extendsId,
            specifiedType: const FullType(String)));
    }
    if (object.hasSoftPatches != null) {
      result
        ..add('qHasSoftPatches')
        ..add(serializers.serialize(object.hasSoftPatches,
            specifiedType: const FullType(bool)));
    }
    if (object.error != null) {
      result
        ..add('qError')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(NxLayoutErrors)));
    }
    if (object.selectionInfo != null) {
      result
        ..add('qSelectionInfo')
        ..add(serializers.serialize(object.selectionInfo,
            specifiedType: const FullType(NxSelectionInfo)));
    }
    if (object.appObjectList != null) {
      result
        ..add('qAppObjectList')
        ..add(serializers.serialize(object.appObjectList,
            specifiedType: const FullType(AppObjectList)));
    }
    if (object.bookmarkList != null) {
      result
        ..add('qBookmarkList')
        ..add(serializers.serialize(object.bookmarkList,
            specifiedType: const FullType(BookmarkList)));
    }
    if (object.childList != null) {
      result
        ..add('qChildList')
        ..add(serializers.serialize(object.childList,
            specifiedType: const FullType(ChildList)));
    }
    if (object.dimensionList != null) {
      result
        ..add('qDimensionList')
        ..add(serializers.serialize(object.dimensionList,
            specifiedType: const FullType(DimensionList)));
    }
    if (object.embeddedSnapshot != null) {
      result
        ..add('qEmbeddedSnapshot')
        ..add(serializers.serialize(object.embeddedSnapshot,
            specifiedType: const FullType(JsonObject)));
    }
    if (object.extensionList != null) {
      result
        ..add('qExtensionList')
        ..add(serializers.serialize(object.extensionList,
            specifiedType: const FullType(ExtensionList)));
    }
    if (object.fieldList != null) {
      result
        ..add('qFieldList')
        ..add(serializers.serialize(object.fieldList,
            specifiedType: const FullType(FieldList)));
    }
    if (object.hyperCube != null) {
      result
        ..add('qHyperCube')
        ..add(serializers.serialize(object.hyperCube,
            specifiedType: const FullType(HyperCube)));
    }
    if (object.listObject != null) {
      result
        ..add('qListObject')
        ..add(serializers.serialize(object.listObject,
            specifiedType: const FullType(ListObject)));
    }
    if (object.measureList != null) {
      result
        ..add('qMeasureList')
        ..add(serializers.serialize(object.measureList,
            specifiedType: const FullType(MeasureList)));
    }
    if (object.mediaList != null) {
      result
        ..add('qMediaList')
        ..add(serializers.serialize(object.mediaList,
            specifiedType: const FullType(MediaList)));
    }
    if (object.nxLibraryDimension != null) {
      result
        ..add('qNxLibraryDimension')
        ..add(serializers.serialize(object.nxLibraryDimension,
            specifiedType: const FullType(NxLibraryDimension)));
    }
    if (object.nxLibraryMeasure != null) {
      result
        ..add('qNxLibraryMeasure')
        ..add(serializers.serialize(object.nxLibraryMeasure,
            specifiedType: const FullType(NxLibraryMeasure)));
    }
    if (object.selectionObject != null) {
      result
        ..add('qSelectionObject')
        ..add(serializers.serialize(object.selectionObject,
            specifiedType: const FullType(SelectionObject)));
    }
    if (object.staticContentUrl != null) {
      result
        ..add('qStaticContentUrl')
        ..add(serializers.serialize(object.staticContentUrl,
            specifiedType: const FullType(StaticContentUrl)));
    }
    if (object.treeData != null) {
      result
        ..add('qTreeData')
        ..add(serializers.serialize(object.treeData,
            specifiedType: const FullType(TreeData)));
    }
    if (object.undoInfo != null) {
      result
        ..add('qUndoInfo')
        ..add(serializers.serialize(object.undoInfo,
            specifiedType: const FullType(UndoInfo)));
    }
    if (object.variableList != null) {
      result
        ..add('qVariableList')
        ..add(serializers.serialize(object.variableList,
            specifiedType: const FullType(VariableList)));
    }

    return result;
  }

  @override
  GenericObjectLayout deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new GenericObjectLayoutBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qInfo':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxInfo)) as NxInfo);
          break;
        case 'qMeta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxMeta)) as NxMeta);
          break;
        case 'qExtendsId':
          result.extendsId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qHasSoftPatches':
          result.hasSoftPatches = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qError':
          result.error.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxLayoutErrors)) as NxLayoutErrors);
          break;
        case 'qSelectionInfo':
          result.selectionInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxSelectionInfo))
              as NxSelectionInfo);
          break;
        case 'qAppObjectList':
          result.appObjectList.replace(serializers.deserialize(value,
              specifiedType: const FullType(AppObjectList)) as AppObjectList);
          break;
        case 'qBookmarkList':
          result.bookmarkList.replace(serializers.deserialize(value,
              specifiedType: const FullType(BookmarkList)) as BookmarkList);
          break;
        case 'qChildList':
          result.childList.replace(serializers.deserialize(value,
              specifiedType: const FullType(ChildList)) as ChildList);
          break;
        case 'qDimensionList':
          result.dimensionList.replace(serializers.deserialize(value,
              specifiedType: const FullType(DimensionList)) as DimensionList);
          break;
        case 'qEmbeddedSnapshot':
          result.embeddedSnapshot = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
        case 'qExtensionList':
          result.extensionList.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExtensionList)) as ExtensionList);
          break;
        case 'qFieldList':
          result.fieldList.replace(serializers.deserialize(value,
              specifiedType: const FullType(FieldList)) as FieldList);
          break;
        case 'qHyperCube':
          result.hyperCube.replace(serializers.deserialize(value,
              specifiedType: const FullType(HyperCube)) as HyperCube);
          break;
        case 'qListObject':
          result.listObject.replace(serializers.deserialize(value,
              specifiedType: const FullType(ListObject)) as ListObject);
          break;
        case 'qMeasureList':
          result.measureList.replace(serializers.deserialize(value,
              specifiedType: const FullType(MeasureList)) as MeasureList);
          break;
        case 'qMediaList':
          result.mediaList.replace(serializers.deserialize(value,
              specifiedType: const FullType(MediaList)) as MediaList);
          break;
        case 'qNxLibraryDimension':
          result.nxLibraryDimension.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxLibraryDimension))
              as NxLibraryDimension);
          break;
        case 'qNxLibraryMeasure':
          result.nxLibraryMeasure.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxLibraryMeasure))
              as NxLibraryMeasure);
          break;
        case 'qSelectionObject':
          result.selectionObject.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SelectionObject))
              as SelectionObject);
          break;
        case 'qStaticContentUrl':
          result.staticContentUrl.replace(serializers.deserialize(value,
                  specifiedType: const FullType(StaticContentUrl))
              as StaticContentUrl);
          break;
        case 'qTreeData':
          result.treeData.replace(serializers.deserialize(value,
              specifiedType: const FullType(TreeData)) as TreeData);
          break;
        case 'qUndoInfo':
          result.undoInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(UndoInfo)) as UndoInfo);
          break;
        case 'qVariableList':
          result.variableList.replace(serializers.deserialize(value,
              specifiedType: const FullType(VariableList)) as VariableList);
          break;
      }
    }

    return result.build();
  }
}

class _$GenericObjectLayout extends GenericObjectLayout {
  @override
  final NxInfo info;
  @override
  final NxMeta meta;
  @override
  final String extendsId;
  @override
  final bool hasSoftPatches;
  @override
  final NxLayoutErrors error;
  @override
  final NxSelectionInfo selectionInfo;
  @override
  final AppObjectList appObjectList;
  @override
  final BookmarkList bookmarkList;
  @override
  final ChildList childList;
  @override
  final DimensionList dimensionList;
  @override
  final JsonObject embeddedSnapshot;
  @override
  final ExtensionList extensionList;
  @override
  final FieldList fieldList;
  @override
  final HyperCube hyperCube;
  @override
  final ListObject listObject;
  @override
  final MeasureList measureList;
  @override
  final MediaList mediaList;
  @override
  final NxLibraryDimension nxLibraryDimension;
  @override
  final NxLibraryMeasure nxLibraryMeasure;
  @override
  final SelectionObject selectionObject;
  @override
  final StaticContentUrl staticContentUrl;
  @override
  final TreeData treeData;
  @override
  final UndoInfo undoInfo;
  @override
  final VariableList variableList;

  factory _$GenericObjectLayout([void updates(GenericObjectLayoutBuilder b)]) =>
      (new GenericObjectLayoutBuilder()..update(updates)).build();

  _$GenericObjectLayout._(
      {this.info,
      this.meta,
      this.extendsId,
      this.hasSoftPatches,
      this.error,
      this.selectionInfo,
      this.appObjectList,
      this.bookmarkList,
      this.childList,
      this.dimensionList,
      this.embeddedSnapshot,
      this.extensionList,
      this.fieldList,
      this.hyperCube,
      this.listObject,
      this.measureList,
      this.mediaList,
      this.nxLibraryDimension,
      this.nxLibraryMeasure,
      this.selectionObject,
      this.staticContentUrl,
      this.treeData,
      this.undoInfo,
      this.variableList})
      : super._();

  @override
  GenericObjectLayout rebuild(void updates(GenericObjectLayoutBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GenericObjectLayoutBuilder toBuilder() =>
      new GenericObjectLayoutBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GenericObjectLayout) return false;
    return info == other.info &&
        meta == other.meta &&
        extendsId == other.extendsId &&
        hasSoftPatches == other.hasSoftPatches &&
        error == other.error &&
        selectionInfo == other.selectionInfo &&
        appObjectList == other.appObjectList &&
        bookmarkList == other.bookmarkList &&
        childList == other.childList &&
        dimensionList == other.dimensionList &&
        embeddedSnapshot == other.embeddedSnapshot &&
        extensionList == other.extensionList &&
        fieldList == other.fieldList &&
        hyperCube == other.hyperCube &&
        listObject == other.listObject &&
        measureList == other.measureList &&
        mediaList == other.mediaList &&
        nxLibraryDimension == other.nxLibraryDimension &&
        nxLibraryMeasure == other.nxLibraryMeasure &&
        selectionObject == other.selectionObject &&
        staticContentUrl == other.staticContentUrl &&
        treeData == other.treeData &&
        undoInfo == other.undoInfo &&
        variableList == other.variableList;
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
                                                                            $jc($jc($jc($jc($jc($jc(0, info.hashCode), meta.hashCode), extendsId.hashCode), hasSoftPatches.hashCode), error.hashCode),
                                                                                selectionInfo.hashCode),
                                                                            appObjectList.hashCode),
                                                                        bookmarkList.hashCode),
                                                                    childList.hashCode),
                                                                dimensionList.hashCode),
                                                            embeddedSnapshot.hashCode),
                                                        extensionList.hashCode),
                                                    fieldList.hashCode),
                                                hyperCube.hashCode),
                                            listObject.hashCode),
                                        measureList.hashCode),
                                    mediaList.hashCode),
                                nxLibraryDimension.hashCode),
                            nxLibraryMeasure.hashCode),
                        selectionObject.hashCode),
                    staticContentUrl.hashCode),
                treeData.hashCode),
            undoInfo.hashCode),
        variableList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenericObjectLayout')
          ..add('info', info)
          ..add('meta', meta)
          ..add('extendsId', extendsId)
          ..add('hasSoftPatches', hasSoftPatches)
          ..add('error', error)
          ..add('selectionInfo', selectionInfo)
          ..add('appObjectList', appObjectList)
          ..add('bookmarkList', bookmarkList)
          ..add('childList', childList)
          ..add('dimensionList', dimensionList)
          ..add('embeddedSnapshot', embeddedSnapshot)
          ..add('extensionList', extensionList)
          ..add('fieldList', fieldList)
          ..add('hyperCube', hyperCube)
          ..add('listObject', listObject)
          ..add('measureList', measureList)
          ..add('mediaList', mediaList)
          ..add('nxLibraryDimension', nxLibraryDimension)
          ..add('nxLibraryMeasure', nxLibraryMeasure)
          ..add('selectionObject', selectionObject)
          ..add('staticContentUrl', staticContentUrl)
          ..add('treeData', treeData)
          ..add('undoInfo', undoInfo)
          ..add('variableList', variableList))
        .toString();
  }
}

class GenericObjectLayoutBuilder
    implements Builder<GenericObjectLayout, GenericObjectLayoutBuilder> {
  _$GenericObjectLayout _$v;

  NxInfoBuilder _info;
  NxInfoBuilder get info => _$this._info ??= new NxInfoBuilder();
  set info(NxInfoBuilder info) => _$this._info = info;

  NxMetaBuilder _meta;
  NxMetaBuilder get meta => _$this._meta ??= new NxMetaBuilder();
  set meta(NxMetaBuilder meta) => _$this._meta = meta;

  String _extendsId;
  String get extendsId => _$this._extendsId;
  set extendsId(String extendsId) => _$this._extendsId = extendsId;

  bool _hasSoftPatches;
  bool get hasSoftPatches => _$this._hasSoftPatches;
  set hasSoftPatches(bool hasSoftPatches) =>
      _$this._hasSoftPatches = hasSoftPatches;

  NxLayoutErrorsBuilder _error;
  NxLayoutErrorsBuilder get error =>
      _$this._error ??= new NxLayoutErrorsBuilder();
  set error(NxLayoutErrorsBuilder error) => _$this._error = error;

  NxSelectionInfoBuilder _selectionInfo;
  NxSelectionInfoBuilder get selectionInfo =>
      _$this._selectionInfo ??= new NxSelectionInfoBuilder();
  set selectionInfo(NxSelectionInfoBuilder selectionInfo) =>
      _$this._selectionInfo = selectionInfo;

  AppObjectListBuilder _appObjectList;
  AppObjectListBuilder get appObjectList =>
      _$this._appObjectList ??= new AppObjectListBuilder();
  set appObjectList(AppObjectListBuilder appObjectList) =>
      _$this._appObjectList = appObjectList;

  BookmarkListBuilder _bookmarkList;
  BookmarkListBuilder get bookmarkList =>
      _$this._bookmarkList ??= new BookmarkListBuilder();
  set bookmarkList(BookmarkListBuilder bookmarkList) =>
      _$this._bookmarkList = bookmarkList;

  ChildListBuilder _childList;
  ChildListBuilder get childList =>
      _$this._childList ??= new ChildListBuilder();
  set childList(ChildListBuilder childList) => _$this._childList = childList;

  DimensionListBuilder _dimensionList;
  DimensionListBuilder get dimensionList =>
      _$this._dimensionList ??= new DimensionListBuilder();
  set dimensionList(DimensionListBuilder dimensionList) =>
      _$this._dimensionList = dimensionList;

  JsonObject _embeddedSnapshot;
  JsonObject get embeddedSnapshot => _$this._embeddedSnapshot;
  set embeddedSnapshot(JsonObject embeddedSnapshot) =>
      _$this._embeddedSnapshot = embeddedSnapshot;

  ExtensionListBuilder _extensionList;
  ExtensionListBuilder get extensionList =>
      _$this._extensionList ??= new ExtensionListBuilder();
  set extensionList(ExtensionListBuilder extensionList) =>
      _$this._extensionList = extensionList;

  FieldListBuilder _fieldList;
  FieldListBuilder get fieldList =>
      _$this._fieldList ??= new FieldListBuilder();
  set fieldList(FieldListBuilder fieldList) => _$this._fieldList = fieldList;

  HyperCubeBuilder _hyperCube;
  HyperCubeBuilder get hyperCube =>
      _$this._hyperCube ??= new HyperCubeBuilder();
  set hyperCube(HyperCubeBuilder hyperCube) => _$this._hyperCube = hyperCube;

  ListObjectBuilder _listObject;
  ListObjectBuilder get listObject =>
      _$this._listObject ??= new ListObjectBuilder();
  set listObject(ListObjectBuilder listObject) =>
      _$this._listObject = listObject;

  MeasureListBuilder _measureList;
  MeasureListBuilder get measureList =>
      _$this._measureList ??= new MeasureListBuilder();
  set measureList(MeasureListBuilder measureList) =>
      _$this._measureList = measureList;

  MediaListBuilder _mediaList;
  MediaListBuilder get mediaList =>
      _$this._mediaList ??= new MediaListBuilder();
  set mediaList(MediaListBuilder mediaList) => _$this._mediaList = mediaList;

  NxLibraryDimensionBuilder _nxLibraryDimension;
  NxLibraryDimensionBuilder get nxLibraryDimension =>
      _$this._nxLibraryDimension ??= new NxLibraryDimensionBuilder();
  set nxLibraryDimension(NxLibraryDimensionBuilder nxLibraryDimension) =>
      _$this._nxLibraryDimension = nxLibraryDimension;

  NxLibraryMeasureBuilder _nxLibraryMeasure;
  NxLibraryMeasureBuilder get nxLibraryMeasure =>
      _$this._nxLibraryMeasure ??= new NxLibraryMeasureBuilder();
  set nxLibraryMeasure(NxLibraryMeasureBuilder nxLibraryMeasure) =>
      _$this._nxLibraryMeasure = nxLibraryMeasure;

  SelectionObjectBuilder _selectionObject;
  SelectionObjectBuilder get selectionObject =>
      _$this._selectionObject ??= new SelectionObjectBuilder();
  set selectionObject(SelectionObjectBuilder selectionObject) =>
      _$this._selectionObject = selectionObject;

  StaticContentUrlBuilder _staticContentUrl;
  StaticContentUrlBuilder get staticContentUrl =>
      _$this._staticContentUrl ??= new StaticContentUrlBuilder();
  set staticContentUrl(StaticContentUrlBuilder staticContentUrl) =>
      _$this._staticContentUrl = staticContentUrl;

  TreeDataBuilder _treeData;
  TreeDataBuilder get treeData => _$this._treeData ??= new TreeDataBuilder();
  set treeData(TreeDataBuilder treeData) => _$this._treeData = treeData;

  UndoInfoBuilder _undoInfo;
  UndoInfoBuilder get undoInfo => _$this._undoInfo ??= new UndoInfoBuilder();
  set undoInfo(UndoInfoBuilder undoInfo) => _$this._undoInfo = undoInfo;

  VariableListBuilder _variableList;
  VariableListBuilder get variableList =>
      _$this._variableList ??= new VariableListBuilder();
  set variableList(VariableListBuilder variableList) =>
      _$this._variableList = variableList;

  GenericObjectLayoutBuilder();

  GenericObjectLayoutBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _meta = _$v.meta?.toBuilder();
      _extendsId = _$v.extendsId;
      _hasSoftPatches = _$v.hasSoftPatches;
      _error = _$v.error?.toBuilder();
      _selectionInfo = _$v.selectionInfo?.toBuilder();
      _appObjectList = _$v.appObjectList?.toBuilder();
      _bookmarkList = _$v.bookmarkList?.toBuilder();
      _childList = _$v.childList?.toBuilder();
      _dimensionList = _$v.dimensionList?.toBuilder();
      _embeddedSnapshot = _$v.embeddedSnapshot;
      _extensionList = _$v.extensionList?.toBuilder();
      _fieldList = _$v.fieldList?.toBuilder();
      _hyperCube = _$v.hyperCube?.toBuilder();
      _listObject = _$v.listObject?.toBuilder();
      _measureList = _$v.measureList?.toBuilder();
      _mediaList = _$v.mediaList?.toBuilder();
      _nxLibraryDimension = _$v.nxLibraryDimension?.toBuilder();
      _nxLibraryMeasure = _$v.nxLibraryMeasure?.toBuilder();
      _selectionObject = _$v.selectionObject?.toBuilder();
      _staticContentUrl = _$v.staticContentUrl?.toBuilder();
      _treeData = _$v.treeData?.toBuilder();
      _undoInfo = _$v.undoInfo?.toBuilder();
      _variableList = _$v.variableList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenericObjectLayout other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GenericObjectLayout;
  }

  @override
  void update(void updates(GenericObjectLayoutBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GenericObjectLayout build() {
    _$GenericObjectLayout _$result;
    try {
      _$result = _$v ??
          new _$GenericObjectLayout._(
              info: _info?.build(),
              meta: _meta?.build(),
              extendsId: extendsId,
              hasSoftPatches: hasSoftPatches,
              error: _error?.build(),
              selectionInfo: _selectionInfo?.build(),
              appObjectList: _appObjectList?.build(),
              bookmarkList: _bookmarkList?.build(),
              childList: _childList?.build(),
              dimensionList: _dimensionList?.build(),
              embeddedSnapshot: embeddedSnapshot,
              extensionList: _extensionList?.build(),
              fieldList: _fieldList?.build(),
              hyperCube: _hyperCube?.build(),
              listObject: _listObject?.build(),
              measureList: _measureList?.build(),
              mediaList: _mediaList?.build(),
              nxLibraryDimension: _nxLibraryDimension?.build(),
              nxLibraryMeasure: _nxLibraryMeasure?.build(),
              selectionObject: _selectionObject?.build(),
              staticContentUrl: _staticContentUrl?.build(),
              treeData: _treeData?.build(),
              undoInfo: _undoInfo?.build(),
              variableList: _variableList?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
        _$failedField = 'meta';
        _meta?.build();

        _$failedField = 'error';
        _error?.build();
        _$failedField = 'selectionInfo';
        _selectionInfo?.build();
        _$failedField = 'appObjectList';
        _appObjectList?.build();
        _$failedField = 'bookmarkList';
        _bookmarkList?.build();
        _$failedField = 'childList';
        _childList?.build();
        _$failedField = 'dimensionList';
        _dimensionList?.build();

        _$failedField = 'extensionList';
        _extensionList?.build();
        _$failedField = 'fieldList';
        _fieldList?.build();
        _$failedField = 'hyperCube';
        _hyperCube?.build();
        _$failedField = 'listObject';
        _listObject?.build();
        _$failedField = 'measureList';
        _measureList?.build();
        _$failedField = 'mediaList';
        _mediaList?.build();
        _$failedField = 'nxLibraryDimension';
        _nxLibraryDimension?.build();
        _$failedField = 'nxLibraryMeasure';
        _nxLibraryMeasure?.build();
        _$failedField = 'selectionObject';
        _selectionObject?.build();
        _$failedField = 'staticContentUrl';
        _staticContentUrl?.build();
        _$failedField = 'treeData';
        _treeData?.build();
        _$failedField = 'undoInfo';
        _undoInfo?.build();
        _$failedField = 'variableList';
        _variableList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenericObjectLayout', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
