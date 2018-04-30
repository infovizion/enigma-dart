// GENERATED CODE - DO NOT MODIFY BY HAND

part of field_list;

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

Serializer<FieldList> _$fieldListSerializer = new _$FieldListSerializer();

class _$FieldListSerializer implements StructuredSerializer<FieldList> {
  @override
  final Iterable<Type> types = const [FieldList, _$FieldList];
  @override
  final String wireName = 'FieldList';

  @override
  Iterable serialize(Serializers serializers, FieldList object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.items != null) {
      result
        ..add('qItems')
        ..add(serializers.serialize(object.items,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  FieldList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FieldListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qItems':
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

class _$FieldList extends FieldList {
  @override
  final BuiltList<NxCell> items;

  factory _$FieldList([void updates(FieldListBuilder b)]) =>
      (new FieldListBuilder()..update(updates)).build();

  _$FieldList._({this.items}) : super._();

  @override
  FieldList rebuild(void updates(FieldListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldListBuilder toBuilder() => new FieldListBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FieldList) return false;
    return items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FieldList')..add('items', items))
        .toString();
  }
}

class FieldListBuilder implements Builder<FieldList, FieldListBuilder> {
  _$FieldList _$v;

  ListBuilder<NxCell> _items;
  ListBuilder<NxCell> get items => _$this._items ??= new ListBuilder<NxCell>();
  set items(ListBuilder<NxCell> items) => _$this._items = items;

  FieldListBuilder();

  FieldListBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FieldList;
  }

  @override
  void update(void updates(FieldListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FieldList build() {
    _$FieldList _$result;
    try {
      _$result = _$v ?? new _$FieldList._(items: _items?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FieldList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
