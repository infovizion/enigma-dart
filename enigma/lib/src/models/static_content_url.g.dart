// GENERATED CODE - DO NOT MODIFY BY HAND

part of static_content_url;

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

Serializer<StaticContentUrl> _$staticContentUrlSerializer =
    new _$StaticContentUrlSerializer();

class _$StaticContentUrlSerializer
    implements StructuredSerializer<StaticContentUrl> {
  @override
  final Iterable<Type> types = const [StaticContentUrl, _$StaticContentUrl];
  @override
  final String wireName = 'StaticContentUrl';

  @override
  Iterable serialize(Serializers serializers, StaticContentUrl object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('qUrl')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  StaticContentUrl deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StaticContentUrlBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qUrl':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StaticContentUrl extends StaticContentUrl {
  @override
  final String url;

  factory _$StaticContentUrl([void updates(StaticContentUrlBuilder b)]) =>
      (new StaticContentUrlBuilder()..update(updates)).build();

  _$StaticContentUrl._({this.url}) : super._();

  @override
  StaticContentUrl rebuild(void updates(StaticContentUrlBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StaticContentUrlBuilder toBuilder() =>
      new StaticContentUrlBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! StaticContentUrl) return false;
    return url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(0, url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StaticContentUrl')..add('url', url))
        .toString();
  }
}

class StaticContentUrlBuilder
    implements Builder<StaticContentUrl, StaticContentUrlBuilder> {
  _$StaticContentUrl _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  StaticContentUrlBuilder();

  StaticContentUrlBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StaticContentUrl other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$StaticContentUrl;
  }

  @override
  void update(void updates(StaticContentUrlBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$StaticContentUrl build() {
    final _$result = _$v ?? new _$StaticContentUrl._(url: url);
    replace(_$result);
    return _$result;
  }
}
