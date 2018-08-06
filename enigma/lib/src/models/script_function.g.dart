// GENERATED CODE - DO NOT MODIFY BY HAND

part of script_function;

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

Serializer<ScriptFunction> _$scriptFunctionSerializer =
    new _$ScriptFunctionSerializer();

class _$ScriptFunctionSerializer
    implements StructuredSerializer<ScriptFunction> {
  @override
  final Iterable<Type> types = const [ScriptFunction, _$ScriptFunction];
  @override
  final String wireName = 'ScriptFunction';

  @override
  Iterable serialize(Serializers serializers, ScriptFunction object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.group != null) {
      result
        ..add('qGroup')
        ..add(serializers.serialize(object.group,
            specifiedType: const FullType(String)));
    }
    if (object.signature != null) {
      result
        ..add('qSignature')
        ..add(serializers.serialize(object.signature,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  ScriptFunction deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScriptFunctionBuilder();

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
        case 'qGroup':
          result.group = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qSignature':
          result.signature = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ScriptFunction extends ScriptFunction {
  @override
  final String name;
  @override
  final String group;
  @override
  final String signature;

  factory _$ScriptFunction([void updates(ScriptFunctionBuilder b)]) =>
      (new ScriptFunctionBuilder()..update(updates)).build();

  _$ScriptFunction._({this.name, this.group, this.signature}) : super._();

  @override
  ScriptFunction rebuild(void updates(ScriptFunctionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ScriptFunctionBuilder toBuilder() =>
      new ScriptFunctionBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ScriptFunction) return false;
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
    return (newBuiltValueToStringHelper('ScriptFunction')
          ..add('name', name)
          ..add('group', group)
          ..add('signature', signature))
        .toString();
  }
}

class ScriptFunctionBuilder
    implements Builder<ScriptFunction, ScriptFunctionBuilder> {
  _$ScriptFunction _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _group;
  String get group => _$this._group;
  set group(String group) => _$this._group = group;

  String _signature;
  String get signature => _$this._signature;
  set signature(String signature) => _$this._signature = signature;

  ScriptFunctionBuilder();

  ScriptFunctionBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _group = _$v.group;
      _signature = _$v.signature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScriptFunction other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ScriptFunction;
  }

  @override
  void update(void updates(ScriptFunctionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ScriptFunction build() {
    final _$result = _$v ??
        new _$ScriptFunction._(name: name, group: group, signature: signature);
    replace(_$result);
    return _$result;
  }
}
