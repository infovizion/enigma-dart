// GENERATED CODE - DO NOT MODIFY BY HAND

part of do_reload_ex_result;

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

Serializer<DoReloadExResult> _$doReloadExResultSerializer =
    new _$DoReloadExResultSerializer();

class _$DoReloadExResultSerializer
    implements StructuredSerializer<DoReloadExResult> {
  @override
  final Iterable<Type> types = const [DoReloadExResult, _$DoReloadExResult];
  @override
  final String wireName = 'DoReloadExResult';

  @override
  Iterable serialize(Serializers serializers, DoReloadExResult object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.success != null) {
      result
        ..add('qSuccess')
        ..add(serializers.serialize(object.success,
            specifiedType: const FullType(bool)));
    }
    if (object.scriptLogFile != null) {
      result
        ..add('qScriptLogFile')
        ..add(serializers.serialize(object.scriptLogFile,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  DoReloadExResult deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new DoReloadExResultBuilder();

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
        case 'qScriptLogFile':
          result.scriptLogFile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DoReloadExResult extends DoReloadExResult {
  @override
  final bool success;
  @override
  final String scriptLogFile;

  factory _$DoReloadExResult([void updates(DoReloadExResultBuilder b)]) =>
      (new DoReloadExResultBuilder()..update(updates)).build();

  _$DoReloadExResult._({this.success, this.scriptLogFile}) : super._();

  @override
  DoReloadExResult rebuild(void updates(DoReloadExResultBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DoReloadExResultBuilder toBuilder() =>
      new DoReloadExResultBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! DoReloadExResult) return false;
    return success == other.success && scriptLogFile == other.scriptLogFile;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, success.hashCode), scriptLogFile.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoReloadExResult')
          ..add('success', success)
          ..add('scriptLogFile', scriptLogFile))
        .toString();
  }
}

class DoReloadExResultBuilder
    implements Builder<DoReloadExResult, DoReloadExResultBuilder> {
  _$DoReloadExResult _$v;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  String _scriptLogFile;
  String get scriptLogFile => _$this._scriptLogFile;
  set scriptLogFile(String scriptLogFile) =>
      _$this._scriptLogFile = scriptLogFile;

  DoReloadExResultBuilder();

  DoReloadExResultBuilder get _$this {
    if (_$v != null) {
      _success = _$v.success;
      _scriptLogFile = _$v.scriptLogFile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoReloadExResult other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$DoReloadExResult;
  }

  @override
  void update(void updates(DoReloadExResultBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DoReloadExResult build() {
    final _$result = _$v ??
        new _$DoReloadExResult._(
            success: success, scriptLogFile: scriptLogFile);
    replace(_$result);
    return _$result;
  }
}
