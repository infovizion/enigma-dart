// GENERATED CODE - DO NOT MODIFY BY HAND

part of field_in_table_data;

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

Serializer<FieldInTableData> _$fieldInTableDataSerializer =
    new _$FieldInTableDataSerializer();

class _$FieldInTableDataSerializer
    implements StructuredSerializer<FieldInTableData> {
  @override
  final Iterable<Type> types = const [FieldInTableData, _$FieldInTableData];
  @override
  final String wireName = 'FieldInTableData';

  @override
  Iterable serialize(Serializers serializers, FieldInTableData object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.originalFields != null) {
      result
        ..add('qOriginalFields')
        ..add(serializers.serialize(object.originalFields,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.present != null) {
      result
        ..add('qPresent')
        ..add(serializers.serialize(object.present,
            specifiedType: const FullType(bool)));
    }
    if (object.hasNull != null) {
      result
        ..add('qHasNull')
        ..add(serializers.serialize(object.hasNull,
            specifiedType: const FullType(bool)));
    }
    if (object.hasWild != null) {
      result
        ..add('qHasWild')
        ..add(serializers.serialize(object.hasWild,
            specifiedType: const FullType(bool)));
    }
    if (object.hasDuplicates != null) {
      result
        ..add('qHasDuplicates')
        ..add(serializers.serialize(object.hasDuplicates,
            specifiedType: const FullType(bool)));
    }
    if (object.isSynthetic != null) {
      result
        ..add('qIsSynthetic')
        ..add(serializers.serialize(object.isSynthetic,
            specifiedType: const FullType(bool)));
    }
    if (object.informationDensity != null) {
      result
        ..add('qInformationDensity')
        ..add(serializers.serialize(object.informationDensity,
            specifiedType: const FullType(num)));
    }
    if (object.nNonNulls != null) {
      result
        ..add('qnNonNulls')
        ..add(serializers.serialize(object.nNonNulls,
            specifiedType: const FullType(int)));
    }
    if (object.nRows != null) {
      result
        ..add('qnRows')
        ..add(serializers.serialize(object.nRows,
            specifiedType: const FullType(int)));
    }
    if (object.subsetRatio != null) {
      result
        ..add('qSubsetRatio')
        ..add(serializers.serialize(object.subsetRatio,
            specifiedType: const FullType(num)));
    }
    if (object.nTotalDistinctValues != null) {
      result
        ..add('qnTotalDistinctValues')
        ..add(serializers.serialize(object.nTotalDistinctValues,
            specifiedType: const FullType(int)));
    }
    if (object.nPresentDistinctValues != null) {
      result
        ..add('qnPresentDistinctValues')
        ..add(serializers.serialize(object.nPresentDistinctValues,
            specifiedType: const FullType(int)));
    }
    if (object.keyType != null) {
      result
        ..add('qKeyType')
        ..add(serializers.serialize(object.keyType,
            specifiedType: const FullType(String)));
    }
    if (object.comment != null) {
      result
        ..add('qComment')
        ..add(serializers.serialize(object.comment,
            specifiedType: const FullType(String)));
    }
    if (object.tags != null) {
      result
        ..add('qTags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.derivedFields != null) {
      result
        ..add('qDerivedFields')
        ..add(serializers.serialize(object.derivedFields,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.isFieldOnTheFly != null) {
      result
        ..add('qIsFieldOnTheFly')
        ..add(serializers.serialize(object.isFieldOnTheFly,
            specifiedType: const FullType(bool)));
    }
    if (object.readableName != null) {
      result
        ..add('qReadableName')
        ..add(serializers.serialize(object.readableName,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  FieldInTableData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FieldInTableDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qName':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qOriginalFields':
          result.originalFields.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qPresent':
          result.present = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qHasNull':
          result.hasNull = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qHasWild':
          result.hasWild = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qHasDuplicates':
          result.hasDuplicates = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qIsSynthetic':
          result.isSynthetic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qInformationDensity':
          result.informationDensity = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'qnNonNulls':
          result.nNonNulls = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qnRows':
          result.nRows = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qSubsetRatio':
          result.subsetRatio = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'qnTotalDistinctValues':
          result.nTotalDistinctValues = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qnPresentDistinctValues':
          result.nPresentDistinctValues = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qKeyType':
          result.keyType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qComment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qTags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qDerivedFields':
          result.derivedFields.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qIsFieldOnTheFly':
          result.isFieldOnTheFly = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qReadableName':
          result.readableName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FieldInTableData extends FieldInTableData {
  @override
  final String name;
  @override
  final BuiltList<NxCell> originalFields;
  @override
  final bool present;
  @override
  final bool hasNull;
  @override
  final bool hasWild;
  @override
  final bool hasDuplicates;
  @override
  final bool isSynthetic;
  @override
  final num informationDensity;
  @override
  final int nNonNulls;
  @override
  final int nRows;
  @override
  final num subsetRatio;
  @override
  final int nTotalDistinctValues;
  @override
  final int nPresentDistinctValues;
  @override
  final String keyType;
  @override
  final String comment;
  @override
  final BuiltList<NxCell> tags;
  @override
  final BuiltList<NxCell> derivedFields;
  @override
  final bool isFieldOnTheFly;
  @override
  final String readableName;

  factory _$FieldInTableData([void updates(FieldInTableDataBuilder b)]) =>
      (new FieldInTableDataBuilder()..update(updates)).build();

  _$FieldInTableData._(
      {this.name,
      this.originalFields,
      this.present,
      this.hasNull,
      this.hasWild,
      this.hasDuplicates,
      this.isSynthetic,
      this.informationDensity,
      this.nNonNulls,
      this.nRows,
      this.subsetRatio,
      this.nTotalDistinctValues,
      this.nPresentDistinctValues,
      this.keyType,
      this.comment,
      this.tags,
      this.derivedFields,
      this.isFieldOnTheFly,
      this.readableName})
      : super._();

  @override
  FieldInTableData rebuild(void updates(FieldInTableDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldInTableDataBuilder toBuilder() =>
      new FieldInTableDataBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FieldInTableData) return false;
    return name == other.name &&
        originalFields == other.originalFields &&
        present == other.present &&
        hasNull == other.hasNull &&
        hasWild == other.hasWild &&
        hasDuplicates == other.hasDuplicates &&
        isSynthetic == other.isSynthetic &&
        informationDensity == other.informationDensity &&
        nNonNulls == other.nNonNulls &&
        nRows == other.nRows &&
        subsetRatio == other.subsetRatio &&
        nTotalDistinctValues == other.nTotalDistinctValues &&
        nPresentDistinctValues == other.nPresentDistinctValues &&
        keyType == other.keyType &&
        comment == other.comment &&
        tags == other.tags &&
        derivedFields == other.derivedFields &&
        isFieldOnTheFly == other.isFieldOnTheFly &&
        readableName == other.readableName;
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
                                                                            $jc(
                                                                                0,
                                                                                name
                                                                                    .hashCode),
                                                                            originalFields
                                                                                .hashCode),
                                                                        present
                                                                            .hashCode),
                                                                    hasNull
                                                                        .hashCode),
                                                                hasWild
                                                                    .hashCode),
                                                            hasDuplicates
                                                                .hashCode),
                                                        isSynthetic.hashCode),
                                                    informationDensity
                                                        .hashCode),
                                                nNonNulls.hashCode),
                                            nRows.hashCode),
                                        subsetRatio.hashCode),
                                    nTotalDistinctValues.hashCode),
                                nPresentDistinctValues.hashCode),
                            keyType.hashCode),
                        comment.hashCode),
                    tags.hashCode),
                derivedFields.hashCode),
            isFieldOnTheFly.hashCode),
        readableName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FieldInTableData')
          ..add('name', name)
          ..add('originalFields', originalFields)
          ..add('present', present)
          ..add('hasNull', hasNull)
          ..add('hasWild', hasWild)
          ..add('hasDuplicates', hasDuplicates)
          ..add('isSynthetic', isSynthetic)
          ..add('informationDensity', informationDensity)
          ..add('nNonNulls', nNonNulls)
          ..add('nRows', nRows)
          ..add('subsetRatio', subsetRatio)
          ..add('nTotalDistinctValues', nTotalDistinctValues)
          ..add('nPresentDistinctValues', nPresentDistinctValues)
          ..add('keyType', keyType)
          ..add('comment', comment)
          ..add('tags', tags)
          ..add('derivedFields', derivedFields)
          ..add('isFieldOnTheFly', isFieldOnTheFly)
          ..add('readableName', readableName))
        .toString();
  }
}

class FieldInTableDataBuilder
    implements Builder<FieldInTableData, FieldInTableDataBuilder> {
  _$FieldInTableData _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<NxCell> _originalFields;
  ListBuilder<NxCell> get originalFields =>
      _$this._originalFields ??= new ListBuilder<NxCell>();
  set originalFields(ListBuilder<NxCell> originalFields) =>
      _$this._originalFields = originalFields;

  bool _present;
  bool get present => _$this._present;
  set present(bool present) => _$this._present = present;

  bool _hasNull;
  bool get hasNull => _$this._hasNull;
  set hasNull(bool hasNull) => _$this._hasNull = hasNull;

  bool _hasWild;
  bool get hasWild => _$this._hasWild;
  set hasWild(bool hasWild) => _$this._hasWild = hasWild;

  bool _hasDuplicates;
  bool get hasDuplicates => _$this._hasDuplicates;
  set hasDuplicates(bool hasDuplicates) =>
      _$this._hasDuplicates = hasDuplicates;

  bool _isSynthetic;
  bool get isSynthetic => _$this._isSynthetic;
  set isSynthetic(bool isSynthetic) => _$this._isSynthetic = isSynthetic;

  num _informationDensity;
  num get informationDensity => _$this._informationDensity;
  set informationDensity(num informationDensity) =>
      _$this._informationDensity = informationDensity;

  int _nNonNulls;
  int get nNonNulls => _$this._nNonNulls;
  set nNonNulls(int nNonNulls) => _$this._nNonNulls = nNonNulls;

  int _nRows;
  int get nRows => _$this._nRows;
  set nRows(int nRows) => _$this._nRows = nRows;

  num _subsetRatio;
  num get subsetRatio => _$this._subsetRatio;
  set subsetRatio(num subsetRatio) => _$this._subsetRatio = subsetRatio;

  int _nTotalDistinctValues;
  int get nTotalDistinctValues => _$this._nTotalDistinctValues;
  set nTotalDistinctValues(int nTotalDistinctValues) =>
      _$this._nTotalDistinctValues = nTotalDistinctValues;

  int _nPresentDistinctValues;
  int get nPresentDistinctValues => _$this._nPresentDistinctValues;
  set nPresentDistinctValues(int nPresentDistinctValues) =>
      _$this._nPresentDistinctValues = nPresentDistinctValues;

  String _keyType;
  String get keyType => _$this._keyType;
  set keyType(String keyType) => _$this._keyType = keyType;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  ListBuilder<NxCell> _tags;
  ListBuilder<NxCell> get tags => _$this._tags ??= new ListBuilder<NxCell>();
  set tags(ListBuilder<NxCell> tags) => _$this._tags = tags;

  ListBuilder<NxCell> _derivedFields;
  ListBuilder<NxCell> get derivedFields =>
      _$this._derivedFields ??= new ListBuilder<NxCell>();
  set derivedFields(ListBuilder<NxCell> derivedFields) =>
      _$this._derivedFields = derivedFields;

  bool _isFieldOnTheFly;
  bool get isFieldOnTheFly => _$this._isFieldOnTheFly;
  set isFieldOnTheFly(bool isFieldOnTheFly) =>
      _$this._isFieldOnTheFly = isFieldOnTheFly;

  String _readableName;
  String get readableName => _$this._readableName;
  set readableName(String readableName) => _$this._readableName = readableName;

  FieldInTableDataBuilder();

  FieldInTableDataBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _originalFields = _$v.originalFields?.toBuilder();
      _present = _$v.present;
      _hasNull = _$v.hasNull;
      _hasWild = _$v.hasWild;
      _hasDuplicates = _$v.hasDuplicates;
      _isSynthetic = _$v.isSynthetic;
      _informationDensity = _$v.informationDensity;
      _nNonNulls = _$v.nNonNulls;
      _nRows = _$v.nRows;
      _subsetRatio = _$v.subsetRatio;
      _nTotalDistinctValues = _$v.nTotalDistinctValues;
      _nPresentDistinctValues = _$v.nPresentDistinctValues;
      _keyType = _$v.keyType;
      _comment = _$v.comment;
      _tags = _$v.tags?.toBuilder();
      _derivedFields = _$v.derivedFields?.toBuilder();
      _isFieldOnTheFly = _$v.isFieldOnTheFly;
      _readableName = _$v.readableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldInTableData other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FieldInTableData;
  }

  @override
  void update(void updates(FieldInTableDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FieldInTableData build() {
    _$FieldInTableData _$result;
    try {
      _$result = _$v ??
          new _$FieldInTableData._(
              name: name,
              originalFields: _originalFields?.build(),
              present: present,
              hasNull: hasNull,
              hasWild: hasWild,
              hasDuplicates: hasDuplicates,
              isSynthetic: isSynthetic,
              informationDensity: informationDensity,
              nNonNulls: nNonNulls,
              nRows: nRows,
              subsetRatio: subsetRatio,
              nTotalDistinctValues: nTotalDistinctValues,
              nPresentDistinctValues: nPresentDistinctValues,
              keyType: keyType,
              comment: comment,
              tags: _tags?.build(),
              derivedFields: _derivedFields?.build(),
              isFieldOnTheFly: isFieldOnTheFly,
              readableName: readableName);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'originalFields';
        _originalFields?.build();

        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'derivedFields';
        _derivedFields?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FieldInTableData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
