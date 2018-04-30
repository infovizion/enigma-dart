// GENERATED CODE - DO NOT MODIFY BY HAND

part of database;

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

Serializer<Database> _$databaseSerializer = new _$DatabaseSerializer();

class _$DatabaseSerializer implements StructuredSerializer<Database> {
  @override
  final Iterable<Type> types = const [Database, _$Database];
  @override
  final String wireName = 'Database';

  @override
  Iterable serialize(Serializers serializers, Database object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.isDefault != null) {
      result
        ..add('qIsDefault')
        ..add(serializers.serialize(object.isDefault,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  Database deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new DatabaseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qName':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qIsDefault':
          result.isDefault = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Database extends Database {
  @override
  final String name;
  @override
  final bool isDefault;

  factory _$Database([void updates(DatabaseBuilder b)]) =>
      (new DatabaseBuilder()..update(updates)).build();

  _$Database._({this.name, this.isDefault}) : super._();

  @override
  Database rebuild(void updates(DatabaseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DatabaseBuilder toBuilder() => new DatabaseBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Database) return false;
    return name == other.name && isDefault == other.isDefault;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), isDefault.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Database')
          ..add('name', name)
          ..add('isDefault', isDefault))
        .toString();
  }
}

class DatabaseBuilder implements Builder<Database, DatabaseBuilder> {
  _$Database _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  bool _isDefault;
  bool get isDefault => _$this._isDefault;
  set isDefault(bool isDefault) => _$this._isDefault = isDefault;

  DatabaseBuilder();

  DatabaseBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _isDefault = _$v.isDefault;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Database other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Database;
  }

  @override
  void update(void updates(DatabaseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Database build() {
    final _$result = _$v ?? new _$Database._(name: name, isDefault: isDefault);
    replace(_$result);
    return _$result;
  }
}
