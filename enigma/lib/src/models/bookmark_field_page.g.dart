// GENERATED CODE - DO NOT MODIFY BY HAND

part of bookmark_field_page;

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

Serializer<BookmarkFieldPage> _$bookmarkFieldPageSerializer =
    new _$BookmarkFieldPageSerializer();

class _$BookmarkFieldPageSerializer
    implements StructuredSerializer<BookmarkFieldPage> {
  @override
  final Iterable<Type> types = const [BookmarkFieldPage, _$BookmarkFieldPage];
  @override
  final String wireName = 'BookmarkFieldPage';

  @override
  Iterable serialize(Serializers serializers, BookmarkFieldPage object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.startIndex != null) {
      result
        ..add('startIndex')
        ..add(serializers.serialize(object.startIndex,
            specifiedType: const FullType(int)));
    }
    if (object.endIndex != null) {
      result
        ..add('endIndex')
        ..add(serializers.serialize(object.endIndex,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  BookmarkFieldPage deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new BookmarkFieldPageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'startIndex':
          result.startIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'endIndex':
          result.endIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BookmarkFieldPage extends BookmarkFieldPage {
  @override
  final int startIndex;
  @override
  final int endIndex;

  factory _$BookmarkFieldPage([void updates(BookmarkFieldPageBuilder b)]) =>
      (new BookmarkFieldPageBuilder()..update(updates)).build();

  _$BookmarkFieldPage._({this.startIndex, this.endIndex}) : super._();

  @override
  BookmarkFieldPage rebuild(void updates(BookmarkFieldPageBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BookmarkFieldPageBuilder toBuilder() =>
      new BookmarkFieldPageBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! BookmarkFieldPage) return false;
    return startIndex == other.startIndex && endIndex == other.endIndex;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, startIndex.hashCode), endIndex.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BookmarkFieldPage')
          ..add('startIndex', startIndex)
          ..add('endIndex', endIndex))
        .toString();
  }
}

class BookmarkFieldPageBuilder
    implements Builder<BookmarkFieldPage, BookmarkFieldPageBuilder> {
  _$BookmarkFieldPage _$v;

  int _startIndex;
  int get startIndex => _$this._startIndex;
  set startIndex(int startIndex) => _$this._startIndex = startIndex;

  int _endIndex;
  int get endIndex => _$this._endIndex;
  set endIndex(int endIndex) => _$this._endIndex = endIndex;

  BookmarkFieldPageBuilder();

  BookmarkFieldPageBuilder get _$this {
    if (_$v != null) {
      _startIndex = _$v.startIndex;
      _endIndex = _$v.endIndex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookmarkFieldPage other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$BookmarkFieldPage;
  }

  @override
  void update(void updates(BookmarkFieldPageBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$BookmarkFieldPage build() {
    final _$result = _$v ??
        new _$BookmarkFieldPage._(startIndex: startIndex, endIndex: endIndex);
    replace(_$result);
    return _$result;
  }
}
