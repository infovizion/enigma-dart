// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_dimension_layout;

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

Serializer<GenericDimensionLayout> _$genericDimensionLayoutSerializer =
    new _$GenericDimensionLayoutSerializer();

class _$GenericDimensionLayoutSerializer
    implements StructuredSerializer<GenericDimensionLayout> {
  @override
  final Iterable<Type> types = const [
    GenericDimensionLayout,
    _$GenericDimensionLayout
  ];
  @override
  final String wireName = 'GenericDimensionLayout';

  @override
  Iterable serialize(Serializers serializers, GenericDimensionLayout object,
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
    if (object.dim != null) {
      result
        ..add('qDim')
        ..add(serializers.serialize(object.dim,
            specifiedType: const FullType(NxLibraryDimension)));
    }
    if (object.dimInfos != null) {
      result
        ..add('qDimInfos')
        ..add(serializers.serialize(object.dimInfos,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  GenericDimensionLayout deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new GenericDimensionLayoutBuilder();

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
        case 'qDim':
          result.dim.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxLibraryDimension))
              as NxLibraryDimension);
          break;
        case 'qDimInfos':
          result.dimInfos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$GenericDimensionLayout extends GenericDimensionLayout {
  @override
  final NxInfo info;
  @override
  final NxMeta meta;
  @override
  final NxLibraryDimension dim;
  @override
  final BuiltList<NxCell> dimInfos;

  factory _$GenericDimensionLayout(
          [void updates(GenericDimensionLayoutBuilder b)]) =>
      (new GenericDimensionLayoutBuilder()..update(updates)).build();

  _$GenericDimensionLayout._({this.info, this.meta, this.dim, this.dimInfos})
      : super._();

  @override
  GenericDimensionLayout rebuild(
          void updates(GenericDimensionLayoutBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GenericDimensionLayoutBuilder toBuilder() =>
      new GenericDimensionLayoutBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GenericDimensionLayout) return false;
    return info == other.info &&
        meta == other.meta &&
        dim == other.dim &&
        dimInfos == other.dimInfos;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, info.hashCode), meta.hashCode), dim.hashCode),
        dimInfos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenericDimensionLayout')
          ..add('info', info)
          ..add('meta', meta)
          ..add('dim', dim)
          ..add('dimInfos', dimInfos))
        .toString();
  }
}

class GenericDimensionLayoutBuilder
    implements Builder<GenericDimensionLayout, GenericDimensionLayoutBuilder> {
  _$GenericDimensionLayout _$v;

  NxInfoBuilder _info;
  NxInfoBuilder get info => _$this._info ??= new NxInfoBuilder();
  set info(NxInfoBuilder info) => _$this._info = info;

  NxMetaBuilder _meta;
  NxMetaBuilder get meta => _$this._meta ??= new NxMetaBuilder();
  set meta(NxMetaBuilder meta) => _$this._meta = meta;

  NxLibraryDimensionBuilder _dim;
  NxLibraryDimensionBuilder get dim =>
      _$this._dim ??= new NxLibraryDimensionBuilder();
  set dim(NxLibraryDimensionBuilder dim) => _$this._dim = dim;

  ListBuilder<NxCell> _dimInfos;
  ListBuilder<NxCell> get dimInfos =>
      _$this._dimInfos ??= new ListBuilder<NxCell>();
  set dimInfos(ListBuilder<NxCell> dimInfos) => _$this._dimInfos = dimInfos;

  GenericDimensionLayoutBuilder();

  GenericDimensionLayoutBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _meta = _$v.meta?.toBuilder();
      _dim = _$v.dim?.toBuilder();
      _dimInfos = _$v.dimInfos?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenericDimensionLayout other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GenericDimensionLayout;
  }

  @override
  void update(void updates(GenericDimensionLayoutBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GenericDimensionLayout build() {
    _$GenericDimensionLayout _$result;
    try {
      _$result = _$v ??
          new _$GenericDimensionLayout._(
              info: _info?.build(),
              meta: _meta?.build(),
              dim: _dim?.build(),
              dimInfos: _dimInfos?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
        _$failedField = 'meta';
        _meta?.build();
        _$failedField = 'dim';
        _dim?.build();
        _$failedField = 'dimInfos';
        _dimInfos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenericDimensionLayout', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
