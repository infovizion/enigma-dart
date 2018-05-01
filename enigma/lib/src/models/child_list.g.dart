// GENERATED CODE - DO NOT MODIFY BY HAND

part of child_list;

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

Serializer<ChildList> _$childListSerializer = new _$ChildListSerializer();

class _$ChildListSerializer implements StructuredSerializer<ChildList> {
  @override
  final Iterable<Type> types = const [ChildList, _$ChildList];
  @override
  final String wireName = 'ChildList';

  @override
  Iterable serialize(Serializers serializers, ChildList object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.items != null) {
      result
        ..add('qItems')
        ..add(serializers.serialize(object.items,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxContainerEntry)])));
    }

    return result;
  }

  @override
  ChildList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ChildListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qItems':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxContainerEntry)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ChildList extends ChildList {
  @override
  final BuiltList<NxContainerEntry> items;

  factory _$ChildList([void updates(ChildListBuilder b)]) =>
      (new ChildListBuilder()..update(updates)).build();

  _$ChildList._({this.items}) : super._();

  @override
  ChildList rebuild(void updates(ChildListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ChildListBuilder toBuilder() => new ChildListBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ChildList) return false;
    return items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChildList')..add('items', items))
        .toString();
  }
}

class ChildListBuilder implements Builder<ChildList, ChildListBuilder> {
  _$ChildList _$v;

  ListBuilder<NxContainerEntry> _items;
  ListBuilder<NxContainerEntry> get items =>
      _$this._items ??= new ListBuilder<NxContainerEntry>();
  set items(ListBuilder<NxContainerEntry> items) => _$this._items = items;

  ChildListBuilder();

  ChildListBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChildList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ChildList;
  }

  @override
  void update(void updates(ChildListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ChildList build() {
    _$ChildList _$result;
    try {
      _$result = _$v ?? new _$ChildList._(items: _items?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ChildList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
