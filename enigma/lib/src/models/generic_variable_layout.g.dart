// GENERATED CODE - DO NOT MODIFY BY HAND

part of generic_variable_layout;

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

Serializer<GenericVariableLayout> _$genericVariableLayoutSerializer =
    new _$GenericVariableLayoutSerializer();

class _$GenericVariableLayoutSerializer
    implements StructuredSerializer<GenericVariableLayout> {
  @override
  final Iterable<Type> types = const [
    GenericVariableLayout,
    _$GenericVariableLayout
  ];
  @override
  final String wireName = 'GenericVariableLayout';

  @override
  Iterable serialize(Serializers serializers, GenericVariableLayout object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.info != null) {
      result
        ..add('info')
        ..add(serializers.serialize(object.info,
            specifiedType: const FullType(NxInfo)));
    }
    if (object.meta != null) {
      result
        ..add('meta')
        ..add(serializers.serialize(object.meta,
            specifiedType: const FullType(NxMeta)));
    }
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.qNum != null) {
      result
        ..add('qNum')
        ..add(serializers.serialize(object.qNum,
            specifiedType: const FullType(num)));
    }
    if (object.isScriptCreated != null) {
      result
        ..add('isScriptCreated')
        ..add(serializers.serialize(object.isScriptCreated,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  GenericVariableLayout deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new GenericVariableLayoutBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'info':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxInfo)) as NxInfo);
          break;
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxMeta)) as NxMeta);
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qNum':
          result.qNum = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'isScriptCreated':
          result.isScriptCreated = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GenericVariableLayout extends GenericVariableLayout {
  @override
  final NxInfo info;
  @override
  final NxMeta meta;
  @override
  final String text;
  @override
  final num qNum;
  @override
  final bool isScriptCreated;

  factory _$GenericVariableLayout(
          [void updates(GenericVariableLayoutBuilder b)]) =>
      (new GenericVariableLayoutBuilder()..update(updates)).build();

  _$GenericVariableLayout._(
      {this.info, this.meta, this.text, this.qNum, this.isScriptCreated})
      : super._();

  @override
  GenericVariableLayout rebuild(void updates(GenericVariableLayoutBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GenericVariableLayoutBuilder toBuilder() =>
      new GenericVariableLayoutBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GenericVariableLayout) return false;
    return info == other.info &&
        meta == other.meta &&
        text == other.text &&
        qNum == other.qNum &&
        isScriptCreated == other.isScriptCreated;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, info.hashCode), meta.hashCode), text.hashCode),
            qNum.hashCode),
        isScriptCreated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenericVariableLayout')
          ..add('info', info)
          ..add('meta', meta)
          ..add('text', text)
          ..add('qNum', qNum)
          ..add('isScriptCreated', isScriptCreated))
        .toString();
  }
}

class GenericVariableLayoutBuilder
    implements Builder<GenericVariableLayout, GenericVariableLayoutBuilder> {
  _$GenericVariableLayout _$v;

  NxInfoBuilder _info;
  NxInfoBuilder get info => _$this._info ??= new NxInfoBuilder();
  set info(NxInfoBuilder info) => _$this._info = info;

  NxMetaBuilder _meta;
  NxMetaBuilder get meta => _$this._meta ??= new NxMetaBuilder();
  set meta(NxMetaBuilder meta) => _$this._meta = meta;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  num _qNum;
  num get qNum => _$this._qNum;
  set qNum(num qNum) => _$this._qNum = qNum;

  bool _isScriptCreated;
  bool get isScriptCreated => _$this._isScriptCreated;
  set isScriptCreated(bool isScriptCreated) =>
      _$this._isScriptCreated = isScriptCreated;

  GenericVariableLayoutBuilder();

  GenericVariableLayoutBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _meta = _$v.meta?.toBuilder();
      _text = _$v.text;
      _qNum = _$v.qNum;
      _isScriptCreated = _$v.isScriptCreated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenericVariableLayout other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GenericVariableLayout;
  }

  @override
  void update(void updates(GenericVariableLayoutBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GenericVariableLayout build() {
    _$GenericVariableLayout _$result;
    try {
      _$result = _$v ??
          new _$GenericVariableLayout._(
              info: _info?.build(),
              meta: _meta?.build(),
              text: text,
              qNum: qNum,
              isScriptCreated: isScriptCreated);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenericVariableLayout', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
