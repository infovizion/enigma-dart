// GENERATED CODE - DO NOT MODIFY BY HAND

part of check_expression_result;

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

Serializer<CheckExpressionResult> _$checkExpressionResultSerializer =
    new _$CheckExpressionResultSerializer();

class _$CheckExpressionResultSerializer
    implements StructuredSerializer<CheckExpressionResult> {
  @override
  final Iterable<Type> types = const [
    CheckExpressionResult,
    _$CheckExpressionResult
  ];
  @override
  final String wireName = 'CheckExpressionResult';

  @override
  Iterable serialize(Serializers serializers, CheckExpressionResult object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.errorMsg != null) {
      result
        ..add('qErrorMsg')
        ..add(serializers.serialize(object.errorMsg,
            specifiedType: const FullType(String)));
    }
    if (object.badFieldNames != null) {
      result
        ..add('qBadFieldNames')
        ..add(serializers.serialize(object.badFieldNames,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.dangerousFieldNames != null) {
      result
        ..add('qDangerousFieldNames')
        ..add(serializers.serialize(object.dangerousFieldNames,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }

    return result;
  }

  @override
  CheckExpressionResult deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new CheckExpressionResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qErrorMsg':
          result.errorMsg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qBadFieldNames':
          result.badFieldNames.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'qDangerousFieldNames':
          result.dangerousFieldNames.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$CheckExpressionResult extends CheckExpressionResult {
  @override
  final String errorMsg;
  @override
  final BuiltList<String> badFieldNames;
  @override
  final BuiltList<String> dangerousFieldNames;

  factory _$CheckExpressionResult(
          [void updates(CheckExpressionResultBuilder b)]) =>
      (new CheckExpressionResultBuilder()..update(updates)).build();

  _$CheckExpressionResult._(
      {this.errorMsg, this.badFieldNames, this.dangerousFieldNames})
      : super._();

  @override
  CheckExpressionResult rebuild(void updates(CheckExpressionResultBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckExpressionResultBuilder toBuilder() =>
      new CheckExpressionResultBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! CheckExpressionResult) return false;
    return errorMsg == other.errorMsg &&
        badFieldNames == other.badFieldNames &&
        dangerousFieldNames == other.dangerousFieldNames;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, errorMsg.hashCode), badFieldNames.hashCode),
        dangerousFieldNames.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckExpressionResult')
          ..add('errorMsg', errorMsg)
          ..add('badFieldNames', badFieldNames)
          ..add('dangerousFieldNames', dangerousFieldNames))
        .toString();
  }
}

class CheckExpressionResultBuilder
    implements Builder<CheckExpressionResult, CheckExpressionResultBuilder> {
  _$CheckExpressionResult _$v;

  String _errorMsg;
  String get errorMsg => _$this._errorMsg;
  set errorMsg(String errorMsg) => _$this._errorMsg = errorMsg;

  ListBuilder<String> _badFieldNames;
  ListBuilder<String> get badFieldNames =>
      _$this._badFieldNames ??= new ListBuilder<String>();
  set badFieldNames(ListBuilder<String> badFieldNames) =>
      _$this._badFieldNames = badFieldNames;

  ListBuilder<String> _dangerousFieldNames;
  ListBuilder<String> get dangerousFieldNames =>
      _$this._dangerousFieldNames ??= new ListBuilder<String>();
  set dangerousFieldNames(ListBuilder<String> dangerousFieldNames) =>
      _$this._dangerousFieldNames = dangerousFieldNames;

  CheckExpressionResultBuilder();

  CheckExpressionResultBuilder get _$this {
    if (_$v != null) {
      _errorMsg = _$v.errorMsg;
      _badFieldNames = _$v.badFieldNames?.toBuilder();
      _dangerousFieldNames = _$v.dangerousFieldNames?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckExpressionResult other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CheckExpressionResult;
  }

  @override
  void update(void updates(CheckExpressionResultBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckExpressionResult build() {
    _$CheckExpressionResult _$result;
    try {
      _$result = _$v ??
          new _$CheckExpressionResult._(
              errorMsg: errorMsg,
              badFieldNames: _badFieldNames?.build(),
              dangerousFieldNames: _dangerousFieldNames?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'badFieldNames';
        _badFieldNames?.build();
        _$failedField = 'dangerousFieldNames';
        _dangerousFieldNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CheckExpressionResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
