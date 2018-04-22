// GENERATED CODE - DO NOT MODIFY BY HAND

part of media_list_item;

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

Serializer<MediaListItem> _$mediaListItemSerializer =
    new _$MediaListItemSerializer();

class _$MediaListItemSerializer implements StructuredSerializer<MediaListItem> {
  @override
  final Iterable<Type> types = const [MediaListItem, _$MediaListItem];
  @override
  final String wireName = 'MediaListItem';

  @override
  Iterable serialize(Serializers serializers, MediaListItem object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.urlDef != null) {
      result
        ..add('urlDef')
        ..add(serializers.serialize(object.urlDef,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  MediaListItem deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new MediaListItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'urlDef':
          result.urlDef = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MediaListItem extends MediaListItem {
  @override
  final String urlDef;
  @override
  final String url;

  factory _$MediaListItem([void updates(MediaListItemBuilder b)]) =>
      (new MediaListItemBuilder()..update(updates)).build();

  _$MediaListItem._({this.urlDef, this.url}) : super._();

  @override
  MediaListItem rebuild(void updates(MediaListItemBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaListItemBuilder toBuilder() => new MediaListItemBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! MediaListItem) return false;
    return urlDef == other.urlDef && url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, urlDef.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MediaListItem')
          ..add('urlDef', urlDef)
          ..add('url', url))
        .toString();
  }
}

class MediaListItemBuilder
    implements Builder<MediaListItem, MediaListItemBuilder> {
  _$MediaListItem _$v;

  String _urlDef;
  String get urlDef => _$this._urlDef;
  set urlDef(String urlDef) => _$this._urlDef = urlDef;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  MediaListItemBuilder();

  MediaListItemBuilder get _$this {
    if (_$v != null) {
      _urlDef = _$v.urlDef;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaListItem other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$MediaListItem;
  }

  @override
  void update(void updates(MediaListItemBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MediaListItem build() {
    final _$result = _$v ?? new _$MediaListItem._(urlDef: urlDef, url: url);
    replace(_$result);
    return _$result;
  }
}
