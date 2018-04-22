// GENERATED CODE - DO NOT MODIFY BY HAND

part of connection;

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

Serializer<Connection> _$connectionSerializer = new _$ConnectionSerializer();

class _$ConnectionSerializer implements StructuredSerializer<Connection> {
  @override
  final Iterable<Type> types = const [Connection, _$Connection];
  @override
  final String wireName = 'Connection';

  @override
  Iterable serialize(Serializers serializers, Connection object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.connectionString != null) {
      result
        ..add('connectionString')
        ..add(serializers.serialize(object.connectionString,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.userName != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(object.userName,
            specifiedType: const FullType(String)));
    }
    if (object.password != null) {
      result
        ..add('password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(String)));
    }
    if (object.modifiedDate != null) {
      result
        ..add('modifiedDate')
        ..add(serializers.serialize(object.modifiedDate,
            specifiedType: const FullType(String)));
    }
    if (object.meta != null) {
      result
        ..add('meta')
        ..add(serializers.serialize(object.meta,
            specifiedType: const FullType(NxMeta)));
    }
    if (object.logOn != null) {
      result
        ..add('logOn')
        ..add(serializers.serialize(object.logOn,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Connection deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ConnectionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'connectionString':
          result.connectionString = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'modifiedDate':
          result.modifiedDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxMeta)) as NxMeta);
          break;
        case 'logOn':
          result.logOn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Connection extends Connection {
  @override
  final String id;
  @override
  final String name;
  @override
  final String connectionString;
  @override
  final String type;
  @override
  final String userName;
  @override
  final String password;
  @override
  final String modifiedDate;
  @override
  final NxMeta meta;
  @override
  final String logOn;

  factory _$Connection([void updates(ConnectionBuilder b)]) =>
      (new ConnectionBuilder()..update(updates)).build();

  _$Connection._(
      {this.id,
      this.name,
      this.connectionString,
      this.type,
      this.userName,
      this.password,
      this.modifiedDate,
      this.meta,
      this.logOn})
      : super._();

  @override
  Connection rebuild(void updates(ConnectionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ConnectionBuilder toBuilder() => new ConnectionBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Connection) return false;
    return id == other.id &&
        name == other.name &&
        connectionString == other.connectionString &&
        type == other.type &&
        userName == other.userName &&
        password == other.password &&
        modifiedDate == other.modifiedDate &&
        meta == other.meta &&
        logOn == other.logOn;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), name.hashCode),
                                connectionString.hashCode),
                            type.hashCode),
                        userName.hashCode),
                    password.hashCode),
                modifiedDate.hashCode),
            meta.hashCode),
        logOn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Connection')
          ..add('id', id)
          ..add('name', name)
          ..add('connectionString', connectionString)
          ..add('type', type)
          ..add('userName', userName)
          ..add('password', password)
          ..add('modifiedDate', modifiedDate)
          ..add('meta', meta)
          ..add('logOn', logOn))
        .toString();
  }
}

class ConnectionBuilder implements Builder<Connection, ConnectionBuilder> {
  _$Connection _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _connectionString;
  String get connectionString => _$this._connectionString;
  set connectionString(String connectionString) =>
      _$this._connectionString = connectionString;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _modifiedDate;
  String get modifiedDate => _$this._modifiedDate;
  set modifiedDate(String modifiedDate) => _$this._modifiedDate = modifiedDate;

  NxMetaBuilder _meta;
  NxMetaBuilder get meta => _$this._meta ??= new NxMetaBuilder();
  set meta(NxMetaBuilder meta) => _$this._meta = meta;

  String _logOn;
  String get logOn => _$this._logOn;
  set logOn(String logOn) => _$this._logOn = logOn;

  ConnectionBuilder();

  ConnectionBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _connectionString = _$v.connectionString;
      _type = _$v.type;
      _userName = _$v.userName;
      _password = _$v.password;
      _modifiedDate = _$v.modifiedDate;
      _meta = _$v.meta?.toBuilder();
      _logOn = _$v.logOn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Connection other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Connection;
  }

  @override
  void update(void updates(ConnectionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Connection build() {
    _$Connection _$result;
    try {
      _$result = _$v ??
          new _$Connection._(
              id: id,
              name: name,
              connectionString: connectionString,
              type: type,
              userName: userName,
              password: password,
              modifiedDate: modifiedDate,
              meta: _meta?.build(),
              logOn: logOn);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Connection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
