// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_object_properties;

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

Serializer<GenericObjectProperties> _$genericObjectPropertiesSerializer =
    new _$GenericObjectPropertiesSerializer();

class _$GenericObjectPropertiesSerializer
    implements StructuredSerializer<GenericObjectProperties> {
  @override
  final Iterable<Type> types = const [
    GenericObjectProperties,
    _$GenericObjectProperties
  ];
  @override
  final String wireName = 'GenericObjectProperties';

  @override
  Iterable serialize(Serializers serializers, GenericObjectProperties object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.info != null) {
      result
        ..add('qInfo')
        ..add(serializers.serialize(object.info,
            specifiedType: const FullType(NxInfo)));
    }
    if (object.extendsId != null) {
      result
        ..add('qExtendsId')
        ..add(serializers.serialize(object.extendsId,
            specifiedType: const FullType(String)));
    }
    if (object.metaDef != null) {
      result
        ..add('qMetaDef')
        ..add(serializers.serialize(object.metaDef,
            specifiedType: const FullType(JsonObject)));
    }
    if (object.appObjectListDef != null) {
      result
        ..add('qAppObjectListDef')
        ..add(serializers.serialize(object.appObjectListDef,
            specifiedType: const FullType(AppObjectListDef)));
    }
    if (object.bookmarkListDef != null) {
      result
        ..add('qBookmarkListDef')
        ..add(serializers.serialize(object.bookmarkListDef,
            specifiedType: const FullType(BookmarkListDef)));
    }
    if (object.childListDef != null) {
      result
        ..add('qChildListDef')
        ..add(serializers.serialize(object.childListDef,
            specifiedType: const FullType(ChildListDef)));
    }
    if (object.dimensionListDef != null) {
      result
        ..add('qDimensionListDef')
        ..add(serializers.serialize(object.dimensionListDef,
            specifiedType: const FullType(DimensionListDef)));
    }
    if (object.embeddedSnapshotDef != null) {
      result
        ..add('qEmbeddedSnapshotDef')
        ..add(serializers.serialize(object.embeddedSnapshotDef,
            specifiedType: const FullType(JsonObject)));
    }
    if (object.extensionListDef != null) {
      result
        ..add('qExtensionListDef')
        ..add(serializers.serialize(object.extensionListDef,
            specifiedType: const FullType(JsonObject)));
    }
    if (object.fieldListDef != null) {
      result
        ..add('qFieldListDef')
        ..add(serializers.serialize(object.fieldListDef,
            specifiedType: const FullType(FieldListDef)));
    }
    if (object.hyperCubeDef != null) {
      result
        ..add('qHyperCubeDef')
        ..add(serializers.serialize(object.hyperCubeDef,
            specifiedType: const FullType(HyperCubeDef)));
    }
    if (object.layoutExclude != null) {
      result
        ..add('qLayoutExclude')
        ..add(serializers.serialize(object.layoutExclude,
            specifiedType: const FullType(JsonObject)));
    }
    if (object.listObjectDef != null) {
      result
        ..add('qListObjectDef')
        ..add(serializers.serialize(object.listObjectDef,
            specifiedType: const FullType(ListObjectDef)));
    }
    if (object.measureListDef != null) {
      result
        ..add('qMeasureListDef')
        ..add(serializers.serialize(object.measureListDef,
            specifiedType: const FullType(MeasureListDef)));
    }
    if (object.mediaListDef != null) {
      result
        ..add('qMediaListDef')
        ..add(serializers.serialize(object.mediaListDef,
            specifiedType: const FullType(JsonObject)));
    }
    if (object.nxLibraryDimensionDef != null) {
      result
        ..add('qNxLibraryDimensionDef')
        ..add(serializers.serialize(object.nxLibraryDimensionDef,
            specifiedType: const FullType(NxLibraryDimensionDef)));
    }
    if (object.nxLibraryMeasureDef != null) {
      result
        ..add('qNxLibraryMeasureDef')
        ..add(serializers.serialize(object.nxLibraryMeasureDef,
            specifiedType: const FullType(NxLibraryMeasureDef)));
    }
    if (object.selectionObjectDef != null) {
      result
        ..add('qSelectionObjectDef')
        ..add(serializers.serialize(object.selectionObjectDef,
            specifiedType: const FullType(SelectionObjectDef)));
    }
    if (object.staticContentUrlDef != null) {
      result
        ..add('qStaticContentUrlDef')
        ..add(serializers.serialize(object.staticContentUrlDef,
            specifiedType: const FullType(StaticContentUrlDef)));
    }
    if (object.stringExpression != null) {
      result
        ..add('qStringExpression')
        ..add(serializers.serialize(object.stringExpression,
            specifiedType: const FullType(StringExpression)));
    }
    if (object.treeDataDef != null) {
      result
        ..add('qTreeDataDef')
        ..add(serializers.serialize(object.treeDataDef,
            specifiedType: const FullType(TreeDataDef)));
    }
    if (object.undoInfoDef != null) {
      result
        ..add('qUndoInfoDef')
        ..add(serializers.serialize(object.undoInfoDef,
            specifiedType: const FullType(JsonObject)));
    }
    if (object.valueExpression != null) {
      result
        ..add('qValueExpression')
        ..add(serializers.serialize(object.valueExpression,
            specifiedType: const FullType(ValueExpression)));
    }
    if (object.variableListDef != null) {
      result
        ..add('qVariableListDef')
        ..add(serializers.serialize(object.variableListDef,
            specifiedType: const FullType(VariableListDef)));
    }

    return result;
  }

  @override
  GenericObjectProperties deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenericObjectPropertiesBuilder();

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
        case 'qExtendsId':
          result.extendsId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qMetaDef':
          result.metaDef = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
        case 'qAppObjectListDef':
          result.appObjectListDef.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AppObjectListDef))
              as AppObjectListDef);
          break;
        case 'qBookmarkListDef':
          result.bookmarkListDef.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BookmarkListDef))
              as BookmarkListDef);
          break;
        case 'qChildListDef':
          result.childListDef.replace(serializers.deserialize(value,
              specifiedType: const FullType(ChildListDef)) as ChildListDef);
          break;
        case 'qDimensionListDef':
          result.dimensionListDef.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DimensionListDef))
              as DimensionListDef);
          break;
        case 'qEmbeddedSnapshotDef':
          result.embeddedSnapshotDef = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
        case 'qExtensionListDef':
          result.extensionListDef = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
        case 'qFieldListDef':
          result.fieldListDef.replace(serializers.deserialize(value,
              specifiedType: const FullType(FieldListDef)) as FieldListDef);
          break;
        case 'qHyperCubeDef':
          result.hyperCubeDef.replace(serializers.deserialize(value,
              specifiedType: const FullType(HyperCubeDef)) as HyperCubeDef);
          break;
        case 'qLayoutExclude':
          result.layoutExclude = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
        case 'qListObjectDef':
          result.listObjectDef.replace(serializers.deserialize(value,
              specifiedType: const FullType(ListObjectDef)) as ListObjectDef);
          break;
        case 'qMeasureListDef':
          result.measureListDef.replace(serializers.deserialize(value,
              specifiedType: const FullType(MeasureListDef)) as MeasureListDef);
          break;
        case 'qMediaListDef':
          result.mediaListDef = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
        case 'qNxLibraryDimensionDef':
          result.nxLibraryDimensionDef.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxLibraryDimensionDef))
              as NxLibraryDimensionDef);
          break;
        case 'qNxLibraryMeasureDef':
          result.nxLibraryMeasureDef.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxLibraryMeasureDef))
              as NxLibraryMeasureDef);
          break;
        case 'qSelectionObjectDef':
          result.selectionObjectDef.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SelectionObjectDef))
              as SelectionObjectDef);
          break;
        case 'qStaticContentUrlDef':
          result.staticContentUrlDef.replace(serializers.deserialize(value,
                  specifiedType: const FullType(StaticContentUrlDef))
              as StaticContentUrlDef);
          break;
        case 'qStringExpression':
          result.stringExpression.replace(serializers.deserialize(value,
                  specifiedType: const FullType(StringExpression))
              as StringExpression);
          break;
        case 'qTreeDataDef':
          result.treeDataDef.replace(serializers.deserialize(value,
              specifiedType: const FullType(TreeDataDef)) as TreeDataDef);
          break;
        case 'qUndoInfoDef':
          result.undoInfoDef = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
        case 'qValueExpression':
          result.valueExpression.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ValueExpression))
              as ValueExpression);
          break;
        case 'qVariableListDef':
          result.variableListDef.replace(serializers.deserialize(value,
                  specifiedType: const FullType(VariableListDef))
              as VariableListDef);
          break;
      }
    }

    return result.build();
  }
}

class _$GenericObjectProperties extends GenericObjectProperties {
  @override
  final NxInfo info;
  @override
  final String extendsId;
  @override
  final JsonObject metaDef;
  @override
  final AppObjectListDef appObjectListDef;
  @override
  final BookmarkListDef bookmarkListDef;
  @override
  final ChildListDef childListDef;
  @override
  final DimensionListDef dimensionListDef;
  @override
  final JsonObject embeddedSnapshotDef;
  @override
  final JsonObject extensionListDef;
  @override
  final FieldListDef fieldListDef;
  @override
  final HyperCubeDef hyperCubeDef;
  @override
  final JsonObject layoutExclude;
  @override
  final ListObjectDef listObjectDef;
  @override
  final MeasureListDef measureListDef;
  @override
  final JsonObject mediaListDef;
  @override
  final NxLibraryDimensionDef nxLibraryDimensionDef;
  @override
  final NxLibraryMeasureDef nxLibraryMeasureDef;
  @override
  final SelectionObjectDef selectionObjectDef;
  @override
  final StaticContentUrlDef staticContentUrlDef;
  @override
  final StringExpression stringExpression;
  @override
  final TreeDataDef treeDataDef;
  @override
  final JsonObject undoInfoDef;
  @override
  final ValueExpression valueExpression;
  @override
  final VariableListDef variableListDef;

  factory _$GenericObjectProperties(
          [void updates(GenericObjectPropertiesBuilder b)]) =>
      (new GenericObjectPropertiesBuilder()..update(updates)).build();

  _$GenericObjectProperties._(
      {this.info,
      this.extendsId,
      this.metaDef,
      this.appObjectListDef,
      this.bookmarkListDef,
      this.childListDef,
      this.dimensionListDef,
      this.embeddedSnapshotDef,
      this.extensionListDef,
      this.fieldListDef,
      this.hyperCubeDef,
      this.layoutExclude,
      this.listObjectDef,
      this.measureListDef,
      this.mediaListDef,
      this.nxLibraryDimensionDef,
      this.nxLibraryMeasureDef,
      this.selectionObjectDef,
      this.staticContentUrlDef,
      this.stringExpression,
      this.treeDataDef,
      this.undoInfoDef,
      this.valueExpression,
      this.variableListDef})
      : super._();

  @override
  GenericObjectProperties rebuild(
          void updates(GenericObjectPropertiesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GenericObjectPropertiesBuilder toBuilder() =>
      new GenericObjectPropertiesBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GenericObjectProperties) return false;
    return info == other.info &&
        extendsId == other.extendsId &&
        metaDef == other.metaDef &&
        appObjectListDef == other.appObjectListDef &&
        bookmarkListDef == other.bookmarkListDef &&
        childListDef == other.childListDef &&
        dimensionListDef == other.dimensionListDef &&
        embeddedSnapshotDef == other.embeddedSnapshotDef &&
        extensionListDef == other.extensionListDef &&
        fieldListDef == other.fieldListDef &&
        hyperCubeDef == other.hyperCubeDef &&
        layoutExclude == other.layoutExclude &&
        listObjectDef == other.listObjectDef &&
        measureListDef == other.measureListDef &&
        mediaListDef == other.mediaListDef &&
        nxLibraryDimensionDef == other.nxLibraryDimensionDef &&
        nxLibraryMeasureDef == other.nxLibraryMeasureDef &&
        selectionObjectDef == other.selectionObjectDef &&
        staticContentUrlDef == other.staticContentUrlDef &&
        stringExpression == other.stringExpression &&
        treeDataDef == other.treeDataDef &&
        undoInfoDef == other.undoInfoDef &&
        valueExpression == other.valueExpression &&
        variableListDef == other.variableListDef;
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
                                                                            $jc($jc($jc($jc($jc($jc(0, info.hashCode), extendsId.hashCode), metaDef.hashCode), appObjectListDef.hashCode), bookmarkListDef.hashCode),
                                                                                childListDef.hashCode),
                                                                            dimensionListDef.hashCode),
                                                                        embeddedSnapshotDef.hashCode),
                                                                    extensionListDef.hashCode),
                                                                fieldListDef.hashCode),
                                                            hyperCubeDef.hashCode),
                                                        layoutExclude.hashCode),
                                                    listObjectDef.hashCode),
                                                measureListDef.hashCode),
                                            mediaListDef.hashCode),
                                        nxLibraryDimensionDef.hashCode),
                                    nxLibraryMeasureDef.hashCode),
                                selectionObjectDef.hashCode),
                            staticContentUrlDef.hashCode),
                        stringExpression.hashCode),
                    treeDataDef.hashCode),
                undoInfoDef.hashCode),
            valueExpression.hashCode),
        variableListDef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenericObjectProperties')
          ..add('info', info)
          ..add('extendsId', extendsId)
          ..add('metaDef', metaDef)
          ..add('appObjectListDef', appObjectListDef)
          ..add('bookmarkListDef', bookmarkListDef)
          ..add('childListDef', childListDef)
          ..add('dimensionListDef', dimensionListDef)
          ..add('embeddedSnapshotDef', embeddedSnapshotDef)
          ..add('extensionListDef', extensionListDef)
          ..add('fieldListDef', fieldListDef)
          ..add('hyperCubeDef', hyperCubeDef)
          ..add('layoutExclude', layoutExclude)
          ..add('listObjectDef', listObjectDef)
          ..add('measureListDef', measureListDef)
          ..add('mediaListDef', mediaListDef)
          ..add('nxLibraryDimensionDef', nxLibraryDimensionDef)
          ..add('nxLibraryMeasureDef', nxLibraryMeasureDef)
          ..add('selectionObjectDef', selectionObjectDef)
          ..add('staticContentUrlDef', staticContentUrlDef)
          ..add('stringExpression', stringExpression)
          ..add('treeDataDef', treeDataDef)
          ..add('undoInfoDef', undoInfoDef)
          ..add('valueExpression', valueExpression)
          ..add('variableListDef', variableListDef))
        .toString();
  }
}

class GenericObjectPropertiesBuilder
    implements
        Builder<GenericObjectProperties, GenericObjectPropertiesBuilder> {
  _$GenericObjectProperties _$v;

  NxInfoBuilder _info;
  NxInfoBuilder get info => _$this._info ??= new NxInfoBuilder();
  set info(NxInfoBuilder info) => _$this._info = info;

  String _extendsId;
  String get extendsId => _$this._extendsId;
  set extendsId(String extendsId) => _$this._extendsId = extendsId;

  JsonObject _metaDef;
  JsonObject get metaDef => _$this._metaDef;
  set metaDef(JsonObject metaDef) => _$this._metaDef = metaDef;

  AppObjectListDefBuilder _appObjectListDef;
  AppObjectListDefBuilder get appObjectListDef =>
      _$this._appObjectListDef ??= new AppObjectListDefBuilder();
  set appObjectListDef(AppObjectListDefBuilder appObjectListDef) =>
      _$this._appObjectListDef = appObjectListDef;

  BookmarkListDefBuilder _bookmarkListDef;
  BookmarkListDefBuilder get bookmarkListDef =>
      _$this._bookmarkListDef ??= new BookmarkListDefBuilder();
  set bookmarkListDef(BookmarkListDefBuilder bookmarkListDef) =>
      _$this._bookmarkListDef = bookmarkListDef;

  ChildListDefBuilder _childListDef;
  ChildListDefBuilder get childListDef =>
      _$this._childListDef ??= new ChildListDefBuilder();
  set childListDef(ChildListDefBuilder childListDef) =>
      _$this._childListDef = childListDef;

  DimensionListDefBuilder _dimensionListDef;
  DimensionListDefBuilder get dimensionListDef =>
      _$this._dimensionListDef ??= new DimensionListDefBuilder();
  set dimensionListDef(DimensionListDefBuilder dimensionListDef) =>
      _$this._dimensionListDef = dimensionListDef;

  JsonObject _embeddedSnapshotDef;
  JsonObject get embeddedSnapshotDef => _$this._embeddedSnapshotDef;
  set embeddedSnapshotDef(JsonObject embeddedSnapshotDef) =>
      _$this._embeddedSnapshotDef = embeddedSnapshotDef;

  JsonObject _extensionListDef;
  JsonObject get extensionListDef => _$this._extensionListDef;
  set extensionListDef(JsonObject extensionListDef) =>
      _$this._extensionListDef = extensionListDef;

  FieldListDefBuilder _fieldListDef;
  FieldListDefBuilder get fieldListDef =>
      _$this._fieldListDef ??= new FieldListDefBuilder();
  set fieldListDef(FieldListDefBuilder fieldListDef) =>
      _$this._fieldListDef = fieldListDef;

  HyperCubeDefBuilder _hyperCubeDef;
  HyperCubeDefBuilder get hyperCubeDef =>
      _$this._hyperCubeDef ??= new HyperCubeDefBuilder();
  set hyperCubeDef(HyperCubeDefBuilder hyperCubeDef) =>
      _$this._hyperCubeDef = hyperCubeDef;

  JsonObject _layoutExclude;
  JsonObject get layoutExclude => _$this._layoutExclude;
  set layoutExclude(JsonObject layoutExclude) =>
      _$this._layoutExclude = layoutExclude;

  ListObjectDefBuilder _listObjectDef;
  ListObjectDefBuilder get listObjectDef =>
      _$this._listObjectDef ??= new ListObjectDefBuilder();
  set listObjectDef(ListObjectDefBuilder listObjectDef) =>
      _$this._listObjectDef = listObjectDef;

  MeasureListDefBuilder _measureListDef;
  MeasureListDefBuilder get measureListDef =>
      _$this._measureListDef ??= new MeasureListDefBuilder();
  set measureListDef(MeasureListDefBuilder measureListDef) =>
      _$this._measureListDef = measureListDef;

  JsonObject _mediaListDef;
  JsonObject get mediaListDef => _$this._mediaListDef;
  set mediaListDef(JsonObject mediaListDef) =>
      _$this._mediaListDef = mediaListDef;

  NxLibraryDimensionDefBuilder _nxLibraryDimensionDef;
  NxLibraryDimensionDefBuilder get nxLibraryDimensionDef =>
      _$this._nxLibraryDimensionDef ??= new NxLibraryDimensionDefBuilder();
  set nxLibraryDimensionDef(
          NxLibraryDimensionDefBuilder nxLibraryDimensionDef) =>
      _$this._nxLibraryDimensionDef = nxLibraryDimensionDef;

  NxLibraryMeasureDefBuilder _nxLibraryMeasureDef;
  NxLibraryMeasureDefBuilder get nxLibraryMeasureDef =>
      _$this._nxLibraryMeasureDef ??= new NxLibraryMeasureDefBuilder();
  set nxLibraryMeasureDef(NxLibraryMeasureDefBuilder nxLibraryMeasureDef) =>
      _$this._nxLibraryMeasureDef = nxLibraryMeasureDef;

  SelectionObjectDefBuilder _selectionObjectDef;
  SelectionObjectDefBuilder get selectionObjectDef =>
      _$this._selectionObjectDef ??= new SelectionObjectDefBuilder();
  set selectionObjectDef(SelectionObjectDefBuilder selectionObjectDef) =>
      _$this._selectionObjectDef = selectionObjectDef;

  StaticContentUrlDefBuilder _staticContentUrlDef;
  StaticContentUrlDefBuilder get staticContentUrlDef =>
      _$this._staticContentUrlDef ??= new StaticContentUrlDefBuilder();
  set staticContentUrlDef(StaticContentUrlDefBuilder staticContentUrlDef) =>
      _$this._staticContentUrlDef = staticContentUrlDef;

  StringExpressionBuilder _stringExpression;
  StringExpressionBuilder get stringExpression =>
      _$this._stringExpression ??= new StringExpressionBuilder();
  set stringExpression(StringExpressionBuilder stringExpression) =>
      _$this._stringExpression = stringExpression;

  TreeDataDefBuilder _treeDataDef;
  TreeDataDefBuilder get treeDataDef =>
      _$this._treeDataDef ??= new TreeDataDefBuilder();
  set treeDataDef(TreeDataDefBuilder treeDataDef) =>
      _$this._treeDataDef = treeDataDef;

  JsonObject _undoInfoDef;
  JsonObject get undoInfoDef => _$this._undoInfoDef;
  set undoInfoDef(JsonObject undoInfoDef) => _$this._undoInfoDef = undoInfoDef;

  ValueExpressionBuilder _valueExpression;
  ValueExpressionBuilder get valueExpression =>
      _$this._valueExpression ??= new ValueExpressionBuilder();
  set valueExpression(ValueExpressionBuilder valueExpression) =>
      _$this._valueExpression = valueExpression;

  VariableListDefBuilder _variableListDef;
  VariableListDefBuilder get variableListDef =>
      _$this._variableListDef ??= new VariableListDefBuilder();
  set variableListDef(VariableListDefBuilder variableListDef) =>
      _$this._variableListDef = variableListDef;

  GenericObjectPropertiesBuilder();

  GenericObjectPropertiesBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _extendsId = _$v.extendsId;
      _metaDef = _$v.metaDef;
      _appObjectListDef = _$v.appObjectListDef?.toBuilder();
      _bookmarkListDef = _$v.bookmarkListDef?.toBuilder();
      _childListDef = _$v.childListDef?.toBuilder();
      _dimensionListDef = _$v.dimensionListDef?.toBuilder();
      _embeddedSnapshotDef = _$v.embeddedSnapshotDef;
      _extensionListDef = _$v.extensionListDef;
      _fieldListDef = _$v.fieldListDef?.toBuilder();
      _hyperCubeDef = _$v.hyperCubeDef?.toBuilder();
      _layoutExclude = _$v.layoutExclude;
      _listObjectDef = _$v.listObjectDef?.toBuilder();
      _measureListDef = _$v.measureListDef?.toBuilder();
      _mediaListDef = _$v.mediaListDef;
      _nxLibraryDimensionDef = _$v.nxLibraryDimensionDef?.toBuilder();
      _nxLibraryMeasureDef = _$v.nxLibraryMeasureDef?.toBuilder();
      _selectionObjectDef = _$v.selectionObjectDef?.toBuilder();
      _staticContentUrlDef = _$v.staticContentUrlDef?.toBuilder();
      _stringExpression = _$v.stringExpression?.toBuilder();
      _treeDataDef = _$v.treeDataDef?.toBuilder();
      _undoInfoDef = _$v.undoInfoDef;
      _valueExpression = _$v.valueExpression?.toBuilder();
      _variableListDef = _$v.variableListDef?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenericObjectProperties other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GenericObjectProperties;
  }

  @override
  void update(void updates(GenericObjectPropertiesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GenericObjectProperties build() {
    _$GenericObjectProperties _$result;
    try {
      _$result = _$v ??
          new _$GenericObjectProperties._(
              info: _info?.build(),
              extendsId: extendsId,
              metaDef: metaDef,
              appObjectListDef: _appObjectListDef?.build(),
              bookmarkListDef: _bookmarkListDef?.build(),
              childListDef: _childListDef?.build(),
              dimensionListDef: _dimensionListDef?.build(),
              embeddedSnapshotDef: embeddedSnapshotDef,
              extensionListDef: extensionListDef,
              fieldListDef: _fieldListDef?.build(),
              hyperCubeDef: _hyperCubeDef?.build(),
              layoutExclude: layoutExclude,
              listObjectDef: _listObjectDef?.build(),
              measureListDef: _measureListDef?.build(),
              mediaListDef: mediaListDef,
              nxLibraryDimensionDef: _nxLibraryDimensionDef?.build(),
              nxLibraryMeasureDef: _nxLibraryMeasureDef?.build(),
              selectionObjectDef: _selectionObjectDef?.build(),
              staticContentUrlDef: _staticContentUrlDef?.build(),
              stringExpression: _stringExpression?.build(),
              treeDataDef: _treeDataDef?.build(),
              undoInfoDef: undoInfoDef,
              valueExpression: _valueExpression?.build(),
              variableListDef: _variableListDef?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();

        _$failedField = 'appObjectListDef';
        _appObjectListDef?.build();
        _$failedField = 'bookmarkListDef';
        _bookmarkListDef?.build();
        _$failedField = 'childListDef';
        _childListDef?.build();
        _$failedField = 'dimensionListDef';
        _dimensionListDef?.build();

        _$failedField = 'fieldListDef';
        _fieldListDef?.build();
        _$failedField = 'hyperCubeDef';
        _hyperCubeDef?.build();

        _$failedField = 'listObjectDef';
        _listObjectDef?.build();
        _$failedField = 'measureListDef';
        _measureListDef?.build();

        _$failedField = 'nxLibraryDimensionDef';
        _nxLibraryDimensionDef?.build();
        _$failedField = 'nxLibraryMeasureDef';
        _nxLibraryMeasureDef?.build();
        _$failedField = 'selectionObjectDef';
        _selectionObjectDef?.build();
        _$failedField = 'staticContentUrlDef';
        _staticContentUrlDef?.build();
        _$failedField = 'stringExpression';
        _stringExpression?.build();
        _$failedField = 'treeDataDef';
        _treeDataDef?.build();

        _$failedField = 'valueExpression';
        _valueExpression?.build();
        _$failedField = 'variableListDef';
        _variableListDef?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenericObjectProperties', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
