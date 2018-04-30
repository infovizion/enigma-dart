// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_attribute;

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

Serializer<SearchAttribute> _$searchAttributeSerializer =
    new _$SearchAttributeSerializer();

class _$SearchAttributeSerializer
    implements StructuredSerializer<SearchAttribute> {
  @override
  final Iterable<Type> types = const [SearchAttribute, _$SearchAttribute];
  @override
  final String wireName = 'SearchAttribute';

  @override
  Iterable serialize(Serializers serializers, SearchAttribute object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.key != null) {
      result
        ..add('qKey')
        ..add(serializers.serialize(object.key,
            specifiedType: const FullType(String)));
    }
    if (object.value != null) {
      result
        ..add('qValue')
        ..add(serializers.serialize(object.value,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  SearchAttribute deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SearchAttributeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qKey':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qValue':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchAttribute extends SearchAttribute {
  @override
  final String key;
  @override
  final String value;

  factory _$SearchAttribute([void updates(SearchAttributeBuilder b)]) =>
      (new SearchAttributeBuilder()..update(updates)).build();

  _$SearchAttribute._({this.key, this.value}) : super._();

  @override
  SearchAttribute rebuild(void updates(SearchAttributeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchAttributeBuilder toBuilder() =>
      new SearchAttributeBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchAttribute) return false;
    return key == other.key && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, key.hashCode), value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchAttribute')
          ..add('key', key)
          ..add('value', value))
        .toString();
  }
}

class SearchAttributeBuilder
    implements Builder<SearchAttribute, SearchAttributeBuilder> {
  _$SearchAttribute _$v;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  SearchAttributeBuilder();

  SearchAttributeBuilder get _$this {
    if (_$v != null) {
      _key = _$v.key;
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchAttribute other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchAttribute;
  }

  @override
  void update(void updates(SearchAttributeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchAttribute build() {
    final _$result = _$v ?? new _$SearchAttribute._(key: key, value: value);
    replace(_$result);
    return _$result;
  }
}
