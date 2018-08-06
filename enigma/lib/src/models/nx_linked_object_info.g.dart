// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_linked_object_info;

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

Serializer<NxLinkedObjectInfo> _$nxLinkedObjectInfoSerializer =
    new _$NxLinkedObjectInfoSerializer();

class _$NxLinkedObjectInfoSerializer
    implements StructuredSerializer<NxLinkedObjectInfo> {
  @override
  final Iterable<Type> types = const [NxLinkedObjectInfo, _$NxLinkedObjectInfo];
  @override
  final String wireName = 'NxLinkedObjectInfo';

  @override
  Iterable serialize(Serializers serializers, NxLinkedObjectInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.rootId != null) {
      result
        ..add('qRootId')
        ..add(serializers.serialize(object.rootId,
            specifiedType: const FullType(String)));
    }
    if (object.info != null) {
      result
        ..add('qInfo')
        ..add(serializers.serialize(object.info,
            specifiedType: const FullType(NxInfo)));
    }

    return result;
  }

  @override
  NxLinkedObjectInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxLinkedObjectInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qRootId':
          result.rootId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qInfo':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxInfo)) as NxInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$NxLinkedObjectInfo extends NxLinkedObjectInfo {
  @override
  final String rootId;
  @override
  final NxInfo info;

  factory _$NxLinkedObjectInfo([void updates(NxLinkedObjectInfoBuilder b)]) =>
      (new NxLinkedObjectInfoBuilder()..update(updates)).build();

  _$NxLinkedObjectInfo._({this.rootId, this.info}) : super._();

  @override
  NxLinkedObjectInfo rebuild(void updates(NxLinkedObjectInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxLinkedObjectInfoBuilder toBuilder() =>
      new NxLinkedObjectInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxLinkedObjectInfo) return false;
    return rootId == other.rootId && info == other.info;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, rootId.hashCode), info.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxLinkedObjectInfo')
          ..add('rootId', rootId)
          ..add('info', info))
        .toString();
  }
}

class NxLinkedObjectInfoBuilder
    implements Builder<NxLinkedObjectInfo, NxLinkedObjectInfoBuilder> {
  _$NxLinkedObjectInfo _$v;

  String _rootId;
  String get rootId => _$this._rootId;
  set rootId(String rootId) => _$this._rootId = rootId;

  NxInfoBuilder _info;
  NxInfoBuilder get info => _$this._info ??= new NxInfoBuilder();
  set info(NxInfoBuilder info) => _$this._info = info;

  NxLinkedObjectInfoBuilder();

  NxLinkedObjectInfoBuilder get _$this {
    if (_$v != null) {
      _rootId = _$v.rootId;
      _info = _$v.info?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxLinkedObjectInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxLinkedObjectInfo;
  }

  @override
  void update(void updates(NxLinkedObjectInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxLinkedObjectInfo build() {
    _$NxLinkedObjectInfo _$result;
    try {
      _$result = _$v ??
          new _$NxLinkedObjectInfo._(rootId: rootId, info: _info?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxLinkedObjectInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
