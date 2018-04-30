// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_app_properties;

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

Serializer<NxAppProperties> _$nxAppPropertiesSerializer =
    new _$NxAppPropertiesSerializer();

class _$NxAppPropertiesSerializer
    implements StructuredSerializer<NxAppProperties> {
  @override
  final Iterable<Type> types = const [NxAppProperties, _$NxAppProperties];
  @override
  final String wireName = 'NxAppProperties';

  @override
  Iterable serialize(Serializers serializers, NxAppProperties object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('qTitle')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.lastReloadTime != null) {
      result
        ..add('qLastReloadTime')
        ..add(serializers.serialize(object.lastReloadTime,
            specifiedType: const FullType(String)));
    }
    if (object.migrationHash != null) {
      result
        ..add('qMigrationHash')
        ..add(serializers.serialize(object.migrationHash,
            specifiedType: const FullType(String)));
    }
    if (object.savedInProductVersion != null) {
      result
        ..add('qSavedInProductVersion')
        ..add(serializers.serialize(object.savedInProductVersion,
            specifiedType: const FullType(String)));
    }
    if (object.thumbnail != null) {
      result
        ..add('qThumbnail')
        ..add(serializers.serialize(object.thumbnail,
            specifiedType: const FullType(StaticContentUrlDef)));
    }

    return result;
  }

  @override
  NxAppProperties deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxAppPropertiesBuilder();

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
        case 'qLastReloadTime':
          result.lastReloadTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qMigrationHash':
          result.migrationHash = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qSavedInProductVersion':
          result.savedInProductVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qThumbnail':
          result.thumbnail.replace(serializers.deserialize(value,
                  specifiedType: const FullType(StaticContentUrlDef))
              as StaticContentUrlDef);
          break;
      }
    }

    return result.build();
  }
}

class _$NxAppProperties extends NxAppProperties {
  @override
  final String title;
  @override
  final String lastReloadTime;
  @override
  final String migrationHash;
  @override
  final String savedInProductVersion;
  @override
  final StaticContentUrlDef thumbnail;

  factory _$NxAppProperties([void updates(NxAppPropertiesBuilder b)]) =>
      (new NxAppPropertiesBuilder()..update(updates)).build();

  _$NxAppProperties._(
      {this.title,
      this.lastReloadTime,
      this.migrationHash,
      this.savedInProductVersion,
      this.thumbnail})
      : super._();

  @override
  NxAppProperties rebuild(void updates(NxAppPropertiesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxAppPropertiesBuilder toBuilder() =>
      new NxAppPropertiesBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxAppProperties) return false;
    return title == other.title &&
        lastReloadTime == other.lastReloadTime &&
        migrationHash == other.migrationHash &&
        savedInProductVersion == other.savedInProductVersion &&
        thumbnail == other.thumbnail;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, title.hashCode), lastReloadTime.hashCode),
                migrationHash.hashCode),
            savedInProductVersion.hashCode),
        thumbnail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxAppProperties')
          ..add('title', title)
          ..add('lastReloadTime', lastReloadTime)
          ..add('migrationHash', migrationHash)
          ..add('savedInProductVersion', savedInProductVersion)
          ..add('thumbnail', thumbnail))
        .toString();
  }
}

class NxAppPropertiesBuilder
    implements Builder<NxAppProperties, NxAppPropertiesBuilder> {
  _$NxAppProperties _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _lastReloadTime;
  String get lastReloadTime => _$this._lastReloadTime;
  set lastReloadTime(String lastReloadTime) =>
      _$this._lastReloadTime = lastReloadTime;

  String _migrationHash;
  String get migrationHash => _$this._migrationHash;
  set migrationHash(String migrationHash) =>
      _$this._migrationHash = migrationHash;

  String _savedInProductVersion;
  String get savedInProductVersion => _$this._savedInProductVersion;
  set savedInProductVersion(String savedInProductVersion) =>
      _$this._savedInProductVersion = savedInProductVersion;

  StaticContentUrlDefBuilder _thumbnail;
  StaticContentUrlDefBuilder get thumbnail =>
      _$this._thumbnail ??= new StaticContentUrlDefBuilder();
  set thumbnail(StaticContentUrlDefBuilder thumbnail) =>
      _$this._thumbnail = thumbnail;

  NxAppPropertiesBuilder();

  NxAppPropertiesBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _lastReloadTime = _$v.lastReloadTime;
      _migrationHash = _$v.migrationHash;
      _savedInProductVersion = _$v.savedInProductVersion;
      _thumbnail = _$v.thumbnail?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxAppProperties other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxAppProperties;
  }

  @override
  void update(void updates(NxAppPropertiesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxAppProperties build() {
    _$NxAppProperties _$result;
    try {
      _$result = _$v ??
          new _$NxAppProperties._(
              title: title,
              lastReloadTime: lastReloadTime,
              migrationHash: migrationHash,
              savedInProductVersion: savedInProductVersion,
              thumbnail: _thumbnail?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'thumbnail';
        _thumbnail?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxAppProperties', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
