// GENERATED CODE - DO NOT MODIFY BY HAND

part of doc_list_entry;

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

Serializer<DocListEntry> _$docListEntrySerializer =
    new _$DocListEntrySerializer();

class _$DocListEntrySerializer implements StructuredSerializer<DocListEntry> {
  @override
  final Iterable<Type> types = const [DocListEntry, _$DocListEntry];
  @override
  final String wireName = 'DocListEntry';

  @override
  Iterable serialize(Serializers serializers, DocListEntry object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.docName != null) {
      result
        ..add('qDocName')
        ..add(serializers.serialize(object.docName,
            specifiedType: const FullType(String)));
    }
    if (object.connectedUsers != null) {
      result
        ..add('qConnectedUsers')
        ..add(serializers.serialize(object.connectedUsers,
            specifiedType: const FullType(int)));
    }
    if (object.fileTime != null) {
      result
        ..add('qFileTime')
        ..add(serializers.serialize(object.fileTime,
            specifiedType: const FullType(num)));
    }
    if (object.fileSize != null) {
      result
        ..add('qFileSize')
        ..add(serializers.serialize(object.fileSize,
            specifiedType: const FullType(num)));
    }
    if (object.docId != null) {
      result
        ..add('qDocId')
        ..add(serializers.serialize(object.docId,
            specifiedType: const FullType(String)));
    }
    if (object.meta != null) {
      result
        ..add('qMeta')
        ..add(serializers.serialize(object.meta,
            specifiedType: const FullType(NxMeta)));
    }
    if (object.lastReloadTime != null) {
      result
        ..add('qLastReloadTime')
        ..add(serializers.serialize(object.lastReloadTime,
            specifiedType: const FullType(String)));
    }
    if (object.readOnly != null) {
      result
        ..add('qReadOnly')
        ..add(serializers.serialize(object.readOnly,
            specifiedType: const FullType(bool)));
    }
    if (object.title != null) {
      result
        ..add('qTitle')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
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
  DocListEntry deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DocListEntryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qDocName':
          result.docName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qConnectedUsers':
          result.connectedUsers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qFileTime':
          result.fileTime = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'qFileSize':
          result.fileSize = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'qDocId':
          result.docId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qMeta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxMeta)) as NxMeta);
          break;
        case 'qLastReloadTime':
          result.lastReloadTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qReadOnly':
          result.readOnly = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qTitle':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$DocListEntry extends DocListEntry {
  @override
  final String docName;
  @override
  final int connectedUsers;
  @override
  final num fileTime;
  @override
  final num fileSize;
  @override
  final String docId;
  @override
  final NxMeta meta;
  @override
  final String lastReloadTime;
  @override
  final bool readOnly;
  @override
  final String title;
  @override
  final StaticContentUrl thumbnail;

  factory _$DocListEntry([void updates(DocListEntryBuilder b)]) =>
      (new DocListEntryBuilder()..update(updates)).build();

  _$DocListEntry._(
      {this.docName,
      this.connectedUsers,
      this.fileTime,
      this.fileSize,
      this.docId,
      this.meta,
      this.lastReloadTime,
      this.readOnly,
      this.title,
      this.thumbnail})
      : super._();

  @override
  DocListEntry rebuild(void updates(DocListEntryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DocListEntryBuilder toBuilder() => new DocListEntryBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! DocListEntry) return false;
    return docName == other.docName &&
        connectedUsers == other.connectedUsers &&
        fileTime == other.fileTime &&
        fileSize == other.fileSize &&
        docId == other.docId &&
        meta == other.meta &&
        lastReloadTime == other.lastReloadTime &&
        readOnly == other.readOnly &&
        title == other.title &&
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
                                    $jc($jc(0, docName.hashCode),
                                        connectedUsers.hashCode),
                                    fileTime.hashCode),
                                fileSize.hashCode),
                            docId.hashCode),
                        meta.hashCode),
                    lastReloadTime.hashCode),
                readOnly.hashCode),
            title.hashCode),
        thumbnail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DocListEntry')
          ..add('docName', docName)
          ..add('connectedUsers', connectedUsers)
          ..add('fileTime', fileTime)
          ..add('fileSize', fileSize)
          ..add('docId', docId)
          ..add('meta', meta)
          ..add('lastReloadTime', lastReloadTime)
          ..add('readOnly', readOnly)
          ..add('title', title)
          ..add('thumbnail', thumbnail))
        .toString();
  }
}

class DocListEntryBuilder
    implements Builder<DocListEntry, DocListEntryBuilder> {
  _$DocListEntry _$v;

  String _docName;
  String get docName => _$this._docName;
  set docName(String docName) => _$this._docName = docName;

  int _connectedUsers;
  int get connectedUsers => _$this._connectedUsers;
  set connectedUsers(int connectedUsers) =>
      _$this._connectedUsers = connectedUsers;

  num _fileTime;
  num get fileTime => _$this._fileTime;
  set fileTime(num fileTime) => _$this._fileTime = fileTime;

  num _fileSize;
  num get fileSize => _$this._fileSize;
  set fileSize(num fileSize) => _$this._fileSize = fileSize;

  String _docId;
  String get docId => _$this._docId;
  set docId(String docId) => _$this._docId = docId;

  NxMetaBuilder _meta;
  NxMetaBuilder get meta => _$this._meta ??= new NxMetaBuilder();
  set meta(NxMetaBuilder meta) => _$this._meta = meta;

  String _lastReloadTime;
  String get lastReloadTime => _$this._lastReloadTime;
  set lastReloadTime(String lastReloadTime) =>
      _$this._lastReloadTime = lastReloadTime;

  bool _readOnly;
  bool get readOnly => _$this._readOnly;
  set readOnly(bool readOnly) => _$this._readOnly = readOnly;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  StaticContentUrlBuilder _thumbnail;
  StaticContentUrlBuilder get thumbnail =>
      _$this._thumbnail ??= new StaticContentUrlBuilder();
  set thumbnail(StaticContentUrlBuilder thumbnail) =>
      _$this._thumbnail = thumbnail;

  DocListEntryBuilder();

  DocListEntryBuilder get _$this {
    if (_$v != null) {
      _docName = _$v.docName;
      _connectedUsers = _$v.connectedUsers;
      _fileTime = _$v.fileTime;
      _fileSize = _$v.fileSize;
      _docId = _$v.docId;
      _meta = _$v.meta?.toBuilder();
      _lastReloadTime = _$v.lastReloadTime;
      _readOnly = _$v.readOnly;
      _title = _$v.title;
      _thumbnail = _$v.thumbnail?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocListEntry other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$DocListEntry;
  }

  @override
  void update(void updates(DocListEntryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DocListEntry build() {
    _$DocListEntry _$result;
    try {
      _$result = _$v ??
          new _$DocListEntry._(
              docName: docName,
              connectedUsers: connectedUsers,
              fileTime: fileTime,
              fileSize: fileSize,
              docId: docId,
              meta: _meta?.build(),
              lastReloadTime: lastReloadTime,
              readOnly: readOnly,
              title: title,
              thumbnail: _thumbnail?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'meta';
        _meta?.build();

        _$failedField = 'thumbnail';
        _thumbnail?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DocListEntry', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
