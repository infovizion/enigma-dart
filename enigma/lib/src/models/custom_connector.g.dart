// GENERATED CODE - DO NOT MODIFY BY HAND

part of custom_connector;

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

Serializer<CustomConnector> _$customConnectorSerializer =
    new _$CustomConnectorSerializer();

class _$CustomConnectorSerializer
    implements StructuredSerializer<CustomConnector> {
  @override
  final Iterable<Type> types = const [CustomConnector, _$CustomConnector];
  @override
  final String wireName = 'CustomConnector';

  @override
  Iterable serialize(Serializers serializers, CustomConnector object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.provider != null) {
      result
        ..add('provider')
        ..add(serializers.serialize(object.provider,
            specifiedType: const FullType(String)));
    }
    if (object.parent != null) {
      result
        ..add('parent')
        ..add(serializers.serialize(object.parent,
            specifiedType: const FullType(String)));
    }
    if (object.displayName != null) {
      result
        ..add('displayName')
        ..add(serializers.serialize(object.displayName,
            specifiedType: const FullType(String)));
    }
    if (object.machineMode != null) {
      result
        ..add('machineMode')
        ..add(serializers.serialize(object.machineMode,
            specifiedType: const FullType(String)));
    }
    if (object.supportFileStreaming != null) {
      result
        ..add('supportFileStreaming')
        ..add(serializers.serialize(object.supportFileStreaming,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  CustomConnector deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new CustomConnectorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'provider':
          result.provider = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parent':
          result.parent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'machineMode':
          result.machineMode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'supportFileStreaming':
          result.supportFileStreaming = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$CustomConnector extends CustomConnector {
  @override
  final String provider;
  @override
  final String parent;
  @override
  final String displayName;
  @override
  final String machineMode;
  @override
  final bool supportFileStreaming;

  factory _$CustomConnector([void updates(CustomConnectorBuilder b)]) =>
      (new CustomConnectorBuilder()..update(updates)).build();

  _$CustomConnector._(
      {this.provider,
      this.parent,
      this.displayName,
      this.machineMode,
      this.supportFileStreaming})
      : super._();

  @override
  CustomConnector rebuild(void updates(CustomConnectorBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomConnectorBuilder toBuilder() =>
      new CustomConnectorBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! CustomConnector) return false;
    return provider == other.provider &&
        parent == other.parent &&
        displayName == other.displayName &&
        machineMode == other.machineMode &&
        supportFileStreaming == other.supportFileStreaming;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, provider.hashCode), parent.hashCode),
                displayName.hashCode),
            machineMode.hashCode),
        supportFileStreaming.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CustomConnector')
          ..add('provider', provider)
          ..add('parent', parent)
          ..add('displayName', displayName)
          ..add('machineMode', machineMode)
          ..add('supportFileStreaming', supportFileStreaming))
        .toString();
  }
}

class CustomConnectorBuilder
    implements Builder<CustomConnector, CustomConnectorBuilder> {
  _$CustomConnector _$v;

  String _provider;
  String get provider => _$this._provider;
  set provider(String provider) => _$this._provider = provider;

  String _parent;
  String get parent => _$this._parent;
  set parent(String parent) => _$this._parent = parent;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _machineMode;
  String get machineMode => _$this._machineMode;
  set machineMode(String machineMode) => _$this._machineMode = machineMode;

  bool _supportFileStreaming;
  bool get supportFileStreaming => _$this._supportFileStreaming;
  set supportFileStreaming(bool supportFileStreaming) =>
      _$this._supportFileStreaming = supportFileStreaming;

  CustomConnectorBuilder();

  CustomConnectorBuilder get _$this {
    if (_$v != null) {
      _provider = _$v.provider;
      _parent = _$v.parent;
      _displayName = _$v.displayName;
      _machineMode = _$v.machineMode;
      _supportFileStreaming = _$v.supportFileStreaming;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomConnector other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CustomConnector;
  }

  @override
  void update(void updates(CustomConnectorBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CustomConnector build() {
    final _$result = _$v ??
        new _$CustomConnector._(
            provider: provider,
            parent: parent,
            displayName: displayName,
            machineMode: machineMode,
            supportFileStreaming: supportFileStreaming);
    replace(_$result);
    return _$result;
  }
}
