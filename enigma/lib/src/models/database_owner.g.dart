// GENERATED CODE - DO NOT MODIFY BY HAND

part of database_owner;

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

Serializer<DatabaseOwner> _$databaseOwnerSerializer =
    new _$DatabaseOwnerSerializer();

class _$DatabaseOwnerSerializer implements StructuredSerializer<DatabaseOwner> {
  @override
  final Iterable<Type> types = const [DatabaseOwner, _$DatabaseOwner];
  @override
  final String wireName = 'DatabaseOwner';

  @override
  Iterable serialize(Serializers serializers, DatabaseOwner object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  DatabaseOwner deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DatabaseOwnerBuilder();

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
      }
    }

    return result.build();
  }
}

class _$DatabaseOwner extends DatabaseOwner {
  @override
  final String name;

  factory _$DatabaseOwner([void updates(DatabaseOwnerBuilder b)]) =>
      (new DatabaseOwnerBuilder()..update(updates)).build();

  _$DatabaseOwner._({this.name}) : super._();

  @override
  DatabaseOwner rebuild(void updates(DatabaseOwnerBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DatabaseOwnerBuilder toBuilder() => new DatabaseOwnerBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! DatabaseOwner) return false;
    return name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DatabaseOwner')..add('name', name))
        .toString();
  }
}

class DatabaseOwnerBuilder
    implements Builder<DatabaseOwner, DatabaseOwnerBuilder> {
  _$DatabaseOwner _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DatabaseOwnerBuilder();

  DatabaseOwnerBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatabaseOwner other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$DatabaseOwner;
  }

  @override
  void update(void updates(DatabaseOwnerBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DatabaseOwner build() {
    final _$result = _$v ?? new _$DatabaseOwner._(name: name);
    replace(_$result);
    return _$result;
  }
}
