// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_get_object_options;

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

Serializer<NxGetObjectOptions> _$nxGetObjectOptionsSerializer =
    new _$NxGetObjectOptionsSerializer();

class _$NxGetObjectOptionsSerializer
    implements StructuredSerializer<NxGetObjectOptions> {
  @override
  final Iterable<Type> types = const [NxGetObjectOptions, _$NxGetObjectOptions];
  @override
  final String wireName = 'NxGetObjectOptions';

  @override
  Iterable serialize(Serializers serializers, NxGetObjectOptions object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.types != null) {
      result
        ..add('qTypes')
        ..add(serializers.serialize(object.types,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.includeSessionObjects != null) {
      result
        ..add('qIncludeSessionObjects')
        ..add(serializers.serialize(object.includeSessionObjects,
            specifiedType: const FullType(bool)));
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
  NxGetObjectOptions deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxGetObjectOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qTypes':
          result.types.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qIncludeSessionObjects':
          result.includeSessionObjects = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$NxGetObjectOptions extends NxGetObjectOptions {
  @override
  final BuiltList<NxCell> types;
  @override
  final bool includeSessionObjects;
  @override
  final JsonObject data;

  factory _$NxGetObjectOptions([void updates(NxGetObjectOptionsBuilder b)]) =>
      (new NxGetObjectOptionsBuilder()..update(updates)).build();

  _$NxGetObjectOptions._({this.types, this.includeSessionObjects, this.data})
      : super._();

  @override
  NxGetObjectOptions rebuild(void updates(NxGetObjectOptionsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxGetObjectOptionsBuilder toBuilder() =>
      new NxGetObjectOptionsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxGetObjectOptions) return false;
    return types == other.types &&
        includeSessionObjects == other.includeSessionObjects &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, types.hashCode), includeSessionObjects.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxGetObjectOptions')
          ..add('types', types)
          ..add('includeSessionObjects', includeSessionObjects)
          ..add('data', data))
        .toString();
  }
}

class NxGetObjectOptionsBuilder
    implements Builder<NxGetObjectOptions, NxGetObjectOptionsBuilder> {
  _$NxGetObjectOptions _$v;

  ListBuilder<NxCell> _types;
  ListBuilder<NxCell> get types => _$this._types ??= new ListBuilder<NxCell>();
  set types(ListBuilder<NxCell> types) => _$this._types = types;

  bool _includeSessionObjects;
  bool get includeSessionObjects => _$this._includeSessionObjects;
  set includeSessionObjects(bool includeSessionObjects) =>
      _$this._includeSessionObjects = includeSessionObjects;

  JsonObject _data;
  JsonObject get data => _$this._data;
  set data(JsonObject data) => _$this._data = data;

  NxGetObjectOptionsBuilder();

  NxGetObjectOptionsBuilder get _$this {
    if (_$v != null) {
      _types = _$v.types?.toBuilder();
      _includeSessionObjects = _$v.includeSessionObjects;
      _data = _$v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxGetObjectOptions other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxGetObjectOptions;
  }

  @override
  void update(void updates(NxGetObjectOptionsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxGetObjectOptions build() {
    _$NxGetObjectOptions _$result;
    try {
      _$result = _$v ??
          new _$NxGetObjectOptions._(
              types: _types?.build(),
              includeSessionObjects: includeSessionObjects,
              data: data);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'types';
        _types?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxGetObjectOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
