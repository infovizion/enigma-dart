// GENERATED CODE - DO NOT MODIFY BY HAND

part of do_reload_ex_params;

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

Serializer<DoReloadExParams> _$doReloadExParamsSerializer =
    new _$DoReloadExParamsSerializer();

class _$DoReloadExParamsSerializer
    implements StructuredSerializer<DoReloadExParams> {
  @override
  final Iterable<Type> types = const [DoReloadExParams, _$DoReloadExParams];
  @override
  final String wireName = 'DoReloadExParams';

  @override
  Iterable serialize(Serializers serializers, DoReloadExParams object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.mode != null) {
      result
        ..add('mode')
        ..add(serializers.serialize(object.mode,
            specifiedType: const FullType(int)));
    }
    if (object.partial != null) {
      result
        ..add('partial')
        ..add(serializers.serialize(object.partial,
            specifiedType: const FullType(bool)));
    }
    if (object.debug != null) {
      result
        ..add('debug')
        ..add(serializers.serialize(object.debug,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  DoReloadExParams deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new DoReloadExParamsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'mode':
          result.mode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'partial':
          result.partial = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'debug':
          result.debug = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$DoReloadExParams extends DoReloadExParams {
  @override
  final int mode;
  @override
  final bool partial;
  @override
  final bool debug;

  factory _$DoReloadExParams([void updates(DoReloadExParamsBuilder b)]) =>
      (new DoReloadExParamsBuilder()..update(updates)).build();

  _$DoReloadExParams._({this.mode, this.partial, this.debug}) : super._();

  @override
  DoReloadExParams rebuild(void updates(DoReloadExParamsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DoReloadExParamsBuilder toBuilder() =>
      new DoReloadExParamsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! DoReloadExParams) return false;
    return mode == other.mode &&
        partial == other.partial &&
        debug == other.debug;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, mode.hashCode), partial.hashCode), debug.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DoReloadExParams')
          ..add('mode', mode)
          ..add('partial', partial)
          ..add('debug', debug))
        .toString();
  }
}

class DoReloadExParamsBuilder
    implements Builder<DoReloadExParams, DoReloadExParamsBuilder> {
  _$DoReloadExParams _$v;

  int _mode;
  int get mode => _$this._mode;
  set mode(int mode) => _$this._mode = mode;

  bool _partial;
  bool get partial => _$this._partial;
  set partial(bool partial) => _$this._partial = partial;

  bool _debug;
  bool get debug => _$this._debug;
  set debug(bool debug) => _$this._debug = debug;

  DoReloadExParamsBuilder();

  DoReloadExParamsBuilder get _$this {
    if (_$v != null) {
      _mode = _$v.mode;
      _partial = _$v.partial;
      _debug = _$v.debug;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoReloadExParams other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$DoReloadExParams;
  }

  @override
  void update(void updates(DoReloadExParamsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DoReloadExParams build() {
    final _$result = _$v ??
        new _$DoReloadExParams._(mode: mode, partial: partial, debug: debug);
    replace(_$result);
    return _$result;
  }
}
