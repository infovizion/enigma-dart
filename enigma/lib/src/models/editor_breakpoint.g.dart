// GENERATED CODE - DO NOT MODIFY BY HAND

part of editor_breakpoint;

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

Serializer<EditorBreakpoint> _$editorBreakpointSerializer =
    new _$EditorBreakpointSerializer();

class _$EditorBreakpointSerializer
    implements StructuredSerializer<EditorBreakpoint> {
  @override
  final Iterable<Type> types = const [EditorBreakpoint, _$EditorBreakpoint];
  @override
  final String wireName = 'EditorBreakpoint';

  @override
  Iterable serialize(Serializers serializers, EditorBreakpoint object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.bufferName != null) {
      result
        ..add('qbufferName')
        ..add(serializers.serialize(object.bufferName,
            specifiedType: const FullType(String)));
    }
    if (object.lineIx != null) {
      result
        ..add('qlineIx')
        ..add(serializers.serialize(object.lineIx,
            specifiedType: const FullType(int)));
    }
    if (object.enabled != null) {
      result
        ..add('qEnabled')
        ..add(serializers.serialize(object.enabled,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  EditorBreakpoint deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new EditorBreakpointBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qbufferName':
          result.bufferName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qlineIx':
          result.lineIx = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qEnabled':
          result.enabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$EditorBreakpoint extends EditorBreakpoint {
  @override
  final String bufferName;
  @override
  final int lineIx;
  @override
  final bool enabled;

  factory _$EditorBreakpoint([void updates(EditorBreakpointBuilder b)]) =>
      (new EditorBreakpointBuilder()..update(updates)).build();

  _$EditorBreakpoint._({this.bufferName, this.lineIx, this.enabled})
      : super._();

  @override
  EditorBreakpoint rebuild(void updates(EditorBreakpointBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  EditorBreakpointBuilder toBuilder() =>
      new EditorBreakpointBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! EditorBreakpoint) return false;
    return bufferName == other.bufferName &&
        lineIx == other.lineIx &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, bufferName.hashCode), lineIx.hashCode), enabled.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EditorBreakpoint')
          ..add('bufferName', bufferName)
          ..add('lineIx', lineIx)
          ..add('enabled', enabled))
        .toString();
  }
}

class EditorBreakpointBuilder
    implements Builder<EditorBreakpoint, EditorBreakpointBuilder> {
  _$EditorBreakpoint _$v;

  String _bufferName;
  String get bufferName => _$this._bufferName;
  set bufferName(String bufferName) => _$this._bufferName = bufferName;

  int _lineIx;
  int get lineIx => _$this._lineIx;
  set lineIx(int lineIx) => _$this._lineIx = lineIx;

  bool _enabled;
  bool get enabled => _$this._enabled;
  set enabled(bool enabled) => _$this._enabled = enabled;

  EditorBreakpointBuilder();

  EditorBreakpointBuilder get _$this {
    if (_$v != null) {
      _bufferName = _$v.bufferName;
      _lineIx = _$v.lineIx;
      _enabled = _$v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditorBreakpoint other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$EditorBreakpoint;
  }

  @override
  void update(void updates(EditorBreakpointBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$EditorBreakpoint build() {
    final _$result = _$v ??
        new _$EditorBreakpoint._(
            bufferName: bufferName, lineIx: lineIx, enabled: enabled);
    replace(_$result);
    return _$result;
  }
}
