// GENERATED CODE - DO NOT MODIFY BY HAND

part of code_page;

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

Serializer<CodePage> _$codePageSerializer = new _$CodePageSerializer();

class _$CodePageSerializer implements StructuredSerializer<CodePage> {
  @override
  final Iterable<Type> types = const [CodePage, _$CodePage];
  @override
  final String wireName = 'CodePage';

  @override
  Iterable serialize(Serializers serializers, CodePage object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.number != null) {
      result
        ..add('number')
        ..add(serializers.serialize(object.number,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  CodePage deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new CodePageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CodePage extends CodePage {
  @override
  final int number;
  @override
  final String name;
  @override
  final String description;

  factory _$CodePage([void updates(CodePageBuilder b)]) =>
      (new CodePageBuilder()..update(updates)).build();

  _$CodePage._({this.number, this.name, this.description}) : super._();

  @override
  CodePage rebuild(void updates(CodePageBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CodePageBuilder toBuilder() => new CodePageBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! CodePage) return false;
    return number == other.number &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, number.hashCode), name.hashCode), description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CodePage')
          ..add('number', number)
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class CodePageBuilder implements Builder<CodePage, CodePageBuilder> {
  _$CodePage _$v;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  CodePageBuilder();

  CodePageBuilder get _$this {
    if (_$v != null) {
      _number = _$v.number;
      _name = _$v.name;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodePage other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CodePage;
  }

  @override
  void update(void updates(CodePageBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CodePage build() {
    final _$result = _$v ??
        new _$CodePage._(number: number, name: name, description: description);
    replace(_$result);
    return _$result;
  }
}
