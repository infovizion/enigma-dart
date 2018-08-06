// GENERATED CODE - DO NOT MODIFY BY HAND

part of drive_info;

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

Serializer<DriveInfo> _$driveInfoSerializer = new _$DriveInfoSerializer();

class _$DriveInfoSerializer implements StructuredSerializer<DriveInfo> {
  @override
  final Iterable<Type> types = const [DriveInfo, _$DriveInfo];
  @override
  final String wireName = 'DriveInfo';

  @override
  Iterable serialize(Serializers serializers, DriveInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.drive != null) {
      result
        ..add('qDrive')
        ..add(serializers.serialize(object.drive,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('qType')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.typeIdentifier != null) {
      result
        ..add('qTypeIdentifier')
        ..add(serializers.serialize(object.typeIdentifier,
            specifiedType: const FullType(String)));
    }
    if (object.unnamedDrive != null) {
      result
        ..add('qUnnamedDrive')
        ..add(serializers.serialize(object.unnamedDrive,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  DriveInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DriveInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qDrive':
          result.drive = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qType':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qName':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qTypeIdentifier':
          result.typeIdentifier = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qUnnamedDrive':
          result.unnamedDrive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$DriveInfo extends DriveInfo {
  @override
  final String drive;
  @override
  final String type;
  @override
  final String name;
  @override
  final String typeIdentifier;
  @override
  final bool unnamedDrive;

  factory _$DriveInfo([void updates(DriveInfoBuilder b)]) =>
      (new DriveInfoBuilder()..update(updates)).build();

  _$DriveInfo._(
      {this.drive,
      this.type,
      this.name,
      this.typeIdentifier,
      this.unnamedDrive})
      : super._();

  @override
  DriveInfo rebuild(void updates(DriveInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DriveInfoBuilder toBuilder() => new DriveInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! DriveInfo) return false;
    return drive == other.drive &&
        type == other.type &&
        name == other.name &&
        typeIdentifier == other.typeIdentifier &&
        unnamedDrive == other.unnamedDrive;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, drive.hashCode), type.hashCode), name.hashCode),
            typeIdentifier.hashCode),
        unnamedDrive.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DriveInfo')
          ..add('drive', drive)
          ..add('type', type)
          ..add('name', name)
          ..add('typeIdentifier', typeIdentifier)
          ..add('unnamedDrive', unnamedDrive))
        .toString();
  }
}

class DriveInfoBuilder implements Builder<DriveInfo, DriveInfoBuilder> {
  _$DriveInfo _$v;

  String _drive;
  String get drive => _$this._drive;
  set drive(String drive) => _$this._drive = drive;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _typeIdentifier;
  String get typeIdentifier => _$this._typeIdentifier;
  set typeIdentifier(String typeIdentifier) =>
      _$this._typeIdentifier = typeIdentifier;

  bool _unnamedDrive;
  bool get unnamedDrive => _$this._unnamedDrive;
  set unnamedDrive(bool unnamedDrive) => _$this._unnamedDrive = unnamedDrive;

  DriveInfoBuilder();

  DriveInfoBuilder get _$this {
    if (_$v != null) {
      _drive = _$v.drive;
      _type = _$v.type;
      _name = _$v.name;
      _typeIdentifier = _$v.typeIdentifier;
      _unnamedDrive = _$v.unnamedDrive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DriveInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$DriveInfo;
  }

  @override
  void update(void updates(DriveInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DriveInfo build() {
    final _$result = _$v ??
        new _$DriveInfo._(
            drive: drive,
            type: type,
            name: name,
            typeIdentifier: typeIdentifier,
            unnamedDrive: unnamedDrive);
    replace(_$result);
    return _$result;
  }
}
