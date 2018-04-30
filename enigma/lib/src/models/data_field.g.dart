// GENERATED CODE - DO NOT MODIFY BY HAND

part of data_field;

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

Serializer<DataField> _$dataFieldSerializer = new _$DataFieldSerializer();

class _$DataFieldSerializer implements StructuredSerializer<DataField> {
  @override
  final Iterable<Type> types = const [DataField, _$DataField];
  @override
  final String wireName = 'DataField';

  @override
  Iterable serialize(Serializers serializers, DataField object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.isKey != null) {
      result
        ..add('qIsKey')
        ..add(serializers.serialize(object.isKey,
            specifiedType: const FullType(bool)));
    }
    if (object.originalFieldName != null) {
      result
        ..add('qOriginalFieldName')
        ..add(serializers.serialize(object.originalFieldName,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  DataField deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new DataFieldBuilder();

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
        case 'qIsKey':
          result.isKey = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qOriginalFieldName':
          result.originalFieldName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataField extends DataField {
  @override
  final String name;
  @override
  final bool isKey;
  @override
  final String originalFieldName;

  factory _$DataField([void updates(DataFieldBuilder b)]) =>
      (new DataFieldBuilder()..update(updates)).build();

  _$DataField._({this.name, this.isKey, this.originalFieldName}) : super._();

  @override
  DataField rebuild(void updates(DataFieldBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DataFieldBuilder toBuilder() => new DataFieldBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! DataField) return false;
    return name == other.name &&
        isKey == other.isKey &&
        originalFieldName == other.originalFieldName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), isKey.hashCode),
        originalFieldName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataField')
          ..add('name', name)
          ..add('isKey', isKey)
          ..add('originalFieldName', originalFieldName))
        .toString();
  }
}

class DataFieldBuilder implements Builder<DataField, DataFieldBuilder> {
  _$DataField _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  bool _isKey;
  bool get isKey => _$this._isKey;
  set isKey(bool isKey) => _$this._isKey = isKey;

  String _originalFieldName;
  String get originalFieldName => _$this._originalFieldName;
  set originalFieldName(String originalFieldName) =>
      _$this._originalFieldName = originalFieldName;

  DataFieldBuilder();

  DataFieldBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _isKey = _$v.isKey;
      _originalFieldName = _$v.originalFieldName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataField other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$DataField;
  }

  @override
  void update(void updates(DataFieldBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DataField build() {
    final _$result = _$v ??
        new _$DataField._(
            name: name, isKey: isKey, originalFieldName: originalFieldName);
    replace(_$result);
    return _$result;
  }
}
