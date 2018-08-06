// GENERATED CODE - DO NOT MODIFY BY HAND

part of static_content_list_item;

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

Serializer<StaticContentListItem> _$staticContentListItemSerializer =
    new _$StaticContentListItemSerializer();

class _$StaticContentListItemSerializer
    implements StructuredSerializer<StaticContentListItem> {
  @override
  final Iterable<Type> types = const [
    StaticContentListItem,
    _$StaticContentListItem
  ];
  @override
  final String wireName = 'StaticContentListItem';

  @override
  Iterable serialize(Serializers serializers, StaticContentListItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.urlDef != null) {
      result
        ..add('qUrlDef')
        ..add(serializers.serialize(object.urlDef,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('qUrl')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  StaticContentListItem deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StaticContentListItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qUrlDef':
          result.urlDef = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qUrl':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StaticContentListItem extends StaticContentListItem {
  @override
  final String urlDef;
  @override
  final String url;

  factory _$StaticContentListItem(
          [void updates(StaticContentListItemBuilder b)]) =>
      (new StaticContentListItemBuilder()..update(updates)).build();

  _$StaticContentListItem._({this.urlDef, this.url}) : super._();

  @override
  StaticContentListItem rebuild(void updates(StaticContentListItemBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StaticContentListItemBuilder toBuilder() =>
      new StaticContentListItemBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! StaticContentListItem) return false;
    return urlDef == other.urlDef && url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, urlDef.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StaticContentListItem')
          ..add('urlDef', urlDef)
          ..add('url', url))
        .toString();
  }
}

class StaticContentListItemBuilder
    implements Builder<StaticContentListItem, StaticContentListItemBuilder> {
  _$StaticContentListItem _$v;

  String _urlDef;
  String get urlDef => _$this._urlDef;
  set urlDef(String urlDef) => _$this._urlDef = urlDef;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  StaticContentListItemBuilder();

  StaticContentListItemBuilder get _$this {
    if (_$v != null) {
      _urlDef = _$v.urlDef;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StaticContentListItem other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$StaticContentListItem;
  }

  @override
  void update(void updates(StaticContentListItemBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$StaticContentListItem build() {
    final _$result =
        _$v ?? new _$StaticContentListItem._(urlDef: urlDef, url: url);
    replace(_$result);
    return _$result;
  }
}
