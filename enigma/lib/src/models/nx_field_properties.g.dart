// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_field_properties;

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

Serializer<NxFieldProperties> _$nxFieldPropertiesSerializer =
    new _$NxFieldPropertiesSerializer();

class _$NxFieldPropertiesSerializer
    implements StructuredSerializer<NxFieldProperties> {
  @override
  final Iterable<Type> types = const [NxFieldProperties, _$NxFieldProperties];
  @override
  final String wireName = 'NxFieldProperties';

  @override
  Iterable serialize(Serializers serializers, NxFieldProperties object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.oneAndOnlyOne != null) {
      result
        ..add('qOneAndOnlyOne')
        ..add(serializers.serialize(object.oneAndOnlyOne,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  NxFieldProperties deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxFieldPropertiesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qOneAndOnlyOne':
          result.oneAndOnlyOne = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$NxFieldProperties extends NxFieldProperties {
  @override
  final bool oneAndOnlyOne;

  factory _$NxFieldProperties([void updates(NxFieldPropertiesBuilder b)]) =>
      (new NxFieldPropertiesBuilder()..update(updates)).build();

  _$NxFieldProperties._({this.oneAndOnlyOne}) : super._();

  @override
  NxFieldProperties rebuild(void updates(NxFieldPropertiesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxFieldPropertiesBuilder toBuilder() =>
      new NxFieldPropertiesBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxFieldProperties) return false;
    return oneAndOnlyOne == other.oneAndOnlyOne;
  }

  @override
  int get hashCode {
    return $jf($jc(0, oneAndOnlyOne.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxFieldProperties')
          ..add('oneAndOnlyOne', oneAndOnlyOne))
        .toString();
  }
}

class NxFieldPropertiesBuilder
    implements Builder<NxFieldProperties, NxFieldPropertiesBuilder> {
  _$NxFieldProperties _$v;

  bool _oneAndOnlyOne;
  bool get oneAndOnlyOne => _$this._oneAndOnlyOne;
  set oneAndOnlyOne(bool oneAndOnlyOne) =>
      _$this._oneAndOnlyOne = oneAndOnlyOne;

  NxFieldPropertiesBuilder();

  NxFieldPropertiesBuilder get _$this {
    if (_$v != null) {
      _oneAndOnlyOne = _$v.oneAndOnlyOne;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxFieldProperties other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxFieldProperties;
  }

  @override
  void update(void updates(NxFieldPropertiesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxFieldProperties build() {
    final _$result =
        _$v ?? new _$NxFieldProperties._(oneAndOnlyOne: oneAndOnlyOne);
    replace(_$result);
    return _$result;
  }
}
