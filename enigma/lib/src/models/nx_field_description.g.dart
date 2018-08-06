// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_field_description;

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

Serializer<NxFieldDescription> _$nxFieldDescriptionSerializer =
    new _$NxFieldDescriptionSerializer();

class _$NxFieldDescriptionSerializer
    implements StructuredSerializer<NxFieldDescription> {
  @override
  final Iterable<Type> types = const [NxFieldDescription, _$NxFieldDescription];
  @override
  final String wireName = 'NxFieldDescription';

  @override
  Iterable serialize(Serializers serializers, NxFieldDescription object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.isSemantic != null) {
      result
        ..add('qIsSemantic')
        ..add(serializers.serialize(object.isSemantic,
            specifiedType: const FullType(bool)));
    }
    if (object.isHidden != null) {
      result
        ..add('qIsHidden')
        ..add(serializers.serialize(object.isHidden,
            specifiedType: const FullType(bool)));
    }
    if (object.isSystem != null) {
      result
        ..add('qIsSystem')
        ..add(serializers.serialize(object.isSystem,
            specifiedType: const FullType(bool)));
    }
    if (object.andMode != null) {
      result
        ..add('qAndMode')
        ..add(serializers.serialize(object.andMode,
            specifiedType: const FullType(bool)));
    }
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.cardinal != null) {
      result
        ..add('qCardinal')
        ..add(serializers.serialize(object.cardinal,
            specifiedType: const FullType(int)));
    }
    if (object.tags != null) {
      result
        ..add('qTags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.isDefinitionOnly != null) {
      result
        ..add('qIsDefinitionOnly')
        ..add(serializers.serialize(object.isDefinitionOnly,
            specifiedType: const FullType(bool)));
    }
    if (object.derivedFieldData != null) {
      result
        ..add('qDerivedFieldData')
        ..add(serializers.serialize(object.derivedFieldData,
            specifiedType: const FullType(NxDerivedFieldDescriptionList)));
    }
    if (object.isDetail != null) {
      result
        ..add('qIsDetail')
        ..add(serializers.serialize(object.isDetail,
            specifiedType: const FullType(bool)));
    }
    if (object.isImplicit != null) {
      result
        ..add('qIsImplicit')
        ..add(serializers.serialize(object.isImplicit,
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
  NxFieldDescription deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxFieldDescriptionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qIsSemantic':
          result.isSemantic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qIsHidden':
          result.isHidden = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qIsSystem':
          result.isSystem = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qAndMode':
          result.andMode = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qName':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qCardinal':
          result.cardinal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qTags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'qIsDefinitionOnly':
          result.isDefinitionOnly = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qDerivedFieldData':
          result.derivedFieldData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxDerivedFieldDescriptionList))
              as NxDerivedFieldDescriptionList);
          break;
        case 'qIsDetail':
          result.isDetail = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qIsImplicit':
          result.isImplicit = serializers.deserialize(value,
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

class _$NxFieldDescription extends NxFieldDescription {
  @override
  final bool isSemantic;
  @override
  final bool isHidden;
  @override
  final bool isSystem;
  @override
  final bool andMode;
  @override
  final String name;
  @override
  final int cardinal;
  @override
  final BuiltList<String> tags;
  @override
  final bool isDefinitionOnly;
  @override
  final NxDerivedFieldDescriptionList derivedFieldData;
  @override
  final bool isDetail;
  @override
  final bool isImplicit;
  @override
  final String readableName;

  factory _$NxFieldDescription([void updates(NxFieldDescriptionBuilder b)]) =>
      (new NxFieldDescriptionBuilder()..update(updates)).build();

  _$NxFieldDescription._(
      {this.isSemantic,
      this.isHidden,
      this.isSystem,
      this.andMode,
      this.name,
      this.cardinal,
      this.tags,
      this.isDefinitionOnly,
      this.derivedFieldData,
      this.isDetail,
      this.isImplicit,
      this.readableName})
      : super._();

  @override
  NxFieldDescription rebuild(void updates(NxFieldDescriptionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxFieldDescriptionBuilder toBuilder() =>
      new NxFieldDescriptionBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxFieldDescription) return false;
    return isSemantic == other.isSemantic &&
        isHidden == other.isHidden &&
        isSystem == other.isSystem &&
        andMode == other.andMode &&
        name == other.name &&
        cardinal == other.cardinal &&
        tags == other.tags &&
        isDefinitionOnly == other.isDefinitionOnly &&
        derivedFieldData == other.derivedFieldData &&
        isDetail == other.isDetail &&
        isImplicit == other.isImplicit &&
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
                                            $jc($jc(0, isSemantic.hashCode),
                                                isHidden.hashCode),
                                            isSystem.hashCode),
                                        andMode.hashCode),
                                    name.hashCode),
                                cardinal.hashCode),
                            tags.hashCode),
                        isDefinitionOnly.hashCode),
                    derivedFieldData.hashCode),
                isDetail.hashCode),
            isImplicit.hashCode),
        readableName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxFieldDescription')
          ..add('isSemantic', isSemantic)
          ..add('isHidden', isHidden)
          ..add('isSystem', isSystem)
          ..add('andMode', andMode)
          ..add('name', name)
          ..add('cardinal', cardinal)
          ..add('tags', tags)
          ..add('isDefinitionOnly', isDefinitionOnly)
          ..add('derivedFieldData', derivedFieldData)
          ..add('isDetail', isDetail)
          ..add('isImplicit', isImplicit)
          ..add('readableName', readableName))
        .toString();
  }
}

class NxFieldDescriptionBuilder
    implements Builder<NxFieldDescription, NxFieldDescriptionBuilder> {
  _$NxFieldDescription _$v;

  bool _isSemantic;
  bool get isSemantic => _$this._isSemantic;
  set isSemantic(bool isSemantic) => _$this._isSemantic = isSemantic;

  bool _isHidden;
  bool get isHidden => _$this._isHidden;
  set isHidden(bool isHidden) => _$this._isHidden = isHidden;

  bool _isSystem;
  bool get isSystem => _$this._isSystem;
  set isSystem(bool isSystem) => _$this._isSystem = isSystem;

  bool _andMode;
  bool get andMode => _$this._andMode;
  set andMode(bool andMode) => _$this._andMode = andMode;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _cardinal;
  int get cardinal => _$this._cardinal;
  set cardinal(int cardinal) => _$this._cardinal = cardinal;

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  bool _isDefinitionOnly;
  bool get isDefinitionOnly => _$this._isDefinitionOnly;
  set isDefinitionOnly(bool isDefinitionOnly) =>
      _$this._isDefinitionOnly = isDefinitionOnly;

  NxDerivedFieldDescriptionListBuilder _derivedFieldData;
  NxDerivedFieldDescriptionListBuilder get derivedFieldData =>
      _$this._derivedFieldData ??= new NxDerivedFieldDescriptionListBuilder();
  set derivedFieldData(NxDerivedFieldDescriptionListBuilder derivedFieldData) =>
      _$this._derivedFieldData = derivedFieldData;

  bool _isDetail;
  bool get isDetail => _$this._isDetail;
  set isDetail(bool isDetail) => _$this._isDetail = isDetail;

  bool _isImplicit;
  bool get isImplicit => _$this._isImplicit;
  set isImplicit(bool isImplicit) => _$this._isImplicit = isImplicit;

  String _readableName;
  String get readableName => _$this._readableName;
  set readableName(String readableName) => _$this._readableName = readableName;

  NxFieldDescriptionBuilder();

  NxFieldDescriptionBuilder get _$this {
    if (_$v != null) {
      _isSemantic = _$v.isSemantic;
      _isHidden = _$v.isHidden;
      _isSystem = _$v.isSystem;
      _andMode = _$v.andMode;
      _name = _$v.name;
      _cardinal = _$v.cardinal;
      _tags = _$v.tags?.toBuilder();
      _isDefinitionOnly = _$v.isDefinitionOnly;
      _derivedFieldData = _$v.derivedFieldData?.toBuilder();
      _isDetail = _$v.isDetail;
      _isImplicit = _$v.isImplicit;
      _readableName = _$v.readableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxFieldDescription other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxFieldDescription;
  }

  @override
  void update(void updates(NxFieldDescriptionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxFieldDescription build() {
    _$NxFieldDescription _$result;
    try {
      _$result = _$v ??
          new _$NxFieldDescription._(
              isSemantic: isSemantic,
              isHidden: isHidden,
              isSystem: isSystem,
              andMode: andMode,
              name: name,
              cardinal: cardinal,
              tags: _tags?.build(),
              isDefinitionOnly: isDefinitionOnly,
              derivedFieldData: _derivedFieldData?.build(),
              isDetail: isDetail,
              isImplicit: isImplicit,
              readableName: readableName);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'derivedFieldData';
        _derivedFieldData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxFieldDescription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
