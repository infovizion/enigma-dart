// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_info;

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

Serializer<NxInfo> _$nxInfoSerializer = new _$NxInfoSerializer();

class _$NxInfoSerializer implements StructuredSerializer<NxInfo> {
  @override
  final Iterable<Type> types = const [NxInfo, _$NxInfo];
  @override
  final String wireName = 'NxInfo';

  @override
  Iterable serialize(Serializers serializers, NxInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('qId')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('qType')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  NxInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qId':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qType':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NxInfo extends NxInfo {
  @override
  final String id;
  @override
  final String type;

  factory _$NxInfo([void updates(NxInfoBuilder b)]) =>
      (new NxInfoBuilder()..update(updates)).build();

  _$NxInfo._({this.id, this.type}) : super._();

  @override
  NxInfo rebuild(void updates(NxInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxInfoBuilder toBuilder() => new NxInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxInfo) return false;
    return id == other.id && type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxInfo')
          ..add('id', id)
          ..add('type', type))
        .toString();
  }
}

class NxInfoBuilder implements Builder<NxInfo, NxInfoBuilder> {
  _$NxInfo _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  NxInfoBuilder();

  NxInfoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxInfo;
  }

  @override
  void update(void updates(NxInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxInfo build() {
    final _$result = _$v ?? new _$NxInfo._(id: id, type: type);
    replace(_$result);
    return _$result;
  }
}
