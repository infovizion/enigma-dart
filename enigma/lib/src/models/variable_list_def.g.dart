// GENERATED CODE - DO NOT MODIFY BY HAND

part of variable_list_def;

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

Serializer<VariableListDef> _$variableListDefSerializer =
    new _$VariableListDefSerializer();

class _$VariableListDefSerializer
    implements StructuredSerializer<VariableListDef> {
  @override
  final Iterable<Type> types = const [VariableListDef, _$VariableListDef];
  @override
  final String wireName = 'VariableListDef';

  @override
  Iterable serialize(Serializers serializers, VariableListDef object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.type != null) {
      result
        ..add('qType')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.showReserved != null) {
      result
        ..add('qShowReserved')
        ..add(serializers.serialize(object.showReserved,
            specifiedType: const FullType(bool)));
    }
    if (object.showConfig != null) {
      result
        ..add('qShowConfig')
        ..add(serializers.serialize(object.showConfig,
            specifiedType: const FullType(bool)));
    }
    if (object.data != null) {
      result
        ..add('qData')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(JsonObject)));
    }

    return result;
  }

  @override
  VariableListDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VariableListDefBuilder();

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
        case 'qShowReserved':
          result.showReserved = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qShowConfig':
          result.showConfig = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qData':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
      }
    }

    return result.build();
  }
}

class _$VariableListDef extends VariableListDef {
  @override
  final String type;
  @override
  final bool showReserved;
  @override
  final bool showConfig;
  @override
  final JsonObject data;

  factory _$VariableListDef([void updates(VariableListDefBuilder b)]) =>
      (new VariableListDefBuilder()..update(updates)).build();

  _$VariableListDef._(
      {this.type, this.showReserved, this.showConfig, this.data})
      : super._();

  @override
  VariableListDef rebuild(void updates(VariableListDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  VariableListDefBuilder toBuilder() =>
      new VariableListDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! VariableListDef) return false;
    return type == other.type &&
        showReserved == other.showReserved &&
        showConfig == other.showConfig &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, type.hashCode), showReserved.hashCode),
            showConfig.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VariableListDef')
          ..add('type', type)
          ..add('showReserved', showReserved)
          ..add('showConfig', showConfig)
          ..add('data', data))
        .toString();
  }
}

class VariableListDefBuilder
    implements Builder<VariableListDef, VariableListDefBuilder> {
  _$VariableListDef _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  bool _showReserved;
  bool get showReserved => _$this._showReserved;
  set showReserved(bool showReserved) => _$this._showReserved = showReserved;

  bool _showConfig;
  bool get showConfig => _$this._showConfig;
  set showConfig(bool showConfig) => _$this._showConfig = showConfig;

  JsonObject _data;
  JsonObject get data => _$this._data;
  set data(JsonObject data) => _$this._data = data;

  VariableListDefBuilder();

  VariableListDefBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _showReserved = _$v.showReserved;
      _showConfig = _$v.showConfig;
      _data = _$v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VariableListDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$VariableListDef;
  }

  @override
  void update(void updates(VariableListDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$VariableListDef build() {
    final _$result = _$v ??
        new _$VariableListDef._(
            type: type,
            showReserved: showReserved,
            showConfig: showConfig,
            data: data);
    replace(_$result);
    return _$result;
  }
}
