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
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
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

class _$ExtensionList extends ExtensionList {
  @override
  final List<NxCell> items;

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

  List<NxCell> _items;
  List<NxCell> get items => _$this._items;
  set items(List<NxCell> items) => _$this._items = items;

  ExtensionListBuilder();

  ExtensionListBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items;
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
    final _$result = _$v ?? new _$ExtensionList._(items: items);
    replace(_$result);
    return _$result;
  }
}
