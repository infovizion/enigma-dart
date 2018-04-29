// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_combination_options;

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

Serializer<SearchCombinationOptions> _$searchCombinationOptionsSerializer =
    new _$SearchCombinationOptionsSerializer();

class _$SearchCombinationOptionsSerializer
    implements StructuredSerializer<SearchCombinationOptions> {
  @override
  final Iterable<Type> types = const [
    SearchCombinationOptions,
    _$SearchCombinationOptions
  ];
  @override
  final String wireName = 'SearchCombinationOptions';

  @override
  Iterable serialize(Serializers serializers, SearchCombinationOptions object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.searchFields != null) {
      result
        ..add('searchFields')
        ..add(serializers.serialize(object.searchFields,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.context != null) {
      result
        ..add('context')
        ..add(serializers.serialize(object.context,
            specifiedType: const FullType(String)));
    }
    if (object.charEncoding != null) {
      result
        ..add('charEncoding')
        ..add(serializers.serialize(object.charEncoding,
            specifiedType: const FullType(String)));
    }
    if (object.attributes != null) {
      result
        ..add('attributes')
        ..add(serializers.serialize(object.attributes,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  SearchCombinationOptions deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SearchCombinationOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'searchFields':
          result.searchFields.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'context':
          result.context = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'charEncoding':
          result.charEncoding = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'attributes':
          result.attributes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$SearchCombinationOptions extends SearchCombinationOptions {
  @override
  final BuiltList<NxCell> searchFields;
  @override
  final String context;
  @override
  final String charEncoding;
  @override
  final BuiltList<NxCell> attributes;

  factory _$SearchCombinationOptions(
          [void updates(SearchCombinationOptionsBuilder b)]) =>
      (new SearchCombinationOptionsBuilder()..update(updates)).build();

  _$SearchCombinationOptions._(
      {this.searchFields, this.context, this.charEncoding, this.attributes})
      : super._();

  @override
  SearchCombinationOptions rebuild(
          void updates(SearchCombinationOptionsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchCombinationOptionsBuilder toBuilder() =>
      new SearchCombinationOptionsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchCombinationOptions) return false;
    return searchFields == other.searchFields &&
        context == other.context &&
        charEncoding == other.charEncoding &&
        attributes == other.attributes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, searchFields.hashCode), context.hashCode),
            charEncoding.hashCode),
        attributes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchCombinationOptions')
          ..add('searchFields', searchFields)
          ..add('context', context)
          ..add('charEncoding', charEncoding)
          ..add('attributes', attributes))
        .toString();
  }
}

class SearchCombinationOptionsBuilder
    implements
        Builder<SearchCombinationOptions, SearchCombinationOptionsBuilder> {
  _$SearchCombinationOptions _$v;

  ListBuilder<NxCell> _searchFields;
  ListBuilder<NxCell> get searchFields =>
      _$this._searchFields ??= new ListBuilder<NxCell>();
  set searchFields(ListBuilder<NxCell> searchFields) =>
      _$this._searchFields = searchFields;

  String _context;
  String get context => _$this._context;
  set context(String context) => _$this._context = context;

  String _charEncoding;
  String get charEncoding => _$this._charEncoding;
  set charEncoding(String charEncoding) => _$this._charEncoding = charEncoding;

  ListBuilder<NxCell> _attributes;
  ListBuilder<NxCell> get attributes =>
      _$this._attributes ??= new ListBuilder<NxCell>();
  set attributes(ListBuilder<NxCell> attributes) =>
      _$this._attributes = attributes;

  SearchCombinationOptionsBuilder();

  SearchCombinationOptionsBuilder get _$this {
    if (_$v != null) {
      _searchFields = _$v.searchFields?.toBuilder();
      _context = _$v.context;
      _charEncoding = _$v.charEncoding;
      _attributes = _$v.attributes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchCombinationOptions other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchCombinationOptions;
  }

  @override
  void update(void updates(SearchCombinationOptionsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchCombinationOptions build() {
    _$SearchCombinationOptions _$result;
    try {
      _$result = _$v ??
          new _$SearchCombinationOptions._(
              searchFields: _searchFields?.build(),
              context: context,
              charEncoding: charEncoding,
              attributes: _attributes?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'searchFields';
        _searchFields?.build();

        _$failedField = 'attributes';
        _attributes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchCombinationOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
