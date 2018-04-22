// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_variable_list_item;

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

Serializer<NxVariableListItem> _$nxVariableListItemSerializer =
    new _$NxVariableListItemSerializer();

class _$NxVariableListItemSerializer
    implements StructuredSerializer<NxVariableListItem> {
  @override
  final Iterable<Type> types = const [NxVariableListItem, _$NxVariableListItem];
  @override
  final String wireName = 'NxVariableListItem';

  @override
  Iterable serialize(Serializers serializers, NxVariableListItem object,
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
    if (object.definition != null) {
      result
        ..add('definition')
        ..add(serializers.serialize(object.definition,
            specifiedType: const FullType(String)));
    }
    if (object.isConfig != null) {
      result
        ..add('isConfig')
        ..add(serializers.serialize(object.isConfig,
            specifiedType: const FullType(bool)));
    }
    if (object.isReserved != null) {
      result
        ..add('isReserved')
        ..add(serializers.serialize(object.isReserved,
            specifiedType: const FullType(bool)));
    }
    if (object.meta != null) {
      result
        ..add('meta')
        ..add(serializers.serialize(object.meta,
            specifiedType: const FullType(NxMeta)));
    }
    if (object.info != null) {
      result
        ..add('info')
        ..add(serializers.serialize(object.info,
            specifiedType: const FullType(NxInfo)));
    }
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(JsonObject)));
    }
    if (object.isScriptCreated != null) {
      result
        ..add('isScriptCreated')
        ..add(serializers.serialize(object.isScriptCreated,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  NxVariableListItem deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxVariableListItemBuilder();

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
        case 'definition':
          result.definition = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isConfig':
          result.isConfig = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isReserved':
          result.isReserved = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxMeta)) as NxMeta);
          break;
        case 'info':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxInfo)) as NxInfo);
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
        case 'isScriptCreated':
          result.isScriptCreated = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$NxVariableListItem extends NxVariableListItem {
  @override
  final String name;
  @override
  final String description;
  @override
  final String definition;
  @override
  final bool isConfig;
  @override
  final bool isReserved;
  @override
  final NxMeta meta;
  @override
  final NxInfo info;
  @override
  final JsonObject data;
  @override
  final bool isScriptCreated;

  factory _$NxVariableListItem([void updates(NxVariableListItemBuilder b)]) =>
      (new NxVariableListItemBuilder()..update(updates)).build();

  _$NxVariableListItem._(
      {this.name,
      this.description,
      this.definition,
      this.isConfig,
      this.isReserved,
      this.meta,
      this.info,
      this.data,
      this.isScriptCreated})
      : super._();

  @override
  NxVariableListItem rebuild(void updates(NxVariableListItemBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxVariableListItemBuilder toBuilder() =>
      new NxVariableListItemBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxVariableListItem) return false;
    return name == other.name &&
        description == other.description &&
        definition == other.definition &&
        isConfig == other.isConfig &&
        isReserved == other.isReserved &&
        meta == other.meta &&
        info == other.info &&
        data == other.data &&
        isScriptCreated == other.isScriptCreated;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, name.hashCode),
                                    description.hashCode),
                                definition.hashCode),
                            isConfig.hashCode),
                        isReserved.hashCode),
                    meta.hashCode),
                info.hashCode),
            data.hashCode),
        isScriptCreated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxVariableListItem')
          ..add('name', name)
          ..add('description', description)
          ..add('definition', definition)
          ..add('isConfig', isConfig)
          ..add('isReserved', isReserved)
          ..add('meta', meta)
          ..add('info', info)
          ..add('data', data)
          ..add('isScriptCreated', isScriptCreated))
        .toString();
  }
}

class NxVariableListItemBuilder
    implements Builder<NxVariableListItem, NxVariableListItemBuilder> {
  _$NxVariableListItem _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _definition;
  String get definition => _$this._definition;
  set definition(String definition) => _$this._definition = definition;

  bool _isConfig;
  bool get isConfig => _$this._isConfig;
  set isConfig(bool isConfig) => _$this._isConfig = isConfig;

  bool _isReserved;
  bool get isReserved => _$this._isReserved;
  set isReserved(bool isReserved) => _$this._isReserved = isReserved;

  NxMetaBuilder _meta;
  NxMetaBuilder get meta => _$this._meta ??= new NxMetaBuilder();
  set meta(NxMetaBuilder meta) => _$this._meta = meta;

  NxInfoBuilder _info;
  NxInfoBuilder get info => _$this._info ??= new NxInfoBuilder();
  set info(NxInfoBuilder info) => _$this._info = info;

  JsonObject _data;
  JsonObject get data => _$this._data;
  set data(JsonObject data) => _$this._data = data;

  bool _isScriptCreated;
  bool get isScriptCreated => _$this._isScriptCreated;
  set isScriptCreated(bool isScriptCreated) =>
      _$this._isScriptCreated = isScriptCreated;

  NxVariableListItemBuilder();

  NxVariableListItemBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _description = _$v.description;
      _definition = _$v.definition;
      _isConfig = _$v.isConfig;
      _isReserved = _$v.isReserved;
      _meta = _$v.meta?.toBuilder();
      _info = _$v.info?.toBuilder();
      _data = _$v.data;
      _isScriptCreated = _$v.isScriptCreated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxVariableListItem other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxVariableListItem;
  }

  @override
  void update(void updates(NxVariableListItemBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxVariableListItem build() {
    _$NxVariableListItem _$result;
    try {
      _$result = _$v ??
          new _$NxVariableListItem._(
              name: name,
              description: description,
              definition: definition,
              isConfig: isConfig,
              isReserved: isReserved,
              meta: _meta?.build(),
              info: _info?.build(),
              data: data,
              isScriptCreated: isScriptCreated);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'meta';
        _meta?.build();
        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxVariableListItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
