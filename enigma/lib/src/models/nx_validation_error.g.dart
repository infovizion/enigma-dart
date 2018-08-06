// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_validation_error;

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

Serializer<NxValidationError> _$nxValidationErrorSerializer =
    new _$NxValidationErrorSerializer();

class _$NxValidationErrorSerializer
    implements StructuredSerializer<NxValidationError> {
  @override
  final Iterable<Type> types = const [NxValidationError, _$NxValidationError];
  @override
  final String wireName = 'NxValidationError';

  @override
  Iterable serialize(Serializers serializers, NxValidationError object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.errorCode != null) {
      result
        ..add('qErrorCode')
        ..add(serializers.serialize(object.errorCode,
            specifiedType: const FullType(int)));
    }
    if (object.context != null) {
      result
        ..add('qContext')
        ..add(serializers.serialize(object.context,
            specifiedType: const FullType(String)));
    }
    if (object.extendedMessage != null) {
      result
        ..add('qExtendedMessage')
        ..add(serializers.serialize(object.extendedMessage,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  NxValidationError deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxValidationErrorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qErrorCode':
          result.errorCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qContext':
          result.context = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qExtendedMessage':
          result.extendedMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NxValidationError extends NxValidationError {
  @override
  final int errorCode;
  @override
  final String context;
  @override
  final String extendedMessage;

  factory _$NxValidationError([void updates(NxValidationErrorBuilder b)]) =>
      (new NxValidationErrorBuilder()..update(updates)).build();

  _$NxValidationError._({this.errorCode, this.context, this.extendedMessage})
      : super._();

  @override
  NxValidationError rebuild(void updates(NxValidationErrorBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxValidationErrorBuilder toBuilder() =>
      new NxValidationErrorBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxValidationError) return false;
    return errorCode == other.errorCode &&
        context == other.context &&
        extendedMessage == other.extendedMessage;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, errorCode.hashCode), context.hashCode),
        extendedMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxValidationError')
          ..add('errorCode', errorCode)
          ..add('context', context)
          ..add('extendedMessage', extendedMessage))
        .toString();
  }
}

class NxValidationErrorBuilder
    implements Builder<NxValidationError, NxValidationErrorBuilder> {
  _$NxValidationError _$v;

  int _errorCode;
  int get errorCode => _$this._errorCode;
  set errorCode(int errorCode) => _$this._errorCode = errorCode;

  String _context;
  String get context => _$this._context;
  set context(String context) => _$this._context = context;

  String _extendedMessage;
  String get extendedMessage => _$this._extendedMessage;
  set extendedMessage(String extendedMessage) =>
      _$this._extendedMessage = extendedMessage;

  NxValidationErrorBuilder();

  NxValidationErrorBuilder get _$this {
    if (_$v != null) {
      _errorCode = _$v.errorCode;
      _context = _$v.context;
      _extendedMessage = _$v.extendedMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxValidationError other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxValidationError;
  }

  @override
  void update(void updates(NxValidationErrorBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxValidationError build() {
    final _$result = _$v ??
        new _$NxValidationError._(
            errorCode: errorCode,
            context: context,
            extendedMessage: extendedMessage);
    replace(_$result);
    return _$result;
  }
}
