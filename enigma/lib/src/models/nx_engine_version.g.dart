// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_engine_version;

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

Serializer<NxEngineVersion> _$nxEngineVersionSerializer =
    new _$NxEngineVersionSerializer();

class _$NxEngineVersionSerializer
    implements StructuredSerializer<NxEngineVersion> {
  @override
  final Iterable<Type> types = const [NxEngineVersion, _$NxEngineVersion];
  @override
  final String wireName = 'NxEngineVersion';

  @override
  Iterable serialize(Serializers serializers, NxEngineVersion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.componentVersion != null) {
      result
        ..add('qComponentVersion')
        ..add(serializers.serialize(object.componentVersion,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  NxEngineVersion deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxEngineVersionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qComponentVersion':
          result.componentVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NxEngineVersion extends NxEngineVersion {
  @override
  final String componentVersion;

  factory _$NxEngineVersion([void updates(NxEngineVersionBuilder b)]) =>
      (new NxEngineVersionBuilder()..update(updates)).build();

  _$NxEngineVersion._({this.componentVersion}) : super._();

  @override
  NxEngineVersion rebuild(void updates(NxEngineVersionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxEngineVersionBuilder toBuilder() =>
      new NxEngineVersionBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxEngineVersion) return false;
    return componentVersion == other.componentVersion;
  }

  @override
  int get hashCode {
    return $jf($jc(0, componentVersion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxEngineVersion')
          ..add('componentVersion', componentVersion))
        .toString();
  }
}

class NxEngineVersionBuilder
    implements Builder<NxEngineVersion, NxEngineVersionBuilder> {
  _$NxEngineVersion _$v;

  String _componentVersion;
  String get componentVersion => _$this._componentVersion;
  set componentVersion(String componentVersion) =>
      _$this._componentVersion = componentVersion;

  NxEngineVersionBuilder();

  NxEngineVersionBuilder get _$this {
    if (_$v != null) {
      _componentVersion = _$v.componentVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxEngineVersion other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxEngineVersion;
  }

  @override
  void update(void updates(NxEngineVersionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxEngineVersion build() {
    final _$result =
        _$v ?? new _$NxEngineVersion._(componentVersion: componentVersion);
    replace(_$result);
    return _$result;
  }
}
