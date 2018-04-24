// GENERATED CODE - DO NOT MODIFY BY HAND

part of media_list;

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

Serializer<MediaList> _$mediaListSerializer = new _$MediaListSerializer();

class _$MediaListSerializer implements StructuredSerializer<MediaList> {
  @override
  final Iterable<Type> types = const [MediaList, _$MediaList];
  @override
  final String wireName = 'MediaList';

  @override
  Iterable serialize(Serializers serializers, MediaList object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.items != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  MediaList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new MediaListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$MediaList extends MediaList {
  @override
  final BuiltList<NxCell> items;

  factory _$MediaList([void updates(MediaListBuilder b)]) =>
      (new MediaListBuilder()..update(updates)).build();

  _$MediaList._({this.items}) : super._();

  @override
  MediaList rebuild(void updates(MediaListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaListBuilder toBuilder() => new MediaListBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! MediaList) return false;
    return items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MediaList')..add('items', items))
        .toString();
  }
}

class MediaListBuilder implements Builder<MediaList, MediaListBuilder> {
  _$MediaList _$v;

  ListBuilder<NxCell> _items;
  ListBuilder<NxCell> get items => _$this._items ??= new ListBuilder<NxCell>();
  set items(ListBuilder<NxCell> items) => _$this._items = items;

  MediaListBuilder();

  MediaListBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$MediaList;
  }

  @override
  void update(void updates(MediaListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MediaList build() {
    _$MediaList _$result;
    try {
      _$result = _$v ?? new _$MediaList._(items: _items?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MediaList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
