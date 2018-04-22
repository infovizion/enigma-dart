// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_axis_ticks;

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

Serializer<NxAxisTicks> _$nxAxisTicksSerializer = new _$NxAxisTicksSerializer();

class _$NxAxisTicksSerializer implements StructuredSerializer<NxAxisTicks> {
  @override
  final Iterable<Type> types = const [NxAxisTicks, _$NxAxisTicks];
  @override
  final String wireName = 'NxAxisTicks';

  @override
  Iterable serialize(Serializers serializers, NxAxisTicks object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.ticks != null) {
      result
        ..add('ticks')
        ..add(serializers.serialize(object.ticks,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  NxAxisTicks deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxAxisTicksBuilder();

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
        case 'tags':
          result.tags = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'ticks':
          result.ticks = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
      }
    }

    return result.build();
  }
}

class _$NxAxisTicks extends NxAxisTicks {
  @override
  final String name;
  @override
  final List<NxCell> tags;
  @override
  final List<NxCell> ticks;

  factory _$NxAxisTicks([void updates(NxAxisTicksBuilder b)]) =>
      (new NxAxisTicksBuilder()..update(updates)).build();

  _$NxAxisTicks._({this.name, this.tags, this.ticks}) : super._();

  @override
  NxAxisTicks rebuild(void updates(NxAxisTicksBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxAxisTicksBuilder toBuilder() => new NxAxisTicksBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxAxisTicks) return false;
    return name == other.name && tags == other.tags && ticks == other.ticks;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), tags.hashCode), ticks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxAxisTicks')
          ..add('name', name)
          ..add('tags', tags)
          ..add('ticks', ticks))
        .toString();
  }
}

class NxAxisTicksBuilder implements Builder<NxAxisTicks, NxAxisTicksBuilder> {
  _$NxAxisTicks _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  List<NxCell> _tags;
  List<NxCell> get tags => _$this._tags;
  set tags(List<NxCell> tags) => _$this._tags = tags;

  List<NxCell> _ticks;
  List<NxCell> get ticks => _$this._ticks;
  set ticks(List<NxCell> ticks) => _$this._ticks = ticks;

  NxAxisTicksBuilder();

  NxAxisTicksBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _tags = _$v.tags;
      _ticks = _$v.ticks;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxAxisTicks other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxAxisTicks;
  }

  @override
  void update(void updates(NxAxisTicksBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxAxisTicks build() {
    final _$result =
        _$v ?? new _$NxAxisTicks._(name: name, tags: tags, ticks: ticks);
    replace(_$result);
    return _$result;
  }
}
