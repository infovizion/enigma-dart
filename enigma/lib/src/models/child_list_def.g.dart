// GENERATED CODE - DO NOT MODIFY BY HAND

part of child_list_def;

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

Serializer<ChildListDef> _$childListDefSerializer =
    new _$ChildListDefSerializer();

class _$ChildListDefSerializer implements StructuredSerializer<ChildListDef> {
  @override
  final Iterable<Type> types = const [ChildListDef, _$ChildListDef];
  @override
  final String wireName = 'ChildListDef';

  @override
  Iterable serialize(Serializers serializers, ChildListDef object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(JsonObject)));
    }

    return result;
  }

  @override
  ChildListDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ChildListDefBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
      }
    }

    return result.build();
  }
}

class _$ChildListDef extends ChildListDef {
  @override
  final JsonObject data;

  factory _$ChildListDef([void updates(ChildListDefBuilder b)]) =>
      (new ChildListDefBuilder()..update(updates)).build();

  _$ChildListDef._({this.data}) : super._();

  @override
  ChildListDef rebuild(void updates(ChildListDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ChildListDefBuilder toBuilder() => new ChildListDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ChildListDef) return false;
    return data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChildListDef')..add('data', data))
        .toString();
  }
}

class ChildListDefBuilder
    implements Builder<ChildListDef, ChildListDefBuilder> {
  _$ChildListDef _$v;

  JsonObject _data;
  JsonObject get data => _$this._data;
  set data(JsonObject data) => _$this._data = data;

  ChildListDefBuilder();

  ChildListDefBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChildListDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ChildListDef;
  }

  @override
  void update(void updates(ChildListDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ChildListDef build() {
    final _$result = _$v ?? new _$ChildListDef._(data: data);
    replace(_$result);
    return _$result;
  }
}
