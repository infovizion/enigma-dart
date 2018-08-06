// GENERATED CODE - DO NOT MODIFY BY HAND

part of interact_def;

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

Serializer<InteractDef> _$interactDefSerializer = new _$InteractDefSerializer();

class _$InteractDefSerializer implements StructuredSerializer<InteractDef> {
  @override
  final Iterable<Type> types = const [InteractDef, _$InteractDef];
  @override
  final String wireName = 'InteractDef';

  @override
  Iterable serialize(Serializers serializers, InteractDef object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.type != null) {
      result
        ..add('qType')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('qTitle')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.msg != null) {
      result
        ..add('qMsg')
        ..add(serializers.serialize(object.msg,
            specifiedType: const FullType(String)));
    }
    if (object.buttons != null) {
      result
        ..add('qButtons')
        ..add(serializers.serialize(object.buttons,
            specifiedType: const FullType(int)));
    }
    if (object.line != null) {
      result
        ..add('qLine')
        ..add(serializers.serialize(object.line,
            specifiedType: const FullType(String)));
    }
    if (object.oldLineNr != null) {
      result
        ..add('qOldLineNr')
        ..add(serializers.serialize(object.oldLineNr,
            specifiedType: const FullType(int)));
    }
    if (object.newLineNr != null) {
      result
        ..add('qNewLineNr')
        ..add(serializers.serialize(object.newLineNr,
            specifiedType: const FullType(int)));
    }
    if (object.path != null) {
      result
        ..add('qPath')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    if (object.hidden != null) {
      result
        ..add('qHidden')
        ..add(serializers.serialize(object.hidden,
            specifiedType: const FullType(bool)));
    }
    if (object.result != null) {
      result
        ..add('qResult')
        ..add(serializers.serialize(object.result,
            specifiedType: const FullType(int)));
    }
    if (object.input != null) {
      result
        ..add('qInput')
        ..add(serializers.serialize(object.input,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  InteractDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InteractDefBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qType':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qTitle':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qMsg':
          result.msg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qButtons':
          result.buttons = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qLine':
          result.line = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qOldLineNr':
          result.oldLineNr = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qNewLineNr':
          result.newLineNr = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qPath':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qHidden':
          result.hidden = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qResult':
          result.result = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qInput':
          result.input = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InteractDef extends InteractDef {
  @override
  final String type;
  @override
  final String title;
  @override
  final String msg;
  @override
  final int buttons;
  @override
  final String line;
  @override
  final int oldLineNr;
  @override
  final int newLineNr;
  @override
  final String path;
  @override
  final bool hidden;
  @override
  final int result;
  @override
  final String input;

  factory _$InteractDef([void updates(InteractDefBuilder b)]) =>
      (new InteractDefBuilder()..update(updates)).build();

  _$InteractDef._(
      {this.type,
      this.title,
      this.msg,
      this.buttons,
      this.line,
      this.oldLineNr,
      this.newLineNr,
      this.path,
      this.hidden,
      this.result,
      this.input})
      : super._();

  @override
  InteractDef rebuild(void updates(InteractDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  InteractDefBuilder toBuilder() => new InteractDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! InteractDef) return false;
    return type == other.type &&
        title == other.title &&
        msg == other.msg &&
        buttons == other.buttons &&
        line == other.line &&
        oldLineNr == other.oldLineNr &&
        newLineNr == other.newLineNr &&
        path == other.path &&
        hidden == other.hidden &&
        result == other.result &&
        input == other.input;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, type.hashCode),
                                            title.hashCode),
                                        msg.hashCode),
                                    buttons.hashCode),
                                line.hashCode),
                            oldLineNr.hashCode),
                        newLineNr.hashCode),
                    path.hashCode),
                hidden.hashCode),
            result.hashCode),
        input.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InteractDef')
          ..add('type', type)
          ..add('title', title)
          ..add('msg', msg)
          ..add('buttons', buttons)
          ..add('line', line)
          ..add('oldLineNr', oldLineNr)
          ..add('newLineNr', newLineNr)
          ..add('path', path)
          ..add('hidden', hidden)
          ..add('result', result)
          ..add('input', input))
        .toString();
  }
}

class InteractDefBuilder implements Builder<InteractDef, InteractDefBuilder> {
  _$InteractDef _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _msg;
  String get msg => _$this._msg;
  set msg(String msg) => _$this._msg = msg;

  int _buttons;
  int get buttons => _$this._buttons;
  set buttons(int buttons) => _$this._buttons = buttons;

  String _line;
  String get line => _$this._line;
  set line(String line) => _$this._line = line;

  int _oldLineNr;
  int get oldLineNr => _$this._oldLineNr;
  set oldLineNr(int oldLineNr) => _$this._oldLineNr = oldLineNr;

  int _newLineNr;
  int get newLineNr => _$this._newLineNr;
  set newLineNr(int newLineNr) => _$this._newLineNr = newLineNr;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  bool _hidden;
  bool get hidden => _$this._hidden;
  set hidden(bool hidden) => _$this._hidden = hidden;

  int _result;
  int get result => _$this._result;
  set result(int result) => _$this._result = result;

  String _input;
  String get input => _$this._input;
  set input(String input) => _$this._input = input;

  InteractDefBuilder();

  InteractDefBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _title = _$v.title;
      _msg = _$v.msg;
      _buttons = _$v.buttons;
      _line = _$v.line;
      _oldLineNr = _$v.oldLineNr;
      _newLineNr = _$v.newLineNr;
      _path = _$v.path;
      _hidden = _$v.hidden;
      _result = _$v.result;
      _input = _$v.input;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InteractDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$InteractDef;
  }

  @override
  void update(void updates(InteractDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$InteractDef build() {
    final _$result = _$v ??
        new _$InteractDef._(
            type: type,
            title: title,
            msg: msg,
            buttons: buttons,
            line: line,
            oldLineNr: oldLineNr,
            newLineNr: newLineNr,
            path: path,
            hidden: hidden,
            result: result,
            input: input);
    replace(_$result);
    return _$result;
  }
}
