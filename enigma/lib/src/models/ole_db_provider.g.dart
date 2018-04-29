// GENERATED CODE - DO NOT MODIFY BY HAND

part of ole_db_provider;

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

Serializer<OleDbProvider> _$oleDbProviderSerializer =
    new _$OleDbProviderSerializer();

class _$OleDbProviderSerializer implements StructuredSerializer<OleDbProvider> {
  @override
  final Iterable<Type> types = const [OleDbProvider, _$OleDbProvider];
  @override
  final String wireName = 'OleDbProvider';

  @override
  Iterable serialize(Serializers serializers, OleDbProvider object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.bit32 != null) {
      result
        ..add('bit32')
        ..add(serializers.serialize(object.bit32,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  OleDbProvider deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new OleDbProviderBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bit32':
          result.bit32 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$OleDbProvider extends OleDbProvider {
  @override
  final String name;
  @override
  final String description;
  @override
  final bool bit32;

  factory _$OleDbProvider([void updates(OleDbProviderBuilder b)]) =>
      (new OleDbProviderBuilder()..update(updates)).build();

  _$OleDbProvider._({this.name, this.description, this.bit32}) : super._();

  @override
  OleDbProvider rebuild(void updates(OleDbProviderBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  OleDbProviderBuilder toBuilder() => new OleDbProviderBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! OleDbProvider) return false;
    return name == other.name &&
        description == other.description &&
        bit32 == other.bit32;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), description.hashCode), bit32.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OleDbProvider')
          ..add('name', name)
          ..add('description', description)
          ..add('bit32', bit32))
        .toString();
  }
}

class OleDbProviderBuilder
    implements Builder<OleDbProvider, OleDbProviderBuilder> {
  _$OleDbProvider _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  bool _bit32;
  bool get bit32 => _$this._bit32;
  set bit32(bool bit32) => _$this._bit32 = bit32;

  OleDbProviderBuilder();

  OleDbProviderBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _description = _$v.description;
      _bit32 = _$v.bit32;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OleDbProvider other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$OleDbProvider;
  }

  @override
  void update(void updates(OleDbProviderBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$OleDbProvider build() {
    final _$result = _$v ??
        new _$OleDbProvider._(
            name: name, description: description, bit32: bit32);
    replace(_$result);
    return _$result;
  }
}
