// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_object_options;

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

Serializer<SearchObjectOptions> _$searchObjectOptionsSerializer =
    new _$SearchObjectOptionsSerializer();

class _$SearchObjectOptionsSerializer
    implements StructuredSerializer<SearchObjectOptions> {
  @override
  final Iterable<Type> types = const [
    SearchObjectOptions,
    _$SearchObjectOptions
  ];
  @override
  final String wireName = 'SearchObjectOptions';

  @override
  Iterable serialize(Serializers serializers, SearchObjectOptions object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.attributes != null) {
      result
        ..add('attributes')
        ..add(serializers.serialize(object.attributes,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.charEncoding != null) {
      result
        ..add('charEncoding')
        ..add(serializers.serialize(object.charEncoding,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  SearchObjectOptions deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SearchObjectOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'attributes':
          result.attributes = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'charEncoding':
          result.charEncoding = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchObjectOptions extends SearchObjectOptions {
  @override
  final List<NxCell> attributes;
  @override
  final String charEncoding;

  factory _$SearchObjectOptions([void updates(SearchObjectOptionsBuilder b)]) =>
      (new SearchObjectOptionsBuilder()..update(updates)).build();

  _$SearchObjectOptions._({this.attributes, this.charEncoding}) : super._();

  @override
  SearchObjectOptions rebuild(void updates(SearchObjectOptionsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchObjectOptionsBuilder toBuilder() =>
      new SearchObjectOptionsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchObjectOptions) return false;
    return attributes == other.attributes && charEncoding == other.charEncoding;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, attributes.hashCode), charEncoding.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchObjectOptions')
          ..add('attributes', attributes)
          ..add('charEncoding', charEncoding))
        .toString();
  }
}

class SearchObjectOptionsBuilder
    implements Builder<SearchObjectOptions, SearchObjectOptionsBuilder> {
  _$SearchObjectOptions _$v;

  List<NxCell> _attributes;
  List<NxCell> get attributes => _$this._attributes;
  set attributes(List<NxCell> attributes) => _$this._attributes = attributes;

  String _charEncoding;
  String get charEncoding => _$this._charEncoding;
  set charEncoding(String charEncoding) => _$this._charEncoding = charEncoding;

  SearchObjectOptionsBuilder();

  SearchObjectOptionsBuilder get _$this {
    if (_$v != null) {
      _attributes = _$v.attributes;
      _charEncoding = _$v.charEncoding;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchObjectOptions other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchObjectOptions;
  }

  @override
  void update(void updates(SearchObjectOptionsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchObjectOptions build() {
    final _$result = _$v ??
        new _$SearchObjectOptions._(
            attributes: attributes, charEncoding: charEncoding);
    replace(_$result);
    return _$result;
  }
}
