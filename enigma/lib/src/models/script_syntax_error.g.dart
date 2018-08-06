// GENERATED CODE - DO NOT MODIFY BY HAND

part of script_syntax_error;

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

Serializer<ScriptSyntaxError> _$scriptSyntaxErrorSerializer =
    new _$ScriptSyntaxErrorSerializer();

class _$ScriptSyntaxErrorSerializer
    implements StructuredSerializer<ScriptSyntaxError> {
  @override
  final Iterable<Type> types = const [ScriptSyntaxError, _$ScriptSyntaxError];
  @override
  final String wireName = 'ScriptSyntaxError';

  @override
  Iterable serialize(Serializers serializers, ScriptSyntaxError object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.errLen != null) {
      result
        ..add('qErrLen')
        ..add(serializers.serialize(object.errLen,
            specifiedType: const FullType(int)));
    }
    if (object.tabIx != null) {
      result
        ..add('qTabIx')
        ..add(serializers.serialize(object.tabIx,
            specifiedType: const FullType(int)));
    }
    if (object.lineInTab != null) {
      result
        ..add('qLineInTab')
        ..add(serializers.serialize(object.lineInTab,
            specifiedType: const FullType(int)));
    }
    if (object.colInLine != null) {
      result
        ..add('qColInLine')
        ..add(serializers.serialize(object.colInLine,
            specifiedType: const FullType(int)));
    }
    if (object.textPos != null) {
      result
        ..add('qTextPos')
        ..add(serializers.serialize(object.textPos,
            specifiedType: const FullType(int)));
    }
    if (object.secondaryFailure != null) {
      result
        ..add('qSecondaryFailure')
        ..add(serializers.serialize(object.secondaryFailure,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  ScriptSyntaxError deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScriptSyntaxErrorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qErrLen':
          result.errLen = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qTabIx':
          result.tabIx = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qLineInTab':
          result.lineInTab = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qColInLine':
          result.colInLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qTextPos':
          result.textPos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qSecondaryFailure':
          result.secondaryFailure = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ScriptSyntaxError extends ScriptSyntaxError {
  @override
  final int errLen;
  @override
  final int tabIx;
  @override
  final int lineInTab;
  @override
  final int colInLine;
  @override
  final int textPos;
  @override
  final bool secondaryFailure;

  factory _$ScriptSyntaxError([void updates(ScriptSyntaxErrorBuilder b)]) =>
      (new ScriptSyntaxErrorBuilder()..update(updates)).build();

  _$ScriptSyntaxError._(
      {this.errLen,
      this.tabIx,
      this.lineInTab,
      this.colInLine,
      this.textPos,
      this.secondaryFailure})
      : super._();

  @override
  ScriptSyntaxError rebuild(void updates(ScriptSyntaxErrorBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ScriptSyntaxErrorBuilder toBuilder() =>
      new ScriptSyntaxErrorBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ScriptSyntaxError) return false;
    return errLen == other.errLen &&
        tabIx == other.tabIx &&
        lineInTab == other.lineInTab &&
        colInLine == other.colInLine &&
        textPos == other.textPos &&
        secondaryFailure == other.secondaryFailure;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, errLen.hashCode), tabIx.hashCode),
                    lineInTab.hashCode),
                colInLine.hashCode),
            textPos.hashCode),
        secondaryFailure.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScriptSyntaxError')
          ..add('errLen', errLen)
          ..add('tabIx', tabIx)
          ..add('lineInTab', lineInTab)
          ..add('colInLine', colInLine)
          ..add('textPos', textPos)
          ..add('secondaryFailure', secondaryFailure))
        .toString();
  }
}

class ScriptSyntaxErrorBuilder
    implements Builder<ScriptSyntaxError, ScriptSyntaxErrorBuilder> {
  _$ScriptSyntaxError _$v;

  int _errLen;
  int get errLen => _$this._errLen;
  set errLen(int errLen) => _$this._errLen = errLen;

  int _tabIx;
  int get tabIx => _$this._tabIx;
  set tabIx(int tabIx) => _$this._tabIx = tabIx;

  int _lineInTab;
  int get lineInTab => _$this._lineInTab;
  set lineInTab(int lineInTab) => _$this._lineInTab = lineInTab;

  int _colInLine;
  int get colInLine => _$this._colInLine;
  set colInLine(int colInLine) => _$this._colInLine = colInLine;

  int _textPos;
  int get textPos => _$this._textPos;
  set textPos(int textPos) => _$this._textPos = textPos;

  bool _secondaryFailure;
  bool get secondaryFailure => _$this._secondaryFailure;
  set secondaryFailure(bool secondaryFailure) =>
      _$this._secondaryFailure = secondaryFailure;

  ScriptSyntaxErrorBuilder();

  ScriptSyntaxErrorBuilder get _$this {
    if (_$v != null) {
      _errLen = _$v.errLen;
      _tabIx = _$v.tabIx;
      _lineInTab = _$v.lineInTab;
      _colInLine = _$v.colInLine;
      _textPos = _$v.textPos;
      _secondaryFailure = _$v.secondaryFailure;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScriptSyntaxError other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ScriptSyntaxError;
  }

  @override
  void update(void updates(ScriptSyntaxErrorBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ScriptSyntaxError build() {
    final _$result = _$v ??
        new _$ScriptSyntaxError._(
            errLen: errLen,
            tabIx: tabIx,
            lineInTab: lineInTab,
            colInLine: colInLine,
            textPos: textPos,
            secondaryFailure: secondaryFailure);
    replace(_$result);
    return _$result;
  }
}
