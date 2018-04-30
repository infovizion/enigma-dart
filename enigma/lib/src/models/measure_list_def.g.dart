// GENERATED CODE - DO NOT MODIFY BY HAND

part of measure_list_def;

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

Serializer<MeasureListDef> _$measureListDefSerializer =
    new _$MeasureListDefSerializer();

class _$MeasureListDefSerializer
    implements StructuredSerializer<MeasureListDef> {
  @override
  final Iterable<Type> types = const [MeasureListDef, _$MeasureListDef];
  @override
  final String wireName = 'MeasureListDef';

  @override
  Iterable serialize(Serializers serializers, MeasureListDef object,
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
  MeasureListDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new MeasureListDefBuilder();

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

class _$MeasureListDef extends MeasureListDef {
  @override
  final String type;
  @override
  final JsonObject data;

  factory _$MeasureListDef([void updates(MeasureListDefBuilder b)]) =>
      (new MeasureListDefBuilder()..update(updates)).build();

  _$MeasureListDef._({this.type, this.data}) : super._();

  @override
  MeasureListDef rebuild(void updates(MeasureListDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MeasureListDefBuilder toBuilder() =>
      new MeasureListDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! MeasureListDef) return false;
    return type == other.type && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, type.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MeasureListDef')
          ..add('type', type)
          ..add('data', data))
        .toString();
  }
}

class MeasureListDefBuilder
    implements Builder<MeasureListDef, MeasureListDefBuilder> {
  _$MeasureListDef _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  JsonObject _data;
  JsonObject get data => _$this._data;
  set data(JsonObject data) => _$this._data = data;

  MeasureListDefBuilder();

  MeasureListDefBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _data = _$v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeasureListDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$MeasureListDef;
  }

  @override
  void update(void updates(MeasureListDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MeasureListDef build() {
    final _$result = _$v ?? new _$MeasureListDef._(type: type, data: data);
    replace(_$result);
    return _$result;
  }
}
