// GENERATED CODE - DO NOT MODIFY BY HAND

part of error_data;

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

Serializer<ErrorData> _$errorDataSerializer = new _$ErrorDataSerializer();

class _$ErrorDataSerializer implements StructuredSerializer<ErrorData> {
  @override
  final Iterable<Type> types = const [ErrorData, _$ErrorData];
  @override
  final String wireName = 'ErrorData';

  @override
  Iterable serialize(Serializers serializers, ErrorData object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.errorString != null) {
      result
        ..add('errorString')
        ..add(serializers.serialize(object.errorString,
            specifiedType: const FullType(String)));
    }
    if (object.lineEnd != null) {
      result
        ..add('lineEnd')
        ..add(serializers.serialize(object.lineEnd,
            specifiedType: const FullType(String)));
    }
    if (object.line != null) {
      result
        ..add('line')
        ..add(serializers.serialize(object.line,
            specifiedType: const FullType(String)));
    }
    if (object.errorDataCode != null) {
      result
        ..add('errorDataCode')
        ..add(serializers.serialize(object.errorDataCode,
            specifiedType: const FullType(String)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(ProgressMessage)));
    }

    return result;
  }

  @override
  ErrorData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ErrorDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'errorString':
          result.errorString = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lineEnd':
          result.lineEnd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'line':
          result.line = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'errorDataCode':
          result.errorDataCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ProgressMessage))
              as ProgressMessage);
          break;
      }
    }

    return result.build();
  }
}

class _$ErrorData extends ErrorData {
  @override
  final String errorString;
  @override
  final String lineEnd;
  @override
  final String line;
  @override
  final String errorDataCode;
  @override
  final ProgressMessage message;

  factory _$ErrorData([void updates(ErrorDataBuilder b)]) =>
      (new ErrorDataBuilder()..update(updates)).build();

  _$ErrorData._(
      {this.errorString,
      this.lineEnd,
      this.line,
      this.errorDataCode,
      this.message})
      : super._();

  @override
  ErrorData rebuild(void updates(ErrorDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorDataBuilder toBuilder() => new ErrorDataBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ErrorData) return false;
    return errorString == other.errorString &&
        lineEnd == other.lineEnd &&
        line == other.line &&
        errorDataCode == other.errorDataCode &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, errorString.hashCode), lineEnd.hashCode),
                line.hashCode),
            errorDataCode.hashCode),
        message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ErrorData')
          ..add('errorString', errorString)
          ..add('lineEnd', lineEnd)
          ..add('line', line)
          ..add('errorDataCode', errorDataCode)
          ..add('message', message))
        .toString();
  }
}

class ErrorDataBuilder implements Builder<ErrorData, ErrorDataBuilder> {
  _$ErrorData _$v;

  String _errorString;
  String get errorString => _$this._errorString;
  set errorString(String errorString) => _$this._errorString = errorString;

  String _lineEnd;
  String get lineEnd => _$this._lineEnd;
  set lineEnd(String lineEnd) => _$this._lineEnd = lineEnd;

  String _line;
  String get line => _$this._line;
  set line(String line) => _$this._line = line;

  String _errorDataCode;
  String get errorDataCode => _$this._errorDataCode;
  set errorDataCode(String errorDataCode) =>
      _$this._errorDataCode = errorDataCode;

  ProgressMessageBuilder _message;
  ProgressMessageBuilder get message =>
      _$this._message ??= new ProgressMessageBuilder();
  set message(ProgressMessageBuilder message) => _$this._message = message;

  ErrorDataBuilder();

  ErrorDataBuilder get _$this {
    if (_$v != null) {
      _errorString = _$v.errorString;
      _lineEnd = _$v.lineEnd;
      _line = _$v.line;
      _errorDataCode = _$v.errorDataCode;
      _message = _$v.message?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorData other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ErrorData;
  }

  @override
  void update(void updates(ErrorDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ErrorData build() {
    _$ErrorData _$result;
    try {
      _$result = _$v ??
          new _$ErrorData._(
              errorString: errorString,
              lineEnd: lineEnd,
              line: line,
              errorDataCode: errorDataCode,
              message: _message?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'message';
        _message?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ErrorData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
