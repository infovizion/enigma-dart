// GENERATED CODE - DO NOT MODIFY BY HAND

part of odbc_dsn;

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

Serializer<OdbcDsn> _$odbcDsnSerializer = new _$OdbcDsnSerializer();

class _$OdbcDsnSerializer implements StructuredSerializer<OdbcDsn> {
  @override
  final Iterable<Type> types = const [OdbcDsn, _$OdbcDsn];
  @override
  final String wireName = 'OdbcDsn';

  @override
  Iterable serialize(Serializers serializers, OdbcDsn object,
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
    if (object.userOnly != null) {
      result
        ..add('userOnly')
        ..add(serializers.serialize(object.userOnly,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  OdbcDsn deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new OdbcDsnBuilder();

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
        case 'userOnly':
          result.userOnly = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$OdbcDsn extends OdbcDsn {
  @override
  final String name;
  @override
  final String description;
  @override
  final bool bit32;
  @override
  final bool userOnly;

  factory _$OdbcDsn([void updates(OdbcDsnBuilder b)]) =>
      (new OdbcDsnBuilder()..update(updates)).build();

  _$OdbcDsn._({this.name, this.description, this.bit32, this.userOnly})
      : super._();

  @override
  OdbcDsn rebuild(void updates(OdbcDsnBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  OdbcDsnBuilder toBuilder() => new OdbcDsnBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! OdbcDsn) return false;
    return name == other.name &&
        description == other.description &&
        bit32 == other.bit32 &&
        userOnly == other.userOnly;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), description.hashCode), bit32.hashCode),
        userOnly.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OdbcDsn')
          ..add('name', name)
          ..add('description', description)
          ..add('bit32', bit32)
          ..add('userOnly', userOnly))
        .toString();
  }
}

class OdbcDsnBuilder implements Builder<OdbcDsn, OdbcDsnBuilder> {
  _$OdbcDsn _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  bool _bit32;
  bool get bit32 => _$this._bit32;
  set bit32(bool bit32) => _$this._bit32 = bit32;

  bool _userOnly;
  bool get userOnly => _$this._userOnly;
  set userOnly(bool userOnly) => _$this._userOnly = userOnly;

  OdbcDsnBuilder();

  OdbcDsnBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _description = _$v.description;
      _bit32 = _$v.bit32;
      _userOnly = _$v.userOnly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OdbcDsn other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$OdbcDsn;
  }

  @override
  void update(void updates(OdbcDsnBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$OdbcDsn build() {
    final _$result = _$v ??
        new _$OdbcDsn._(
            name: name,
            description: description,
            bit32: bit32,
            userOnly: userOnly);
    replace(_$result);
    return _$result;
  }
}
