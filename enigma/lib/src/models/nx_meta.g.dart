// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_meta;

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

Serializer<NxMeta> _$nxMetaSerializer = new _$NxMetaSerializer();

class _$NxMetaSerializer implements StructuredSerializer<NxMeta> {
  @override
  final Iterable<Type> types = const [NxMeta, _$NxMeta];
  @override
  final String wireName = 'NxMeta';

  @override
  Iterable serialize(Serializers serializers, NxMeta object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  NxMeta deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxMetaBuilder();

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
      }
    }

    return result.build();
  }
}

class _$NxMeta extends NxMeta {
  @override
  final String name;

  factory _$NxMeta([void updates(NxMetaBuilder b)]) =>
      (new NxMetaBuilder()..update(updates)).build();

  _$NxMeta._({this.name}) : super._();

  @override
  NxMeta rebuild(void updates(NxMetaBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxMetaBuilder toBuilder() => new NxMetaBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxMeta) return false;
    return name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxMeta')..add('name', name))
        .toString();
  }
}

class NxMetaBuilder implements Builder<NxMeta, NxMetaBuilder> {
  _$NxMeta _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  NxMetaBuilder();

  NxMetaBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxMeta other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxMeta;
  }

  @override
  void update(void updates(NxMetaBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxMeta build() {
    final _$result = _$v ?? new _$NxMeta._(name: name);
    replace(_$result);
    return _$result;
  }
}
