// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_layout_errors;

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

Serializer<NxLayoutErrors> _$nxLayoutErrorsSerializer =
    new _$NxLayoutErrorsSerializer();

class _$NxLayoutErrorsSerializer
    implements StructuredSerializer<NxLayoutErrors> {
  @override
  final Iterable<Type> types = const [NxLayoutErrors, _$NxLayoutErrors];
  @override
  final String wireName = 'NxLayoutErrors';

  @override
  Iterable serialize(Serializers serializers, NxLayoutErrors object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.errorCode != null) {
      result
        ..add('qErrorCode')
        ..add(serializers.serialize(object.errorCode,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  NxLayoutErrors deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxLayoutErrorsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$NxLayoutErrors extends NxLayoutErrors {
  @override
  final int errorCode;

  factory _$NxLayoutErrors([void updates(NxLayoutErrorsBuilder b)]) =>
      (new NxLayoutErrorsBuilder()..update(updates)).build();

  _$NxLayoutErrors._({this.errorCode}) : super._();

  @override
  NxLayoutErrors rebuild(void updates(NxLayoutErrorsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxLayoutErrorsBuilder toBuilder() =>
      new NxLayoutErrorsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxLayoutErrors) return false;
    return errorCode == other.errorCode;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errorCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxLayoutErrors')
          ..add('errorCode', errorCode))
        .toString();
  }
}

class NxLayoutErrorsBuilder
    implements Builder<NxLayoutErrors, NxLayoutErrorsBuilder> {
  _$NxLayoutErrors _$v;

  int _errorCode;
  int get errorCode => _$this._errorCode;
  set errorCode(int errorCode) => _$this._errorCode = errorCode;

  NxLayoutErrorsBuilder();

  NxLayoutErrorsBuilder get _$this {
    if (_$v != null) {
      _errorCode = _$v.errorCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxLayoutErrors other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxLayoutErrors;
  }

  @override
  void update(void updates(NxLayoutErrorsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxLayoutErrors build() {
    final _$result = _$v ?? new _$NxLayoutErrors._(errorCode: errorCode);
    replace(_$result);
    return _$result;
  }
}
