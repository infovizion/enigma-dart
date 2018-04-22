// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_page_tree_level;

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

Serializer<NxPageTreeLevel> _$nxPageTreeLevelSerializer =
    new _$NxPageTreeLevelSerializer();

class _$NxPageTreeLevelSerializer
    implements StructuredSerializer<NxPageTreeLevel> {
  @override
  final Iterable<Type> types = const [NxPageTreeLevel, _$NxPageTreeLevel];
  @override
  final String wireName = 'NxPageTreeLevel';

  @override
  Iterable serialize(Serializers serializers, NxPageTreeLevel object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.left != null) {
      result
        ..add('left')
        ..add(serializers.serialize(object.left,
            specifiedType: const FullType(int)));
    }
    if (object.depth != null) {
      result
        ..add('depth')
        ..add(serializers.serialize(object.depth,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  NxPageTreeLevel deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxPageTreeLevelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'left':
          result.left = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'depth':
          result.depth = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$NxPageTreeLevel extends NxPageTreeLevel {
  @override
  final int left;
  @override
  final int depth;

  factory _$NxPageTreeLevel([void updates(NxPageTreeLevelBuilder b)]) =>
      (new NxPageTreeLevelBuilder()..update(updates)).build();

  _$NxPageTreeLevel._({this.left, this.depth}) : super._();

  @override
  NxPageTreeLevel rebuild(void updates(NxPageTreeLevelBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxPageTreeLevelBuilder toBuilder() =>
      new NxPageTreeLevelBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxPageTreeLevel) return false;
    return left == other.left && depth == other.depth;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, left.hashCode), depth.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxPageTreeLevel')
          ..add('left', left)
          ..add('depth', depth))
        .toString();
  }
}

class NxPageTreeLevelBuilder
    implements Builder<NxPageTreeLevel, NxPageTreeLevelBuilder> {
  _$NxPageTreeLevel _$v;

  int _left;
  int get left => _$this._left;
  set left(int left) => _$this._left = left;

  int _depth;
  int get depth => _$this._depth;
  set depth(int depth) => _$this._depth = depth;

  NxPageTreeLevelBuilder();

  NxPageTreeLevelBuilder get _$this {
    if (_$v != null) {
      _left = _$v.left;
      _depth = _$v.depth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxPageTreeLevel other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxPageTreeLevel;
  }

  @override
  void update(void updates(NxPageTreeLevelBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxPageTreeLevel build() {
    final _$result = _$v ?? new _$NxPageTreeLevel._(left: left, depth: depth);
    replace(_$result);
    return _$result;
  }
}
