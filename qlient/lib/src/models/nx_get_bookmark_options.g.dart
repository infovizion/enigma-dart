// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_get_bookmark_options;

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

Serializer<NxGetBookmarkOptions> _$nxGetBookmarkOptionsSerializer =
    new _$NxGetBookmarkOptionsSerializer();

class _$NxGetBookmarkOptionsSerializer
    implements StructuredSerializer<NxGetBookmarkOptions> {
  @override
  final Iterable<Type> types = const [
    NxGetBookmarkOptions,
    _$NxGetBookmarkOptions
  ];
  @override
  final String wireName = 'NxGetBookmarkOptions';

  @override
  Iterable serialize(Serializers serializers, NxGetBookmarkOptions object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.types != null) {
      result
        ..add('types')
        ..add(serializers.serialize(object.types,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(JsonObject)));
    }

    return result;
  }

  @override
  NxGetBookmarkOptions deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxGetBookmarkOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'types':
          result.types = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
      }
    }

    return result.build();
  }
}

class _$NxGetBookmarkOptions extends NxGetBookmarkOptions {
  @override
  final List<NxCell> types;
  @override
  final JsonObject data;

  factory _$NxGetBookmarkOptions(
          [void updates(NxGetBookmarkOptionsBuilder b)]) =>
      (new NxGetBookmarkOptionsBuilder()..update(updates)).build();

  _$NxGetBookmarkOptions._({this.types, this.data}) : super._();

  @override
  NxGetBookmarkOptions rebuild(void updates(NxGetBookmarkOptionsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxGetBookmarkOptionsBuilder toBuilder() =>
      new NxGetBookmarkOptionsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxGetBookmarkOptions) return false;
    return types == other.types && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, types.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxGetBookmarkOptions')
          ..add('types', types)
          ..add('data', data))
        .toString();
  }
}

class NxGetBookmarkOptionsBuilder
    implements Builder<NxGetBookmarkOptions, NxGetBookmarkOptionsBuilder> {
  _$NxGetBookmarkOptions _$v;

  List<NxCell> _types;
  List<NxCell> get types => _$this._types;
  set types(List<NxCell> types) => _$this._types = types;

  JsonObject _data;
  JsonObject get data => _$this._data;
  set data(JsonObject data) => _$this._data = data;

  NxGetBookmarkOptionsBuilder();

  NxGetBookmarkOptionsBuilder get _$this {
    if (_$v != null) {
      _types = _$v.types;
      _data = _$v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxGetBookmarkOptions other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxGetBookmarkOptions;
  }

  @override
  void update(void updates(NxGetBookmarkOptionsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxGetBookmarkOptions build() {
    final _$result =
        _$v ?? new _$NxGetBookmarkOptions._(types: types, data: data);
    replace(_$result);
    return _$result;
  }
}
