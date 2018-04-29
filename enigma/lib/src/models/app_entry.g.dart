// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_entry;

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

Serializer<AppEntry> _$appEntrySerializer = new _$AppEntrySerializer();

class _$AppEntrySerializer implements StructuredSerializer<AppEntry> {
  @override
  final Iterable<Type> types = const [AppEntry, _$AppEntry];
  @override
  final String wireName = 'AppEntry';

  @override
  Iterable serialize(Serializers serializers, AppEntry object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.iD != null) {
      result
        ..add('iD')
        ..add(serializers.serialize(object.iD,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    if (object.lastReloadTime != null) {
      result
        ..add('lastReloadTime')
        ..add(serializers.serialize(object.lastReloadTime,
            specifiedType: const FullType(String)));
    }
    if (object.readOnly != null) {
      result
        ..add('readOnly')
        ..add(serializers.serialize(object.readOnly,
            specifiedType: const FullType(bool)));
    }
    if (object.meta != null) {
      result
        ..add('meta')
        ..add(serializers.serialize(object.meta,
            specifiedType: const FullType(NxMeta)));
    }
    if (object.thumbnail != null) {
      result
        ..add('thumbnail')
        ..add(serializers.serialize(object.thumbnail,
            specifiedType: const FullType(StaticContentUrl)));
    }
    if (object.fileSize != null) {
      result
        ..add('fileSize')
        ..add(serializers.serialize(object.fileSize,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  AppEntry deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new AppEntryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'iD':
          result.iD = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastReloadTime':
          result.lastReloadTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'readOnly':
          result.readOnly = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxMeta)) as NxMeta);
          break;
        case 'thumbnail':
          result.thumbnail.replace(serializers.deserialize(value,
                  specifiedType: const FullType(StaticContentUrl))
              as StaticContentUrl);
          break;
        case 'fileSize':
          result.fileSize = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$AppEntry extends AppEntry {
  @override
  final String iD;
  @override
  final String title;
  @override
  final String path;
  @override
  final String lastReloadTime;
  @override
  final bool readOnly;
  @override
  final NxMeta meta;
  @override
  final StaticContentUrl thumbnail;
  @override
  final int fileSize;

  factory _$AppEntry([void updates(AppEntryBuilder b)]) =>
      (new AppEntryBuilder()..update(updates)).build();

  _$AppEntry._(
      {this.iD,
      this.title,
      this.path,
      this.lastReloadTime,
      this.readOnly,
      this.meta,
      this.thumbnail,
      this.fileSize})
      : super._();

  @override
  AppEntry rebuild(void updates(AppEntryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AppEntryBuilder toBuilder() => new AppEntryBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! AppEntry) return false;
    return iD == other.iD &&
        title == other.title &&
        path == other.path &&
        lastReloadTime == other.lastReloadTime &&
        readOnly == other.readOnly &&
        meta == other.meta &&
        thumbnail == other.thumbnail &&
        fileSize == other.fileSize;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, iD.hashCode), title.hashCode),
                            path.hashCode),
                        lastReloadTime.hashCode),
                    readOnly.hashCode),
                meta.hashCode),
            thumbnail.hashCode),
        fileSize.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppEntry')
          ..add('iD', iD)
          ..add('title', title)
          ..add('path', path)
          ..add('lastReloadTime', lastReloadTime)
          ..add('readOnly', readOnly)
          ..add('meta', meta)
          ..add('thumbnail', thumbnail)
          ..add('fileSize', fileSize))
        .toString();
  }
}

class AppEntryBuilder implements Builder<AppEntry, AppEntryBuilder> {
  _$AppEntry _$v;

  String _iD;
  String get iD => _$this._iD;
  set iD(String iD) => _$this._iD = iD;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  String _lastReloadTime;
  String get lastReloadTime => _$this._lastReloadTime;
  set lastReloadTime(String lastReloadTime) =>
      _$this._lastReloadTime = lastReloadTime;

  bool _readOnly;
  bool get readOnly => _$this._readOnly;
  set readOnly(bool readOnly) => _$this._readOnly = readOnly;

  NxMetaBuilder _meta;
  NxMetaBuilder get meta => _$this._meta ??= new NxMetaBuilder();
  set meta(NxMetaBuilder meta) => _$this._meta = meta;

  StaticContentUrlBuilder _thumbnail;
  StaticContentUrlBuilder get thumbnail =>
      _$this._thumbnail ??= new StaticContentUrlBuilder();
  set thumbnail(StaticContentUrlBuilder thumbnail) =>
      _$this._thumbnail = thumbnail;

  int _fileSize;
  int get fileSize => _$this._fileSize;
  set fileSize(int fileSize) => _$this._fileSize = fileSize;

  AppEntryBuilder();

  AppEntryBuilder get _$this {
    if (_$v != null) {
      _iD = _$v.iD;
      _title = _$v.title;
      _path = _$v.path;
      _lastReloadTime = _$v.lastReloadTime;
      _readOnly = _$v.readOnly;
      _meta = _$v.meta?.toBuilder();
      _thumbnail = _$v.thumbnail?.toBuilder();
      _fileSize = _$v.fileSize;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppEntry other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$AppEntry;
  }

  @override
  void update(void updates(AppEntryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AppEntry build() {
    _$AppEntry _$result;
    try {
      _$result = _$v ??
          new _$AppEntry._(
              iD: iD,
              title: title,
              path: path,
              lastReloadTime: lastReloadTime,
              readOnly: readOnly,
              meta: _meta?.build(),
              thumbnail: _thumbnail?.build(),
              fileSize: fileSize);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'meta';
        _meta?.build();
        _$failedField = 'thumbnail';
        _thumbnail?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppEntry', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
