// GENERATED CODE - DO NOT MODIFY BY HAND

part of progress_message;

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

Serializer<ProgressMessage> _$progressMessageSerializer =
    new _$ProgressMessageSerializer();

class _$ProgressMessageSerializer
    implements StructuredSerializer<ProgressMessage> {
  @override
  final Iterable<Type> types = const [ProgressMessage, _$ProgressMessage];
  @override
  final String wireName = 'ProgressMessage';

  @override
  Iterable serialize(Serializers serializers, ProgressMessage object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.messageCode != null) {
      result
        ..add('qMessageCode')
        ..add(serializers.serialize(object.messageCode,
            specifiedType: const FullType(int)));
    }
    if (object.messageParameters != null) {
      result
        ..add('qMessageParameters')
        ..add(serializers.serialize(object.messageParameters,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }

    return result;
  }

  @override
  ProgressMessage deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ProgressMessageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qMessageCode':
          result.messageCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qMessageParameters':
          result.messageParameters.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ProgressMessage extends ProgressMessage {
  @override
  final int messageCode;
  @override
  final BuiltList<String> messageParameters;

  factory _$ProgressMessage([void updates(ProgressMessageBuilder b)]) =>
      (new ProgressMessageBuilder()..update(updates)).build();

  _$ProgressMessage._({this.messageCode, this.messageParameters}) : super._();

  @override
  ProgressMessage rebuild(void updates(ProgressMessageBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ProgressMessageBuilder toBuilder() =>
      new ProgressMessageBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ProgressMessage) return false;
    return messageCode == other.messageCode &&
        messageParameters == other.messageParameters;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, messageCode.hashCode), messageParameters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProgressMessage')
          ..add('messageCode', messageCode)
          ..add('messageParameters', messageParameters))
        .toString();
  }
}

class ProgressMessageBuilder
    implements Builder<ProgressMessage, ProgressMessageBuilder> {
  _$ProgressMessage _$v;

  int _messageCode;
  int get messageCode => _$this._messageCode;
  set messageCode(int messageCode) => _$this._messageCode = messageCode;

  ListBuilder<String> _messageParameters;
  ListBuilder<String> get messageParameters =>
      _$this._messageParameters ??= new ListBuilder<String>();
  set messageParameters(ListBuilder<String> messageParameters) =>
      _$this._messageParameters = messageParameters;

  ProgressMessageBuilder();

  ProgressMessageBuilder get _$this {
    if (_$v != null) {
      _messageCode = _$v.messageCode;
      _messageParameters = _$v.messageParameters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProgressMessage other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ProgressMessage;
  }

  @override
  void update(void updates(ProgressMessageBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ProgressMessage build() {
    _$ProgressMessage _$result;
    try {
      _$result = _$v ??
          new _$ProgressMessage._(
              messageCode: messageCode,
              messageParameters: _messageParameters?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'messageParameters';
        _messageParameters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProgressMessage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
