// GENERATED CODE - DO NOT MODIFY BY HAND

part of content_library_list_item;

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

Serializer<ContentLibraryListItem> _$contentLibraryListItemSerializer =
    new _$ContentLibraryListItemSerializer();

class _$ContentLibraryListItemSerializer
    implements StructuredSerializer<ContentLibraryListItem> {
  @override
  final Iterable<Type> types = const [
    ContentLibraryListItem,
    _$ContentLibraryListItem
  ];
  @override
  final String wireName = 'ContentLibraryListItem';

  @override
  Iterable serialize(Serializers serializers, ContentLibraryListItem object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.appSpecific != null) {
      result
        ..add('qAppSpecific')
        ..add(serializers.serialize(object.appSpecific,
            specifiedType: const FullType(bool)));
    }
    if (object.meta != null) {
      result
        ..add('qMeta')
        ..add(serializers.serialize(object.meta,
            specifiedType: const FullType(NxMeta)));
    }

    return result;
  }

  @override
  ContentLibraryListItem deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ContentLibraryListItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qName':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qAppSpecific':
          result.appSpecific = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qMeta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxMeta)) as NxMeta);
          break;
      }
    }

    return result.build();
  }
}

class _$ContentLibraryListItem extends ContentLibraryListItem {
  @override
  final String name;
  @override
  final bool appSpecific;
  @override
  final NxMeta meta;

  factory _$ContentLibraryListItem(
          [void updates(ContentLibraryListItemBuilder b)]) =>
      (new ContentLibraryListItemBuilder()..update(updates)).build();

  _$ContentLibraryListItem._({this.name, this.appSpecific, this.meta})
      : super._();

  @override
  ContentLibraryListItem rebuild(
          void updates(ContentLibraryListItemBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentLibraryListItemBuilder toBuilder() =>
      new ContentLibraryListItemBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ContentLibraryListItem) return false;
    return name == other.name &&
        appSpecific == other.appSpecific &&
        meta == other.meta;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), appSpecific.hashCode), meta.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContentLibraryListItem')
          ..add('name', name)
          ..add('appSpecific', appSpecific)
          ..add('meta', meta))
        .toString();
  }
}

class ContentLibraryListItemBuilder
    implements Builder<ContentLibraryListItem, ContentLibraryListItemBuilder> {
  _$ContentLibraryListItem _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  bool _appSpecific;
  bool get appSpecific => _$this._appSpecific;
  set appSpecific(bool appSpecific) => _$this._appSpecific = appSpecific;

  NxMetaBuilder _meta;
  NxMetaBuilder get meta => _$this._meta ??= new NxMetaBuilder();
  set meta(NxMetaBuilder meta) => _$this._meta = meta;

  ContentLibraryListItemBuilder();

  ContentLibraryListItemBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _appSpecific = _$v.appSpecific;
      _meta = _$v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContentLibraryListItem other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ContentLibraryListItem;
  }

  @override
  void update(void updates(ContentLibraryListItemBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ContentLibraryListItem build() {
    _$ContentLibraryListItem _$result;
    try {
      _$result = _$v ??
          new _$ContentLibraryListItem._(
              name: name, appSpecific: appSpecific, meta: _meta?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ContentLibraryListItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
