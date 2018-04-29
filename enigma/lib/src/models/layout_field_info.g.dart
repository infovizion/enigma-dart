// GENERATED CODE - DO NOT MODIFY BY HAND

part of layout_field_info;

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

Serializer<LayoutFieldInfo> _$layoutFieldInfoSerializer =
    new _$LayoutFieldInfoSerializer();

class _$LayoutFieldInfoSerializer
    implements StructuredSerializer<LayoutFieldInfo> {
  @override
  final Iterable<Type> types = const [LayoutFieldInfo, _$LayoutFieldInfo];
  @override
  final String wireName = 'LayoutFieldInfo';

  @override
  Iterable serialize(Serializers serializers, LayoutFieldInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.fieldName != null) {
      result
        ..add('fieldName')
        ..add(serializers.serialize(object.fieldName,
            specifiedType: const FullType(String)));
    }
    if (object.valuesCount != null) {
      result
        ..add('valuesCount')
        ..add(serializers.serialize(object.valuesCount,
            specifiedType: const FullType(int)));
    }
    if (object.excludedValuesCount != null) {
      result
        ..add('excludedValuesCount')
        ..add(serializers.serialize(object.excludedValuesCount,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  LayoutFieldInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new LayoutFieldInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'fieldName':
          result.fieldName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'valuesCount':
          result.valuesCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'excludedValuesCount':
          result.excludedValuesCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$LayoutFieldInfo extends LayoutFieldInfo {
  @override
  final String fieldName;
  @override
  final int valuesCount;
  @override
  final int excludedValuesCount;

  factory _$LayoutFieldInfo([void updates(LayoutFieldInfoBuilder b)]) =>
      (new LayoutFieldInfoBuilder()..update(updates)).build();

  _$LayoutFieldInfo._(
      {this.fieldName, this.valuesCount, this.excludedValuesCount})
      : super._();

  @override
  LayoutFieldInfo rebuild(void updates(LayoutFieldInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LayoutFieldInfoBuilder toBuilder() =>
      new LayoutFieldInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! LayoutFieldInfo) return false;
    return fieldName == other.fieldName &&
        valuesCount == other.valuesCount &&
        excludedValuesCount == other.excludedValuesCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, fieldName.hashCode), valuesCount.hashCode),
        excludedValuesCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LayoutFieldInfo')
          ..add('fieldName', fieldName)
          ..add('valuesCount', valuesCount)
          ..add('excludedValuesCount', excludedValuesCount))
        .toString();
  }
}

class LayoutFieldInfoBuilder
    implements Builder<LayoutFieldInfo, LayoutFieldInfoBuilder> {
  _$LayoutFieldInfo _$v;

  String _fieldName;
  String get fieldName => _$this._fieldName;
  set fieldName(String fieldName) => _$this._fieldName = fieldName;

  int _valuesCount;
  int get valuesCount => _$this._valuesCount;
  set valuesCount(int valuesCount) => _$this._valuesCount = valuesCount;

  int _excludedValuesCount;
  int get excludedValuesCount => _$this._excludedValuesCount;
  set excludedValuesCount(int excludedValuesCount) =>
      _$this._excludedValuesCount = excludedValuesCount;

  LayoutFieldInfoBuilder();

  LayoutFieldInfoBuilder get _$this {
    if (_$v != null) {
      _fieldName = _$v.fieldName;
      _valuesCount = _$v.valuesCount;
      _excludedValuesCount = _$v.excludedValuesCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LayoutFieldInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$LayoutFieldInfo;
  }

  @override
  void update(void updates(LayoutFieldInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LayoutFieldInfo build() {
    final _$result = _$v ??
        new _$LayoutFieldInfo._(
            fieldName: fieldName,
            valuesCount: valuesCount,
            excludedValuesCount: excludedValuesCount);
    replace(_$result);
    return _$result;
  }
}
