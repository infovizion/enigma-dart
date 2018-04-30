// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_app_layout;

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

Serializer<NxAppLayout> _$nxAppLayoutSerializer = new _$NxAppLayoutSerializer();

class _$NxAppLayoutSerializer implements StructuredSerializer<NxAppLayout> {
  @override
  final Iterable<Type> types = const [NxAppLayout, _$NxAppLayout];
  @override
  final String wireName = 'NxAppLayout';

  @override
  Iterable serialize(Serializers serializers, NxAppLayout object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('qTitle')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.fileName != null) {
      result
        ..add('qFileName')
        ..add(serializers.serialize(object.fileName,
            specifiedType: const FullType(String)));
    }
    if (object.lastReloadTime != null) {
      result
        ..add('qLastReloadTime')
        ..add(serializers.serialize(object.lastReloadTime,
            specifiedType: const FullType(String)));
    }
    if (object.modified != null) {
      result
        ..add('qModified')
        ..add(serializers.serialize(object.modified,
            specifiedType: const FullType(bool)));
    }
    if (object.hasScript != null) {
      result
        ..add('qHasScript')
        ..add(serializers.serialize(object.hasScript,
            specifiedType: const FullType(bool)));
    }
    if (object.stateNames != null) {
      result
        ..add('qStateNames')
        ..add(serializers.serialize(object.stateNames,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.meta != null) {
      result
        ..add('qMeta')
        ..add(serializers.serialize(object.meta,
            specifiedType: const FullType(NxMeta)));
    }
    if (object.localeInfo != null) {
      result
        ..add('qLocaleInfo')
        ..add(serializers.serialize(object.localeInfo,
            specifiedType: const FullType(LocaleInfo)));
    }
    if (object.hasData != null) {
      result
        ..add('qHasData')
        ..add(serializers.serialize(object.hasData,
            specifiedType: const FullType(bool)));
    }
    if (object.readOnly != null) {
      result
        ..add('qReadOnly')
        ..add(serializers.serialize(object.readOnly,
            specifiedType: const FullType(bool)));
    }
    if (object.isOpenedWithoutData != null) {
      result
        ..add('qIsOpenedWithoutData')
        ..add(serializers.serialize(object.isOpenedWithoutData,
            specifiedType: const FullType(bool)));
    }
    if (object.thumbnail != null) {
      result
        ..add('qThumbnail')
        ..add(serializers.serialize(object.thumbnail,
            specifiedType: const FullType(StaticContentUrl)));
    }

    return result;
  }

  @override
  NxAppLayout deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxAppLayoutBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qTitle':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qFileName':
          result.fileName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qLastReloadTime':
          result.lastReloadTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qModified':
          result.modified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qHasScript':
          result.hasScript = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qStateNames':
          result.stateNames.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qMeta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxMeta)) as NxMeta);
          break;
        case 'qLocaleInfo':
          result.localeInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(LocaleInfo)) as LocaleInfo);
          break;
        case 'qHasData':
          result.hasData = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qReadOnly':
          result.readOnly = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qIsOpenedWithoutData':
          result.isOpenedWithoutData = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qThumbnail':
          result.thumbnail.replace(serializers.deserialize(value,
                  specifiedType: const FullType(StaticContentUrl))
              as StaticContentUrl);
          break;
      }
    }

    return result.build();
  }
}

class _$NxAppLayout extends NxAppLayout {
  @override
  final String title;
  @override
  final String fileName;
  @override
  final String lastReloadTime;
  @override
  final bool modified;
  @override
  final bool hasScript;
  @override
  final BuiltList<NxCell> stateNames;
  @override
  final NxMeta meta;
  @override
  final LocaleInfo localeInfo;
  @override
  final bool hasData;
  @override
  final bool readOnly;
  @override
  final bool isOpenedWithoutData;
  @override
  final StaticContentUrl thumbnail;

  factory _$NxAppLayout([void updates(NxAppLayoutBuilder b)]) =>
      (new NxAppLayoutBuilder()..update(updates)).build();

  _$NxAppLayout._(
      {this.title,
      this.fileName,
      this.lastReloadTime,
      this.modified,
      this.hasScript,
      this.stateNames,
      this.meta,
      this.localeInfo,
      this.hasData,
      this.readOnly,
      this.isOpenedWithoutData,
      this.thumbnail})
      : super._();

  @override
  NxAppLayout rebuild(void updates(NxAppLayoutBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxAppLayoutBuilder toBuilder() => new NxAppLayoutBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxAppLayout) return false;
    return title == other.title &&
        fileName == other.fileName &&
        lastReloadTime == other.lastReloadTime &&
        modified == other.modified &&
        hasScript == other.hasScript &&
        stateNames == other.stateNames &&
        meta == other.meta &&
        localeInfo == other.localeInfo &&
        hasData == other.hasData &&
        readOnly == other.readOnly &&
        isOpenedWithoutData == other.isOpenedWithoutData &&
        thumbnail == other.thumbnail;
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
                                            $jc($jc(0, title.hashCode),
                                                fileName.hashCode),
                                            lastReloadTime.hashCode),
                                        modified.hashCode),
                                    hasScript.hashCode),
                                stateNames.hashCode),
                            meta.hashCode),
                        localeInfo.hashCode),
                    hasData.hashCode),
                readOnly.hashCode),
            isOpenedWithoutData.hashCode),
        thumbnail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxAppLayout')
          ..add('title', title)
          ..add('fileName', fileName)
          ..add('lastReloadTime', lastReloadTime)
          ..add('modified', modified)
          ..add('hasScript', hasScript)
          ..add('stateNames', stateNames)
          ..add('meta', meta)
          ..add('localeInfo', localeInfo)
          ..add('hasData', hasData)
          ..add('readOnly', readOnly)
          ..add('isOpenedWithoutData', isOpenedWithoutData)
          ..add('thumbnail', thumbnail))
        .toString();
  }
}

class NxAppLayoutBuilder implements Builder<NxAppLayout, NxAppLayoutBuilder> {
  _$NxAppLayout _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _fileName;
  String get fileName => _$this._fileName;
  set fileName(String fileName) => _$this._fileName = fileName;

  String _lastReloadTime;
  String get lastReloadTime => _$this._lastReloadTime;
  set lastReloadTime(String lastReloadTime) =>
      _$this._lastReloadTime = lastReloadTime;

  bool _modified;
  bool get modified => _$this._modified;
  set modified(bool modified) => _$this._modified = modified;

  bool _hasScript;
  bool get hasScript => _$this._hasScript;
  set hasScript(bool hasScript) => _$this._hasScript = hasScript;

  ListBuilder<NxCell> _stateNames;
  ListBuilder<NxCell> get stateNames =>
      _$this._stateNames ??= new ListBuilder<NxCell>();
  set stateNames(ListBuilder<NxCell> stateNames) =>
      _$this._stateNames = stateNames;

  NxMetaBuilder _meta;
  NxMetaBuilder get meta => _$this._meta ??= new NxMetaBuilder();
  set meta(NxMetaBuilder meta) => _$this._meta = meta;

  LocaleInfoBuilder _localeInfo;
  LocaleInfoBuilder get localeInfo =>
      _$this._localeInfo ??= new LocaleInfoBuilder();
  set localeInfo(LocaleInfoBuilder localeInfo) =>
      _$this._localeInfo = localeInfo;

  bool _hasData;
  bool get hasData => _$this._hasData;
  set hasData(bool hasData) => _$this._hasData = hasData;

  bool _readOnly;
  bool get readOnly => _$this._readOnly;
  set readOnly(bool readOnly) => _$this._readOnly = readOnly;

  bool _isOpenedWithoutData;
  bool get isOpenedWithoutData => _$this._isOpenedWithoutData;
  set isOpenedWithoutData(bool isOpenedWithoutData) =>
      _$this._isOpenedWithoutData = isOpenedWithoutData;

  StaticContentUrlBuilder _thumbnail;
  StaticContentUrlBuilder get thumbnail =>
      _$this._thumbnail ??= new StaticContentUrlBuilder();
  set thumbnail(StaticContentUrlBuilder thumbnail) =>
      _$this._thumbnail = thumbnail;

  NxAppLayoutBuilder();

  NxAppLayoutBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _fileName = _$v.fileName;
      _lastReloadTime = _$v.lastReloadTime;
      _modified = _$v.modified;
      _hasScript = _$v.hasScript;
      _stateNames = _$v.stateNames?.toBuilder();
      _meta = _$v.meta?.toBuilder();
      _localeInfo = _$v.localeInfo?.toBuilder();
      _hasData = _$v.hasData;
      _readOnly = _$v.readOnly;
      _isOpenedWithoutData = _$v.isOpenedWithoutData;
      _thumbnail = _$v.thumbnail?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxAppLayout other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxAppLayout;
  }

  @override
  void update(void updates(NxAppLayoutBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxAppLayout build() {
    _$NxAppLayout _$result;
    try {
      _$result = _$v ??
          new _$NxAppLayout._(
              title: title,
              fileName: fileName,
              lastReloadTime: lastReloadTime,
              modified: modified,
              hasScript: hasScript,
              stateNames: _stateNames?.build(),
              meta: _meta?.build(),
              localeInfo: _localeInfo?.build(),
              hasData: hasData,
              readOnly: readOnly,
              isOpenedWithoutData: isOpenedWithoutData,
              thumbnail: _thumbnail?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'stateNames';
        _stateNames?.build();
        _$failedField = 'meta';
        _meta?.build();
        _$failedField = 'localeInfo';
        _localeInfo?.build();

        _$failedField = 'thumbnail';
        _thumbnail?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxAppLayout', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
