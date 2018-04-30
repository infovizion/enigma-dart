// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_script;

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

Serializer<AppScript> _$appScriptSerializer = new _$AppScriptSerializer();

class _$AppScriptSerializer implements StructuredSerializer<AppScript> {
  @override
  final Iterable<Type> types = const [AppScript, _$AppScript];
  @override
  final String wireName = 'AppScript';

  @override
  Iterable serialize(Serializers serializers, AppScript object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.script != null) {
      result
        ..add('qScript')
        ..add(serializers.serialize(object.script,
            specifiedType: const FullType(String)));
    }
    if (object.meta != null) {
      result
        ..add('qMeta')
        ..add(serializers.serialize(object.meta,
            specifiedType: const FullType(NxMeta)));
    }

    return result;
  }

  @override
  AppScript deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new AppScriptBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qScript':
          result.script = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qMeta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxMeta)) as NxMeta);
          break;
      }
    }

    return result.build();
  }
}

class _$AppScript extends AppScript {
  @override
  final String script;
  @override
  final NxMeta meta;

  factory _$AppScript([void updates(AppScriptBuilder b)]) =>
      (new AppScriptBuilder()..update(updates)).build();

  _$AppScript._({this.script, this.meta}) : super._();

  @override
  AppScript rebuild(void updates(AppScriptBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AppScriptBuilder toBuilder() => new AppScriptBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! AppScript) return false;
    return script == other.script && meta == other.meta;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, script.hashCode), meta.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppScript')
          ..add('script', script)
          ..add('meta', meta))
        .toString();
  }
}

class AppScriptBuilder implements Builder<AppScript, AppScriptBuilder> {
  _$AppScript _$v;

  String _script;
  String get script => _$this._script;
  set script(String script) => _$this._script = script;

  NxMetaBuilder _meta;
  NxMetaBuilder get meta => _$this._meta ??= new NxMetaBuilder();
  set meta(NxMetaBuilder meta) => _$this._meta = meta;

  AppScriptBuilder();

  AppScriptBuilder get _$this {
    if (_$v != null) {
      _script = _$v.script;
      _meta = _$v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppScript other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$AppScript;
  }

  @override
  void update(void updates(AppScriptBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AppScript build() {
    _$AppScript _$result;
    try {
      _$result = _$v ?? new _$AppScript._(script: script, meta: _meta?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppScript', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
