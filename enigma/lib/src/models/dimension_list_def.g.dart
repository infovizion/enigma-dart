// GENERATED CODE - DO NOT MODIFY BY HAND

part of dimension_list_def;

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

Serializer<DimensionListDef> _$dimensionListDefSerializer =
    new _$DimensionListDefSerializer();

class _$DimensionListDefSerializer
    implements StructuredSerializer<DimensionListDef> {
  @override
  final Iterable<Type> types = const [DimensionListDef, _$DimensionListDef];
  @override
  final String wireName = 'DimensionListDef';

  @override
  Iterable serialize(Serializers serializers, DimensionListDef object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.type != null) {
      result
        ..add('qType')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
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
  DimensionListDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new DimensionListDefBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qType':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$DimensionListDef extends DimensionListDef {
  @override
  final String type;
  @override
  final JsonObject data;

  factory _$DimensionListDef([void updates(DimensionListDefBuilder b)]) =>
      (new DimensionListDefBuilder()..update(updates)).build();

  _$DimensionListDef._({this.type, this.data}) : super._();

  @override
  DimensionListDef rebuild(void updates(DimensionListDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DimensionListDefBuilder toBuilder() =>
      new DimensionListDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! DimensionListDef) return false;
    return type == other.type && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, type.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DimensionListDef')
          ..add('type', type)
          ..add('data', data))
        .toString();
  }
}

class DimensionListDefBuilder
    implements Builder<DimensionListDef, DimensionListDefBuilder> {
  _$DimensionListDef _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  JsonObject _data;
  JsonObject get data => _$this._data;
  set data(JsonObject data) => _$this._data = data;

  DimensionListDefBuilder();

  DimensionListDefBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _data = _$v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DimensionListDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$DimensionListDef;
  }

  @override
  void update(void updates(DimensionListDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DimensionListDef build() {
    final _$result = _$v ?? new _$DimensionListDef._(type: type, data: data);
    replace(_$result);
    return _$result;
  }
}
