// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_container_entry;

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

Serializer<NxContainerEntry> _$nxContainerEntrySerializer =
    new _$NxContainerEntrySerializer();

class _$NxContainerEntrySerializer
    implements StructuredSerializer<NxContainerEntry> {
  @override
  final Iterable<Type> types = const [NxContainerEntry, _$NxContainerEntry];
  @override
  final String wireName = 'NxContainerEntry';

  @override
  Iterable serialize(Serializers serializers, NxContainerEntry object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.info != null) {
      result
        ..add('qInfo')
        ..add(serializers.serialize(object.info,
            specifiedType: const FullType(NxInfo)));
    }
    if (object.meta != null) {
      result
        ..add('qMeta')
        ..add(serializers.serialize(object.meta,
            specifiedType: const FullType(NxMeta)));
    }
    if (object.data != null) {
      result
        ..add('qData')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(JsonObject)));
    }

    return result;
  }

  @override
  NxContainerEntry deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxContainerEntryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qInfo':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxInfo)) as NxInfo);
          break;
        case 'qMeta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxMeta)) as NxMeta);
          break;
        case 'qData':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
      }
    }

    return result.build();
  }
}

class _$NxContainerEntry extends NxContainerEntry {
  @override
  final NxInfo info;
  @override
  final NxMeta meta;
  @override
  final JsonObject data;

  factory _$NxContainerEntry([void updates(NxContainerEntryBuilder b)]) =>
      (new NxContainerEntryBuilder()..update(updates)).build();

  _$NxContainerEntry._({this.info, this.meta, this.data}) : super._();

  @override
  NxContainerEntry rebuild(void updates(NxContainerEntryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxContainerEntryBuilder toBuilder() =>
      new NxContainerEntryBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxContainerEntry) return false;
    return info == other.info && meta == other.meta && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, info.hashCode), meta.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxContainerEntry')
          ..add('info', info)
          ..add('meta', meta)
          ..add('data', data))
        .toString();
  }
}

class NxContainerEntryBuilder
    implements Builder<NxContainerEntry, NxContainerEntryBuilder> {
  _$NxContainerEntry _$v;

  NxInfoBuilder _info;
  NxInfoBuilder get info => _$this._info ??= new NxInfoBuilder();
  set info(NxInfoBuilder info) => _$this._info = info;

  NxMetaBuilder _meta;
  NxMetaBuilder get meta => _$this._meta ??= new NxMetaBuilder();
  set meta(NxMetaBuilder meta) => _$this._meta = meta;

  JsonObject _data;
  JsonObject get data => _$this._data;
  set data(JsonObject data) => _$this._data = data;

  NxContainerEntryBuilder();

  NxContainerEntryBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _meta = _$v.meta?.toBuilder();
      _data = _$v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxContainerEntry other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxContainerEntry;
  }

  @override
  void update(void updates(NxContainerEntryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxContainerEntry build() {
    _$NxContainerEntry _$result;
    try {
      _$result = _$v ??
          new _$NxContainerEntry._(
              info: _info?.build(), meta: _meta?.build(), data: data);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxContainerEntry', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
