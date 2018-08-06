// GENERATED CODE - DO NOT MODIFY BY HAND

part of bookmark_list_def;

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

Serializer<BookmarkListDef> _$bookmarkListDefSerializer =
    new _$BookmarkListDefSerializer();

class _$BookmarkListDefSerializer
    implements StructuredSerializer<BookmarkListDef> {
  @override
  final Iterable<Type> types = const [BookmarkListDef, _$BookmarkListDef];
  @override
  final String wireName = 'BookmarkListDef';

  @override
  Iterable serialize(Serializers serializers, BookmarkListDef object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.type != null) {
      result
        ..add('qType')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.data != null) {
      result
        ..add('qData')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(JsonObject)));
    }

    return result;
  }

  @override
  BookmarkListDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BookmarkListDefBuilder();

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
        case 'qData':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
      }
    }

    return result.build();
  }
}

class _$BookmarkListDef extends BookmarkListDef {
  @override
  final String type;
  @override
  final JsonObject data;

  factory _$BookmarkListDef([void updates(BookmarkListDefBuilder b)]) =>
      (new BookmarkListDefBuilder()..update(updates)).build();

  _$BookmarkListDef._({this.type, this.data}) : super._();

  @override
  BookmarkListDef rebuild(void updates(BookmarkListDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BookmarkListDefBuilder toBuilder() =>
      new BookmarkListDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! BookmarkListDef) return false;
    return type == other.type && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, type.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BookmarkListDef')
          ..add('type', type)
          ..add('data', data))
        .toString();
  }
}

class BookmarkListDefBuilder
    implements Builder<BookmarkListDef, BookmarkListDefBuilder> {
  _$BookmarkListDef _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  JsonObject _data;
  JsonObject get data => _$this._data;
  set data(JsonObject data) => _$this._data = data;

  BookmarkListDefBuilder();

  BookmarkListDefBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _data = _$v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookmarkListDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$BookmarkListDef;
  }

  @override
  void update(void updates(BookmarkListDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$BookmarkListDef build() {
    final _$result = _$v ?? new _$BookmarkListDef._(type: type, data: data);
    replace(_$result);
    return _$result;
  }
}
