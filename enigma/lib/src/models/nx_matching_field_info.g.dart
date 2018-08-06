// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_matching_field_info;

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

Serializer<NxMatchingFieldInfo> _$nxMatchingFieldInfoSerializer =
    new _$NxMatchingFieldInfoSerializer();

class _$NxMatchingFieldInfoSerializer
    implements StructuredSerializer<NxMatchingFieldInfo> {
  @override
  final Iterable<Type> types = const [
    NxMatchingFieldInfo,
    _$NxMatchingFieldInfo
  ];
  @override
  final String wireName = 'NxMatchingFieldInfo';

  @override
  Iterable serialize(Serializers serializers, NxMatchingFieldInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.tags != null) {
      result
        ..add('qTags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }

    return result;
  }

  @override
  NxMatchingFieldInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxMatchingFieldInfoBuilder();

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
        case 'qTags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$NxMatchingFieldInfo extends NxMatchingFieldInfo {
  @override
  final String name;
  @override
  final BuiltList<String> tags;

  factory _$NxMatchingFieldInfo([void updates(NxMatchingFieldInfoBuilder b)]) =>
      (new NxMatchingFieldInfoBuilder()..update(updates)).build();

  _$NxMatchingFieldInfo._({this.name, this.tags}) : super._();

  @override
  NxMatchingFieldInfo rebuild(void updates(NxMatchingFieldInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxMatchingFieldInfoBuilder toBuilder() =>
      new NxMatchingFieldInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxMatchingFieldInfo) return false;
    return name == other.name && tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), tags.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxMatchingFieldInfo')
          ..add('name', name)
          ..add('tags', tags))
        .toString();
  }
}

class NxMatchingFieldInfoBuilder
    implements Builder<NxMatchingFieldInfo, NxMatchingFieldInfoBuilder> {
  _$NxMatchingFieldInfo _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  NxMatchingFieldInfoBuilder();

  NxMatchingFieldInfoBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _tags = _$v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxMatchingFieldInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxMatchingFieldInfo;
  }

  @override
  void update(void updates(NxMatchingFieldInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxMatchingFieldInfo build() {
    _$NxMatchingFieldInfo _$result;
    try {
      _$result =
          _$v ?? new _$NxMatchingFieldInfo._(name: name, tags: _tags?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxMatchingFieldInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
