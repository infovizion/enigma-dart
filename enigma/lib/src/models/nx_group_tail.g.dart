// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_group_tail;

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

Serializer<NxGroupTail> _$nxGroupTailSerializer = new _$NxGroupTailSerializer();

class _$NxGroupTailSerializer implements StructuredSerializer<NxGroupTail> {
  @override
  final Iterable<Type> types = const [NxGroupTail, _$NxGroupTail];
  @override
  final String wireName = 'NxGroupTail';

  @override
  Iterable serialize(Serializers serializers, NxGroupTail object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.up != null) {
      result
        ..add('qUp')
        ..add(serializers.serialize(object.up,
            specifiedType: const FullType(int)));
    }
    if (object.down != null) {
      result
        ..add('qDown')
        ..add(serializers.serialize(object.down,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  NxGroupTail deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxGroupTailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qUp':
          result.up = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qDown':
          result.down = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$NxGroupTail extends NxGroupTail {
  @override
  final int up;
  @override
  final int down;

  factory _$NxGroupTail([void updates(NxGroupTailBuilder b)]) =>
      (new NxGroupTailBuilder()..update(updates)).build();

  _$NxGroupTail._({this.up, this.down}) : super._();

  @override
  NxGroupTail rebuild(void updates(NxGroupTailBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxGroupTailBuilder toBuilder() => new NxGroupTailBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxGroupTail) return false;
    return up == other.up && down == other.down;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, up.hashCode), down.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxGroupTail')
          ..add('up', up)
          ..add('down', down))
        .toString();
  }
}

class NxGroupTailBuilder implements Builder<NxGroupTail, NxGroupTailBuilder> {
  _$NxGroupTail _$v;

  int _up;
  int get up => _$this._up;
  set up(int up) => _$this._up = up;

  int _down;
  int get down => _$this._down;
  set down(int down) => _$this._down = down;

  NxGroupTailBuilder();

  NxGroupTailBuilder get _$this {
    if (_$v != null) {
      _up = _$v.up;
      _down = _$v.down;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxGroupTail other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxGroupTail;
  }

  @override
  void update(void updates(NxGroupTailBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxGroupTail build() {
    final _$result = _$v ?? new _$NxGroupTail._(up: up, down: down);
    replace(_$result);
    return _$result;
  }
}
