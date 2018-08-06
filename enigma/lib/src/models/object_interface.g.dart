// GENERATED CODE - DO NOT MODIFY BY HAND

part of object_interface;

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

Serializer<ObjectInterface> _$objectInterfaceSerializer =
    new _$ObjectInterfaceSerializer();

class _$ObjectInterfaceSerializer
    implements StructuredSerializer<ObjectInterface> {
  @override
  final Iterable<Type> types = const [ObjectInterface, _$ObjectInterface];
  @override
  final String wireName = 'ObjectInterface';

  @override
  Iterable serialize(Serializers serializers, ObjectInterface object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.type != null) {
      result
        ..add('qType')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.handle != null) {
      result
        ..add('qHandle')
        ..add(serializers.serialize(object.handle,
            specifiedType: const FullType(int)));
    }
    if (object.genericType != null) {
      result
        ..add('qGenericType')
        ..add(serializers.serialize(object.genericType,
            specifiedType: const FullType(String)));
    }
    if (object.genericId != null) {
      result
        ..add('qGenericId')
        ..add(serializers.serialize(object.genericId,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  ObjectInterface deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ObjectInterfaceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qType':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qHandle':
          result.handle = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qGenericType':
          result.genericType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qGenericId':
          result.genericId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ObjectInterface extends ObjectInterface {
  @override
  final String type;
  @override
  final int handle;
  @override
  final String genericType;
  @override
  final String genericId;

  factory _$ObjectInterface([void updates(ObjectInterfaceBuilder b)]) =>
      (new ObjectInterfaceBuilder()..update(updates)).build();

  _$ObjectInterface._(
      {this.type, this.handle, this.genericType, this.genericId})
      : super._();

  @override
  ObjectInterface rebuild(void updates(ObjectInterfaceBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectInterfaceBuilder toBuilder() =>
      new ObjectInterfaceBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ObjectInterface) return false;
    return type == other.type &&
        handle == other.handle &&
        genericType == other.genericType &&
        genericId == other.genericId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, type.hashCode), handle.hashCode), genericType.hashCode),
        genericId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ObjectInterface')
          ..add('type', type)
          ..add('handle', handle)
          ..add('genericType', genericType)
          ..add('genericId', genericId))
        .toString();
  }
}

class ObjectInterfaceBuilder
    implements Builder<ObjectInterface, ObjectInterfaceBuilder> {
  _$ObjectInterface _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _handle;
  int get handle => _$this._handle;
  set handle(int handle) => _$this._handle = handle;

  String _genericType;
  String get genericType => _$this._genericType;
  set genericType(String genericType) => _$this._genericType = genericType;

  String _genericId;
  String get genericId => _$this._genericId;
  set genericId(String genericId) => _$this._genericId = genericId;

  ObjectInterfaceBuilder();

  ObjectInterfaceBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _handle = _$v.handle;
      _genericType = _$v.genericType;
      _genericId = _$v.genericId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectInterface other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ObjectInterface;
  }

  @override
  void update(void updates(ObjectInterfaceBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ObjectInterface build() {
    final _$result = _$v ??
        new _$ObjectInterface._(
            type: type,
            handle: handle,
            genericType: genericType,
            genericId: genericId);
    replace(_$result);
    return _$result;
  }
}
