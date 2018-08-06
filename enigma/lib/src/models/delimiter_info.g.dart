// GENERATED CODE - DO NOT MODIFY BY HAND

part of delimiter_info;

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

Serializer<DelimiterInfo> _$delimiterInfoSerializer =
    new _$DelimiterInfoSerializer();

class _$DelimiterInfoSerializer implements StructuredSerializer<DelimiterInfo> {
  @override
  final Iterable<Type> types = const [DelimiterInfo, _$DelimiterInfo];
  @override
  final String wireName = 'DelimiterInfo';

  @override
  Iterable serialize(Serializers serializers, DelimiterInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.scriptCode != null) {
      result
        ..add('qScriptCode')
        ..add(serializers.serialize(object.scriptCode,
            specifiedType: const FullType(String)));
    }
    if (object.number != null) {
      result
        ..add('qNumber')
        ..add(serializers.serialize(object.number,
            specifiedType: const FullType(int)));
    }
    if (object.isMultiple != null) {
      result
        ..add('qIsMultiple')
        ..add(serializers.serialize(object.isMultiple,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  DelimiterInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DelimiterInfoBuilder();

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
        case 'qScriptCode':
          result.scriptCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qNumber':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qIsMultiple':
          result.isMultiple = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$DelimiterInfo extends DelimiterInfo {
  @override
  final String name;
  @override
  final String scriptCode;
  @override
  final int number;
  @override
  final bool isMultiple;

  factory _$DelimiterInfo([void updates(DelimiterInfoBuilder b)]) =>
      (new DelimiterInfoBuilder()..update(updates)).build();

  _$DelimiterInfo._({this.name, this.scriptCode, this.number, this.isMultiple})
      : super._();

  @override
  DelimiterInfo rebuild(void updates(DelimiterInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DelimiterInfoBuilder toBuilder() => new DelimiterInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! DelimiterInfo) return false;
    return name == other.name &&
        scriptCode == other.scriptCode &&
        number == other.number &&
        isMultiple == other.isMultiple;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), scriptCode.hashCode), number.hashCode),
        isMultiple.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DelimiterInfo')
          ..add('name', name)
          ..add('scriptCode', scriptCode)
          ..add('number', number)
          ..add('isMultiple', isMultiple))
        .toString();
  }
}

class DelimiterInfoBuilder
    implements Builder<DelimiterInfo, DelimiterInfoBuilder> {
  _$DelimiterInfo _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _scriptCode;
  String get scriptCode => _$this._scriptCode;
  set scriptCode(String scriptCode) => _$this._scriptCode = scriptCode;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  bool _isMultiple;
  bool get isMultiple => _$this._isMultiple;
  set isMultiple(bool isMultiple) => _$this._isMultiple = isMultiple;

  DelimiterInfoBuilder();

  DelimiterInfoBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _scriptCode = _$v.scriptCode;
      _number = _$v.number;
      _isMultiple = _$v.isMultiple;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DelimiterInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$DelimiterInfo;
  }

  @override
  void update(void updates(DelimiterInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DelimiterInfo build() {
    final _$result = _$v ??
        new _$DelimiterInfo._(
            name: name,
            scriptCode: scriptCode,
            number: number,
            isMultiple: isMultiple);
    replace(_$result);
    return _$result;
  }
}
