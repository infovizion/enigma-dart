// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_dimension_info;

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

Serializer<GenericDimensionInfo> _$genericDimensionInfoSerializer =
    new _$GenericDimensionInfoSerializer();

class _$GenericDimensionInfoSerializer
    implements StructuredSerializer<GenericDimensionInfo> {
  @override
  final Iterable<Type> types = const [
    GenericDimensionInfo,
    _$GenericDimensionInfo
  ];
  @override
  final String wireName = 'GenericDimensionInfo';

  @override
  Iterable serialize(Serializers serializers, GenericDimensionInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.apprMaxGlyphCount != null) {
      result
        ..add('qApprMaxGlyphCount')
        ..add(serializers.serialize(object.apprMaxGlyphCount,
            specifiedType: const FullType(int)));
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
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.isSemantic != null) {
      result
        ..add('qIsSemantic')
        ..add(serializers.serialize(object.isSemantic,
            specifiedType: const FullType(bool)));
    }
    if (object.andMode != null) {
      result
        ..add('qAndMode')
        ..add(serializers.serialize(object.andMode,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  GenericDimensionInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new GenericDimensionInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qApprMaxGlyphCount':
          result.apprMaxGlyphCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qCardinal':
          result.cardinal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qTags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qIsSemantic':
          result.isSemantic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qAndMode':
          result.andMode = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GenericDimensionInfo extends GenericDimensionInfo {
  @override
  final int apprMaxGlyphCount;
  @override
  final int cardinal;
  @override
  final BuiltList<NxCell> tags;
  @override
  final bool isSemantic;
  @override
  final bool andMode;

  factory _$GenericDimensionInfo(
          [void updates(GenericDimensionInfoBuilder b)]) =>
      (new GenericDimensionInfoBuilder()..update(updates)).build();

  _$GenericDimensionInfo._(
      {this.apprMaxGlyphCount,
      this.cardinal,
      this.tags,
      this.isSemantic,
      this.andMode})
      : super._();

  @override
  GenericDimensionInfo rebuild(void updates(GenericDimensionInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GenericDimensionInfoBuilder toBuilder() =>
      new GenericDimensionInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GenericDimensionInfo) return false;
    return apprMaxGlyphCount == other.apprMaxGlyphCount &&
        cardinal == other.cardinal &&
        tags == other.tags &&
        isSemantic == other.isSemantic &&
        andMode == other.andMode;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, apprMaxGlyphCount.hashCode), cardinal.hashCode),
                tags.hashCode),
            isSemantic.hashCode),
        andMode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenericDimensionInfo')
          ..add('apprMaxGlyphCount', apprMaxGlyphCount)
          ..add('cardinal', cardinal)
          ..add('tags', tags)
          ..add('isSemantic', isSemantic)
          ..add('andMode', andMode))
        .toString();
  }
}

class GenericDimensionInfoBuilder
    implements Builder<GenericDimensionInfo, GenericDimensionInfoBuilder> {
  _$GenericDimensionInfo _$v;

  int _apprMaxGlyphCount;
  int get apprMaxGlyphCount => _$this._apprMaxGlyphCount;
  set apprMaxGlyphCount(int apprMaxGlyphCount) =>
      _$this._apprMaxGlyphCount = apprMaxGlyphCount;

  int _cardinal;
  int get cardinal => _$this._cardinal;
  set cardinal(int cardinal) => _$this._cardinal = cardinal;

  ListBuilder<NxCell> _tags;
  ListBuilder<NxCell> get tags => _$this._tags ??= new ListBuilder<NxCell>();
  set tags(ListBuilder<NxCell> tags) => _$this._tags = tags;

  bool _isSemantic;
  bool get isSemantic => _$this._isSemantic;
  set isSemantic(bool isSemantic) => _$this._isSemantic = isSemantic;

  bool _andMode;
  bool get andMode => _$this._andMode;
  set andMode(bool andMode) => _$this._andMode = andMode;

  GenericDimensionInfoBuilder();

  GenericDimensionInfoBuilder get _$this {
    if (_$v != null) {
      _apprMaxGlyphCount = _$v.apprMaxGlyphCount;
      _cardinal = _$v.cardinal;
      _tags = _$v.tags?.toBuilder();
      _isSemantic = _$v.isSemantic;
      _andMode = _$v.andMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenericDimensionInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GenericDimensionInfo;
  }

  @override
  void update(void updates(GenericDimensionInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GenericDimensionInfo build() {
    _$GenericDimensionInfo _$result;
    try {
      _$result = _$v ??
          new _$GenericDimensionInfo._(
              apprMaxGlyphCount: apprMaxGlyphCount,
              cardinal: cardinal,
              tags: _tags?.build(),
              isSemantic: isSemantic,
              andMode: andMode);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenericDimensionInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
