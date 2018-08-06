// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_bookmark_entry;

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

Serializer<GenericBookmarkEntry> _$genericBookmarkEntrySerializer =
    new _$GenericBookmarkEntrySerializer();

class _$GenericBookmarkEntrySerializer
    implements StructuredSerializer<GenericBookmarkEntry> {
  @override
  final Iterable<Type> types = const [
    GenericBookmarkEntry,
    _$GenericBookmarkEntry
  ];
  @override
  final String wireName = 'GenericBookmarkEntry';

  @override
  Iterable serialize(Serializers serializers, GenericBookmarkEntry object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.properties != null) {
      result
        ..add('qProperties')
        ..add(serializers.serialize(object.properties,
            specifiedType: const FullType(GenericBookmarkProperties)));
    }
    if (object.bookmark != null) {
      result
        ..add('qBookmark')
        ..add(serializers.serialize(object.bookmark,
            specifiedType: const FullType(NxBookmark)));
    }

    return result;
  }

  @override
  GenericBookmarkEntry deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenericBookmarkEntryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qProperties':
          result.properties.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GenericBookmarkProperties))
              as GenericBookmarkProperties);
          break;
        case 'qBookmark':
          result.bookmark.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxBookmark)) as NxBookmark);
          break;
      }
    }

    return result.build();
  }
}

class _$GenericBookmarkEntry extends GenericBookmarkEntry {
  @override
  final GenericBookmarkProperties properties;
  @override
  final NxBookmark bookmark;

  factory _$GenericBookmarkEntry(
          [void updates(GenericBookmarkEntryBuilder b)]) =>
      (new GenericBookmarkEntryBuilder()..update(updates)).build();

  _$GenericBookmarkEntry._({this.properties, this.bookmark}) : super._();

  @override
  GenericBookmarkEntry rebuild(void updates(GenericBookmarkEntryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GenericBookmarkEntryBuilder toBuilder() =>
      new GenericBookmarkEntryBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GenericBookmarkEntry) return false;
    return properties == other.properties && bookmark == other.bookmark;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, properties.hashCode), bookmark.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenericBookmarkEntry')
          ..add('properties', properties)
          ..add('bookmark', bookmark))
        .toString();
  }
}

class GenericBookmarkEntryBuilder
    implements Builder<GenericBookmarkEntry, GenericBookmarkEntryBuilder> {
  _$GenericBookmarkEntry _$v;

  GenericBookmarkPropertiesBuilder _properties;
  GenericBookmarkPropertiesBuilder get properties =>
      _$this._properties ??= new GenericBookmarkPropertiesBuilder();
  set properties(GenericBookmarkPropertiesBuilder properties) =>
      _$this._properties = properties;

  NxBookmarkBuilder _bookmark;
  NxBookmarkBuilder get bookmark =>
      _$this._bookmark ??= new NxBookmarkBuilder();
  set bookmark(NxBookmarkBuilder bookmark) => _$this._bookmark = bookmark;

  GenericBookmarkEntryBuilder();

  GenericBookmarkEntryBuilder get _$this {
    if (_$v != null) {
      _properties = _$v.properties?.toBuilder();
      _bookmark = _$v.bookmark?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenericBookmarkEntry other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GenericBookmarkEntry;
  }

  @override
  void update(void updates(GenericBookmarkEntryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GenericBookmarkEntry build() {
    _$GenericBookmarkEntry _$result;
    try {
      _$result = _$v ??
          new _$GenericBookmarkEntry._(
              properties: _properties?.build(), bookmark: _bookmark?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'properties';
        _properties?.build();
        _$failedField = 'bookmark';
        _bookmark?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenericBookmarkEntry', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
