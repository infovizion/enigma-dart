// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_bookmark_layout;

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

Serializer<GenericBookmarkLayout> _$genericBookmarkLayoutSerializer =
    new _$GenericBookmarkLayoutSerializer();

class _$GenericBookmarkLayoutSerializer
    implements StructuredSerializer<GenericBookmarkLayout> {
  @override
  final Iterable<Type> types = const [
    GenericBookmarkLayout,
    _$GenericBookmarkLayout
  ];
  @override
  final String wireName = 'GenericBookmarkLayout';

  @override
  Iterable serialize(Serializers serializers, GenericBookmarkLayout object,
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
    if (object.bookmark != null) {
      result
        ..add('qBookmark')
        ..add(serializers.serialize(object.bookmark,
            specifiedType: const FullType(NxBookmark)));
    }
    if (object.fieldInfos != null) {
      result
        ..add('qFieldInfos')
        ..add(serializers.serialize(object.fieldInfos,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  GenericBookmarkLayout deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new GenericBookmarkLayoutBuilder();

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
        case 'qBookmark':
          result.bookmark.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxBookmark)) as NxBookmark);
          break;
        case 'qFieldInfos':
          result.fieldInfos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$GenericBookmarkLayout extends GenericBookmarkLayout {
  @override
  final NxInfo info;
  @override
  final NxMeta meta;
  @override
  final NxBookmark bookmark;
  @override
  final BuiltList<NxCell> fieldInfos;

  factory _$GenericBookmarkLayout(
          [void updates(GenericBookmarkLayoutBuilder b)]) =>
      (new GenericBookmarkLayoutBuilder()..update(updates)).build();

  _$GenericBookmarkLayout._(
      {this.info, this.meta, this.bookmark, this.fieldInfos})
      : super._();

  @override
  GenericBookmarkLayout rebuild(void updates(GenericBookmarkLayoutBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GenericBookmarkLayoutBuilder toBuilder() =>
      new GenericBookmarkLayoutBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GenericBookmarkLayout) return false;
    return info == other.info &&
        meta == other.meta &&
        bookmark == other.bookmark &&
        fieldInfos == other.fieldInfos;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, info.hashCode), meta.hashCode), bookmark.hashCode),
        fieldInfos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenericBookmarkLayout')
          ..add('info', info)
          ..add('meta', meta)
          ..add('bookmark', bookmark)
          ..add('fieldInfos', fieldInfos))
        .toString();
  }
}

class GenericBookmarkLayoutBuilder
    implements Builder<GenericBookmarkLayout, GenericBookmarkLayoutBuilder> {
  _$GenericBookmarkLayout _$v;

  NxInfoBuilder _info;
  NxInfoBuilder get info => _$this._info ??= new NxInfoBuilder();
  set info(NxInfoBuilder info) => _$this._info = info;

  NxMetaBuilder _meta;
  NxMetaBuilder get meta => _$this._meta ??= new NxMetaBuilder();
  set meta(NxMetaBuilder meta) => _$this._meta = meta;

  NxBookmarkBuilder _bookmark;
  NxBookmarkBuilder get bookmark =>
      _$this._bookmark ??= new NxBookmarkBuilder();
  set bookmark(NxBookmarkBuilder bookmark) => _$this._bookmark = bookmark;

  ListBuilder<NxCell> _fieldInfos;
  ListBuilder<NxCell> get fieldInfos =>
      _$this._fieldInfos ??= new ListBuilder<NxCell>();
  set fieldInfos(ListBuilder<NxCell> fieldInfos) =>
      _$this._fieldInfos = fieldInfos;

  GenericBookmarkLayoutBuilder();

  GenericBookmarkLayoutBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _meta = _$v.meta?.toBuilder();
      _bookmark = _$v.bookmark?.toBuilder();
      _fieldInfos = _$v.fieldInfos?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenericBookmarkLayout other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GenericBookmarkLayout;
  }

  @override
  void update(void updates(GenericBookmarkLayoutBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GenericBookmarkLayout build() {
    _$GenericBookmarkLayout _$result;
    try {
      _$result = _$v ??
          new _$GenericBookmarkLayout._(
              info: _info?.build(),
              meta: _meta?.build(),
              bookmark: _bookmark?.build(),
              fieldInfos: _fieldInfos?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
        _$failedField = 'meta';
        _meta?.build();
        _$failedField = 'bookmark';
        _bookmark?.build();
        _$failedField = 'fieldInfos';
        _fieldInfos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenericBookmarkLayout', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
