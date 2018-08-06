// GENERATED CODE - DO NOT MODIFY BY HAND

part of text_macro;

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

Serializer<TextMacro> _$textMacroSerializer = new _$TextMacroSerializer();

class _$TextMacroSerializer implements StructuredSerializer<TextMacro> {
  @override
  final Iterable<Type> types = const [TextMacro, _$TextMacro];
  @override
  final String wireName = 'TextMacro';

  @override
  Iterable serialize(Serializers serializers, TextMacro object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.tag != null) {
      result
        ..add('qTag')
        ..add(serializers.serialize(object.tag,
            specifiedType: const FullType(String)));
    }
    if (object.refSeqNo != null) {
      result
        ..add('qRefSeqNo')
        ..add(serializers.serialize(object.refSeqNo,
            specifiedType: const FullType(int)));
    }
    if (object.setSeqNo != null) {
      result
        ..add('qSetSeqNo')
        ..add(serializers.serialize(object.setSeqNo,
            specifiedType: const FullType(int)));
    }
    if (object.displayString != null) {
      result
        ..add('qDisplayString')
        ..add(serializers.serialize(object.displayString,
            specifiedType: const FullType(String)));
    }
    if (object.isSystem != null) {
      result
        ..add('qIsSystem')
        ..add(serializers.serialize(object.isSystem,
            specifiedType: const FullType(bool)));
    }
    if (object.isReserved != null) {
      result
        ..add('qIsReserved')
        ..add(serializers.serialize(object.isReserved,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  TextMacro deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TextMacroBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qTag':
          result.tag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qRefSeqNo':
          result.refSeqNo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qSetSeqNo':
          result.setSeqNo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qDisplayString':
          result.displayString = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qIsSystem':
          result.isSystem = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qIsReserved':
          result.isReserved = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$TextMacro extends TextMacro {
  @override
  final String tag;
  @override
  final int refSeqNo;
  @override
  final int setSeqNo;
  @override
  final String displayString;
  @override
  final bool isSystem;
  @override
  final bool isReserved;

  factory _$TextMacro([void updates(TextMacroBuilder b)]) =>
      (new TextMacroBuilder()..update(updates)).build();

  _$TextMacro._(
      {this.tag,
      this.refSeqNo,
      this.setSeqNo,
      this.displayString,
      this.isSystem,
      this.isReserved})
      : super._();

  @override
  TextMacro rebuild(void updates(TextMacroBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TextMacroBuilder toBuilder() => new TextMacroBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! TextMacro) return false;
    return tag == other.tag &&
        refSeqNo == other.refSeqNo &&
        setSeqNo == other.setSeqNo &&
        displayString == other.displayString &&
        isSystem == other.isSystem &&
        isReserved == other.isReserved;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, tag.hashCode), refSeqNo.hashCode),
                    setSeqNo.hashCode),
                displayString.hashCode),
            isSystem.hashCode),
        isReserved.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TextMacro')
          ..add('tag', tag)
          ..add('refSeqNo', refSeqNo)
          ..add('setSeqNo', setSeqNo)
          ..add('displayString', displayString)
          ..add('isSystem', isSystem)
          ..add('isReserved', isReserved))
        .toString();
  }
}

class TextMacroBuilder implements Builder<TextMacro, TextMacroBuilder> {
  _$TextMacro _$v;

  String _tag;
  String get tag => _$this._tag;
  set tag(String tag) => _$this._tag = tag;

  int _refSeqNo;
  int get refSeqNo => _$this._refSeqNo;
  set refSeqNo(int refSeqNo) => _$this._refSeqNo = refSeqNo;

  int _setSeqNo;
  int get setSeqNo => _$this._setSeqNo;
  set setSeqNo(int setSeqNo) => _$this._setSeqNo = setSeqNo;

  String _displayString;
  String get displayString => _$this._displayString;
  set displayString(String displayString) =>
      _$this._displayString = displayString;

  bool _isSystem;
  bool get isSystem => _$this._isSystem;
  set isSystem(bool isSystem) => _$this._isSystem = isSystem;

  bool _isReserved;
  bool get isReserved => _$this._isReserved;
  set isReserved(bool isReserved) => _$this._isReserved = isReserved;

  TextMacroBuilder();

  TextMacroBuilder get _$this {
    if (_$v != null) {
      _tag = _$v.tag;
      _refSeqNo = _$v.refSeqNo;
      _setSeqNo = _$v.setSeqNo;
      _displayString = _$v.displayString;
      _isSystem = _$v.isSystem;
      _isReserved = _$v.isReserved;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TextMacro other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$TextMacro;
  }

  @override
  void update(void updates(TextMacroBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TextMacro build() {
    final _$result = _$v ??
        new _$TextMacro._(
            tag: tag,
            refSeqNo: refSeqNo,
            setSeqNo: setSeqNo,
            displayString: displayString,
            isSystem: isSystem,
            isReserved: isReserved);
    replace(_$result);
    return _$result;
  }
}
