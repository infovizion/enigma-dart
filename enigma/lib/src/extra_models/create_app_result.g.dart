// GENERATED CODE - DO NOT MODIFY BY HAND

part of create_app_result;

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

Serializer<CreateAppResult> _$createAppResultSerializer =
    new _$CreateAppResultSerializer();

class _$CreateAppResultSerializer
    implements StructuredSerializer<CreateAppResult> {
  @override
  final Iterable<Type> types = const [CreateAppResult, _$CreateAppResult];
  @override
  final String wireName = 'CreateAppResult';

  @override
  Iterable serialize(Serializers serializers, CreateAppResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.success != null) {
      result
        ..add('qSuccess')
        ..add(serializers.serialize(object.success,
            specifiedType: const FullType(bool)));
    }
    if (object.appId != null) {
      result
        ..add('qAppId')
        ..add(serializers.serialize(object.appId,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  CreateAppResult deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateAppResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qSuccess':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qAppId':
          result.appId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CreateAppResult extends CreateAppResult {
  @override
  final bool success;
  @override
  final String appId;

  factory _$CreateAppResult([void updates(CreateAppResultBuilder b)]) =>
      (new CreateAppResultBuilder()..update(updates)).build();

  _$CreateAppResult._({this.success, this.appId}) : super._();

  @override
  CreateAppResult rebuild(void updates(CreateAppResultBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateAppResultBuilder toBuilder() =>
      new CreateAppResultBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! CreateAppResult) return false;
    return success == other.success && appId == other.appId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, success.hashCode), appId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateAppResult')
          ..add('success', success)
          ..add('appId', appId))
        .toString();
  }
}

class CreateAppResultBuilder
    implements Builder<CreateAppResult, CreateAppResultBuilder> {
  _$CreateAppResult _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  String _appId;
  String get appId => _$this._appId;
  set appId(String appId) => _$this._appId = appId;

  CreateAppResultBuilder();

  CreateAppResultBuilder get _$this {
    if (_$v != null) {
      _success = _$v.success;
      _appId = _$v.appId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAppResult other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CreateAppResult;
  }

  @override
  void update(void updates(CreateAppResultBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateAppResult build() {
    final _$result =
        _$v ?? new _$CreateAppResult._(success: success, appId: appId);
    replace(_$result);
    return _$result;
  }
}
