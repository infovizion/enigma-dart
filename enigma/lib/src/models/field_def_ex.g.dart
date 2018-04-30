// GENERATED CODE - DO NOT MODIFY BY HAND

part of field_def_ex;

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

Serializer<FieldDefEx> _$fieldDefExSerializer = new _$FieldDefExSerializer();

class _$FieldDefExSerializer implements StructuredSerializer<FieldDefEx> {
  @override
  final Iterable<Type> types = const [FieldDefEx, _$FieldDefEx];
  @override
  final String wireName = 'FieldDefEx';

  @override
  Iterable serialize(Serializers serializers, FieldDefEx object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
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
  FieldDefEx deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FieldDefExBuilder();

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
        case 'qType':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FieldDefEx extends FieldDefEx {
  @override
  final String name;
  @override
  final String type;

  factory _$FieldDefEx([void updates(FieldDefExBuilder b)]) =>
      (new FieldDefExBuilder()..update(updates)).build();

  _$FieldDefEx._({this.name, this.type}) : super._();

  @override
  FieldDefEx rebuild(void updates(FieldDefExBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldDefExBuilder toBuilder() => new FieldDefExBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FieldDefEx) return false;
    return name == other.name && type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FieldDefEx')
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class FieldDefExBuilder implements Builder<FieldDefEx, FieldDefExBuilder> {
  _$FieldDefEx _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  FieldDefExBuilder();

  FieldDefExBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldDefEx other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FieldDefEx;
  }

  @override
  void update(void updates(FieldDefExBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FieldDefEx build() {
    final _$result = _$v ?? new _$FieldDefEx._(name: name, type: type);
    replace(_$result);
    return _$result;
  }
}
