// GENERATED CODE - DO NOT MODIFY BY HAND

part of alfa_num_string;

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

Serializer<AlfaNumString> _$alfaNumStringSerializer =
    new _$AlfaNumStringSerializer();

class _$AlfaNumStringSerializer implements StructuredSerializer<AlfaNumString> {
  @override
  final Iterable<Type> types = const [AlfaNumString, _$AlfaNumString];
  @override
  final String wireName = 'AlfaNumString';

  @override
  Iterable serialize(Serializers serializers, AlfaNumString object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.string != null) {
      result
        ..add('string')
        ..add(serializers.serialize(object.string,
            specifiedType: const FullType(String)));
    }
    if (object.isNum != null) {
      result
        ..add('isNum')
        ..add(serializers.serialize(object.isNum,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  AlfaNumString deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new AlfaNumStringBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'string':
          result.string = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isNum':
          result.isNum = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$AlfaNumString extends AlfaNumString {
  @override
  final String string;
  @override
  final bool isNum;

  factory _$AlfaNumString([void updates(AlfaNumStringBuilder b)]) =>
      (new AlfaNumStringBuilder()..update(updates)).build();

  _$AlfaNumString._({this.string, this.isNum}) : super._();

  @override
  AlfaNumString rebuild(void updates(AlfaNumStringBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AlfaNumStringBuilder toBuilder() => new AlfaNumStringBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! AlfaNumString) return false;
    return string == other.string && isNum == other.isNum;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, string.hashCode), isNum.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AlfaNumString')
          ..add('string', string)
          ..add('isNum', isNum))
        .toString();
  }
}

class AlfaNumStringBuilder
    implements Builder<AlfaNumString, AlfaNumStringBuilder> {
  _$AlfaNumString _$v;

  String _string;
  String get string => _$this._string;
  set string(String string) => _$this._string = string;

  bool _isNum;
  bool get isNum => _$this._isNum;
  set isNum(bool isNum) => _$this._isNum = isNum;

  AlfaNumStringBuilder();

  AlfaNumStringBuilder get _$this {
    if (_$v != null) {
      _string = _$v.string;
      _isNum = _$v.isNum;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlfaNumString other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$AlfaNumString;
  }

  @override
  void update(void updates(AlfaNumStringBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AlfaNumString build() {
    final _$result = _$v ?? new _$AlfaNumString._(string: string, isNum: isNum);
    replace(_$result);
    return _$result;
  }
}
