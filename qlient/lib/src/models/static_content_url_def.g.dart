// GENERATED CODE - DO NOT MODIFY BY HAND

part of static_content_url_def;

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

Serializer<StaticContentUrlDef> _$staticContentUrlDefSerializer =
    new _$StaticContentUrlDefSerializer();

class _$StaticContentUrlDefSerializer
    implements StructuredSerializer<StaticContentUrlDef> {
  @override
  final Iterable<Type> types = const [
    StaticContentUrlDef,
    _$StaticContentUrlDef
  ];
  @override
  final String wireName = 'StaticContentUrlDef';

  @override
  Iterable serialize(Serializers serializers, StaticContentUrlDef object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  StaticContentUrlDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new StaticContentUrlDefBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StaticContentUrlDef extends StaticContentUrlDef {
  @override
  final String url;

  factory _$StaticContentUrlDef([void updates(StaticContentUrlDefBuilder b)]) =>
      (new StaticContentUrlDefBuilder()..update(updates)).build();

  _$StaticContentUrlDef._({this.url}) : super._();

  @override
  StaticContentUrlDef rebuild(void updates(StaticContentUrlDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StaticContentUrlDefBuilder toBuilder() =>
      new StaticContentUrlDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! StaticContentUrlDef) return false;
    return url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(0, url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StaticContentUrlDef')..add('url', url))
        .toString();
  }
}

class StaticContentUrlDefBuilder
    implements Builder<StaticContentUrlDef, StaticContentUrlDefBuilder> {
  _$StaticContentUrlDef _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  StaticContentUrlDefBuilder();

  StaticContentUrlDefBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StaticContentUrlDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$StaticContentUrlDef;
  }

  @override
  void update(void updates(StaticContentUrlDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$StaticContentUrlDef build() {
    final _$result = _$v ?? new _$StaticContentUrlDef._(url: url);
    replace(_$result);
    return _$result;
  }
}
