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
        ..add('info')
        ..add(serializers.serialize(object.info,
            specifiedType: const FullType(NxInfo)));
    }
    if (object.meta != null) {
      result
        ..add('meta')
        ..add(serializers.serialize(object.meta,
            specifiedType: const FullType(NxMeta)));
    }
    if (object.extendsId != null) {
      result
        ..add('extendsId')
        ..add(serializers.serialize(object.extendsId,
            specifiedType: const FullType(String)));
    }
    if (object.hasSoftPatches != null) {
      result
        ..add('hasSoftPatches')
        ..add(serializers.serialize(object.hasSoftPatches,
            specifiedType: const FullType(bool)));
    }
    if (object.error != null) {
      result
        ..add('error')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(NxLayoutErrors)));
    }
    if (object.selectionInfo != null) {
      result
        ..add('selectionInfo')
        ..add(serializers.serialize(object.selectionInfo,
            specifiedType: const FullType(NxSelectionInfo)));
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
        case 'info':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxInfo)) as NxInfo);
          break;
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxMeta)) as NxMeta);
          break;
        case 'extendsId':
          result.extendsId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hasSoftPatches':
          result.hasSoftPatches = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxLayoutErrors)) as NxLayoutErrors);
          break;
        case 'selectionInfo':
          result.selectionInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxSelectionInfo))
              as NxSelectionInfo);
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

  factory _$GenericObjectLayout([void updates(GenericObjectLayoutBuilder b)]) =>
      (new GenericObjectLayoutBuilder()..update(updates)).build();

  _$GenericObjectLayout._(
      {this.info,
      this.meta,
      this.extendsId,
      this.hasSoftPatches,
      this.error,
      this.selectionInfo})
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
        selectionInfo == other.selectionInfo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, info.hashCode), meta.hashCode),
                    extendsId.hashCode),
                hasSoftPatches.hashCode),
            error.hashCode),
        selectionInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenericObjectLayout')
          ..add('info', info)
          ..add('meta', meta)
          ..add('extendsId', extendsId)
          ..add('hasSoftPatches', hasSoftPatches)
          ..add('error', error)
          ..add('selectionInfo', selectionInfo))
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

  GenericObjectLayoutBuilder();

  GenericObjectLayoutBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _meta = _$v.meta?.toBuilder();
      _extendsId = _$v.extendsId;
      _hasSoftPatches = _$v.hasSoftPatches;
      _error = _$v.error?.toBuilder();
      _selectionInfo = _$v.selectionInfo?.toBuilder();
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
              selectionInfo: _selectionInfo?.build());
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
