// GENERATED CODE - DO NOT MODIFY BY HAND

part of static_content_list;

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

Serializer<StaticContentList> _$staticContentListSerializer =
    new _$StaticContentListSerializer();

class _$StaticContentListSerializer
    implements StructuredSerializer<StaticContentList> {
  @override
  final Iterable<Type> types = const [StaticContentList, _$StaticContentList];
  @override
  final String wireName = 'StaticContentList';

  @override
  Iterable serialize(Serializers serializers, StaticContentList object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.items != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  StaticContentList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new StaticContentListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'items':
          result.items = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
      }
    }

    return result.build();
  }
}

class _$StaticContentList extends StaticContentList {
  @override
  final List<NxCell> items;

  factory _$StaticContentList([void updates(StaticContentListBuilder b)]) =>
      (new StaticContentListBuilder()..update(updates)).build();

  _$StaticContentList._({this.items}) : super._();

  @override
  StaticContentList rebuild(void updates(StaticContentListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StaticContentListBuilder toBuilder() =>
      new StaticContentListBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! StaticContentList) return false;
    return items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StaticContentList')
          ..add('items', items))
        .toString();
  }
}

class StaticContentListBuilder
    implements Builder<StaticContentList, StaticContentListBuilder> {
  _$StaticContentList _$v;

  List<NxCell> _items;
  List<NxCell> get items => _$this._items;
  set items(List<NxCell> items) => _$this._items = items;

  StaticContentListBuilder();

  StaticContentListBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StaticContentList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$StaticContentList;
  }

  @override
  void update(void updates(StaticContentListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$StaticContentList build() {
    final _$result = _$v ?? new _$StaticContentList._(items: items);
    replace(_$result);
    return _$result;
  }
}
