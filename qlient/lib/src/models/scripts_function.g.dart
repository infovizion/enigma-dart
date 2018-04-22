// GENERATED CODE - DO NOT MODIFY BY HAND

part of scripts_function;

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

Serializer<ScriptsFunction> _$scriptsFunctionSerializer =
    new _$ScriptsFunctionSerializer();

class _$ScriptsFunctionSerializer
    implements StructuredSerializer<ScriptsFunction> {
  @override
  final Iterable<Type> types = const [ScriptsFunction, _$ScriptsFunction];
  @override
  final String wireName = 'ScriptsFunction';

  @override
  Iterable serialize(Serializers serializers, ScriptsFunction object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.group != null) {
      result
        ..add('group')
        ..add(serializers.serialize(object.group,
            specifiedType: const FullType(String)));
    }
    if (object.signature != null) {
      result
        ..add('signature')
        ..add(serializers.serialize(object.signature,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  ScriptsFunction deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ScriptsFunctionBuilder();

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
        case 'group':
          result.group = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'signature':
          result.signature = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ScriptsFunction extends ScriptsFunction {
  @override
  final String name;
  @override
  final String group;
  @override
  final String signature;

  factory _$ScriptsFunction([void updates(ScriptsFunctionBuilder b)]) =>
      (new ScriptsFunctionBuilder()..update(updates)).build();

  _$ScriptsFunction._({this.name, this.group, this.signature}) : super._();

  @override
  ScriptsFunction rebuild(void updates(ScriptsFunctionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ScriptsFunctionBuilder toBuilder() =>
      new ScriptsFunctionBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ScriptsFunction) return false;
    return name == other.name &&
        group == other.group &&
        signature == other.signature;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), group.hashCode), signature.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScriptsFunction')
          ..add('name', name)
          ..add('group', group)
          ..add('signature', signature))
        .toString();
  }
}

class ScriptsFunctionBuilder
    implements Builder<ScriptsFunction, ScriptsFunctionBuilder> {
  _$ScriptsFunction _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _group;
  String get group => _$this._group;
  set group(String group) => _$this._group = group;

  String _signature;
  String get signature => _$this._signature;
  set signature(String signature) => _$this._signature = signature;

  ScriptsFunctionBuilder();

  ScriptsFunctionBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _group = _$v.group;
      _signature = _$v.signature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScriptsFunction other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ScriptsFunction;
  }

  @override
  void update(void updates(ScriptsFunctionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ScriptsFunction build() {
    final _$result = _$v ??
        new _$ScriptsFunction._(name: name, group: group, signature: signature);
    replace(_$result);
    return _$result;
  }
}
