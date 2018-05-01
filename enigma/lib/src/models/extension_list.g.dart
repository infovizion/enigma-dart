// GENERATED CODE - DO NOT MODIFY BY HAND

part of extension_list;

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

Serializer<ExtensionList> _$extensionListSerializer =
    new _$ExtensionListSerializer();

class _$ExtensionListSerializer implements StructuredSerializer<ExtensionList> {
  @override
  final Iterable<Type> types = const [ExtensionList, _$ExtensionList];
  @override
  final String wireName = 'ExtensionList';

  @override
  Iterable serialize(Serializers serializers, ExtensionList object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.items != null) {
      result
        ..add('qItems')
        ..add(serializers.serialize(object.items,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }

    return result;
  }

  @override
  ExtensionList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ExtensionListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qItems':
          result.items.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ExtensionList extends ExtensionList {
  @override
  final BuiltList<String> items;

  factory _$ExtensionList([void updates(ExtensionListBuilder b)]) =>
      (new ExtensionListBuilder()..update(updates)).build();

  _$ExtensionList._({this.items}) : super._();

  @override
  ExtensionList rebuild(void updates(ExtensionListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ExtensionListBuilder toBuilder() => new ExtensionListBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ExtensionList) return false;
    return items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExtensionList')..add('items', items))
        .toString();
  }
}

class ExtensionListBuilder
    implements Builder<ExtensionList, ExtensionListBuilder> {
  _$ExtensionList _$v;

  ListBuilder<String> _items;
  ListBuilder<String> get items => _$this._items ??= new ListBuilder<String>();
  set items(ListBuilder<String> items) => _$this._items = items;

  ExtensionListBuilder();

  ExtensionListBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExtensionList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ExtensionList;
  }

  @override
  void update(void updates(ExtensionListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ExtensionList build() {
    _$ExtensionList _$result;
    try {
      _$result = _$v ?? new _$ExtensionList._(items: _items?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ExtensionList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
