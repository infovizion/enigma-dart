// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_patch;

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

Serializer<NxPatch> _$nxPatchSerializer = new _$NxPatchSerializer();

class _$NxPatchSerializer implements StructuredSerializer<NxPatch> {
  @override
  final Iterable<Type> types = const [NxPatch, _$NxPatch];
  @override
  final String wireName = 'NxPatch';

  @override
  Iterable serialize(Serializers serializers, NxPatch object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.op != null) {
      result
        ..add('qOp')
        ..add(serializers.serialize(object.op,
            specifiedType: const FullType(String)));
    }
    if (object.path != null) {
      result
        ..add('qPath')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    if (object.value != null) {
      result
        ..add('qValue')
        ..add(serializers.serialize(object.value,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  NxPatch deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxPatchBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qOp':
          result.op = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qPath':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qValue':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NxPatch extends NxPatch {
  @override
  final String op;
  @override
  final String path;
  @override
  final String value;

  factory _$NxPatch([void updates(NxPatchBuilder b)]) =>
      (new NxPatchBuilder()..update(updates)).build();

  _$NxPatch._({this.op, this.path, this.value}) : super._();

  @override
  NxPatch rebuild(void updates(NxPatchBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxPatchBuilder toBuilder() => new NxPatchBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxPatch) return false;
    return op == other.op && path == other.path && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, op.hashCode), path.hashCode), value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxPatch')
          ..add('op', op)
          ..add('path', path)
          ..add('value', value))
        .toString();
  }
}

class NxPatchBuilder implements Builder<NxPatch, NxPatchBuilder> {
  _$NxPatch _$v;

  String _op;
  String get op => _$this._op;
  set op(String op) => _$this._op = op;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  NxPatchBuilder();

  NxPatchBuilder get _$this {
    if (_$v != null) {
      _op = _$v.op;
      _path = _$v.path;
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxPatch other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxPatch;
  }

  @override
  void update(void updates(NxPatchBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxPatch build() {
    final _$result = _$v ?? new _$NxPatch._(op: op, path: path, value: value);
    replace(_$result);
    return _$result;
  }
}
