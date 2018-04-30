// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_group;

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

Serializer<SearchGroup> _$searchGroupSerializer = new _$SearchGroupSerializer();

class _$SearchGroupSerializer implements StructuredSerializer<SearchGroup> {
  @override
  final Iterable<Type> types = const [SearchGroup, _$SearchGroup];
  @override
  final String wireName = 'SearchGroup';

  @override
  Iterable serialize(Serializers serializers, SearchGroup object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('qId')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.groupType != null) {
      result
        ..add('qGroupType')
        ..add(serializers.serialize(object.groupType,
            specifiedType: const FullType(String)));
    }
    if (object.searchTermsMatched != null) {
      result
        ..add('qSearchTermsMatched')
        ..add(serializers.serialize(object.searchTermsMatched,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.totalNumberOfItems != null) {
      result
        ..add('qTotalNumberOfItems')
        ..add(serializers.serialize(object.totalNumberOfItems,
            specifiedType: const FullType(int)));
    }
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
  SearchGroup deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SearchGroupBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qId':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qGroupType':
          result.groupType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qSearchTermsMatched':
          result.searchTermsMatched.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'qTotalNumberOfItems':
          result.totalNumberOfItems = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
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

class _$SearchGroup extends SearchGroup {
  @override
  final int id;
  @override
  final String groupType;
  @override
  final BuiltList<NxCell> searchTermsMatched;
  @override
  final int totalNumberOfItems;
  @override
  final BuiltList<NxCell> items;

  factory _$SearchGroup([void updates(SearchGroupBuilder b)]) =>
      (new SearchGroupBuilder()..update(updates)).build();

  _$SearchGroup._(
      {this.id,
      this.groupType,
      this.searchTermsMatched,
      this.totalNumberOfItems,
      this.items})
      : super._();

  @override
  SearchGroup rebuild(void updates(SearchGroupBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchGroupBuilder toBuilder() => new SearchGroupBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchGroup) return false;
    return id == other.id &&
        groupType == other.groupType &&
        searchTermsMatched == other.searchTermsMatched &&
        totalNumberOfItems == other.totalNumberOfItems &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, id.hashCode), groupType.hashCode),
                searchTermsMatched.hashCode),
            totalNumberOfItems.hashCode),
        items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchGroup')
          ..add('id', id)
          ..add('groupType', groupType)
          ..add('searchTermsMatched', searchTermsMatched)
          ..add('totalNumberOfItems', totalNumberOfItems)
          ..add('items', items))
        .toString();
  }
}

class SearchGroupBuilder implements Builder<SearchGroup, SearchGroupBuilder> {
  _$SearchGroup _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _groupType;
  String get groupType => _$this._groupType;
  set groupType(String groupType) => _$this._groupType = groupType;

  ListBuilder<NxCell> _searchTermsMatched;
  ListBuilder<NxCell> get searchTermsMatched =>
      _$this._searchTermsMatched ??= new ListBuilder<NxCell>();
  set searchTermsMatched(ListBuilder<NxCell> searchTermsMatched) =>
      _$this._searchTermsMatched = searchTermsMatched;

  int _totalNumberOfItems;
  int get totalNumberOfItems => _$this._totalNumberOfItems;
  set totalNumberOfItems(int totalNumberOfItems) =>
      _$this._totalNumberOfItems = totalNumberOfItems;

  ListBuilder<NxCell> _items;
  ListBuilder<NxCell> get items => _$this._items ??= new ListBuilder<NxCell>();
  set items(ListBuilder<NxCell> items) => _$this._items = items;

  SearchGroupBuilder();

  SearchGroupBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _groupType = _$v.groupType;
      _searchTermsMatched = _$v.searchTermsMatched?.toBuilder();
      _totalNumberOfItems = _$v.totalNumberOfItems;
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchGroup other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchGroup;
  }

  @override
  void update(void updates(SearchGroupBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchGroup build() {
    _$SearchGroup _$result;
    try {
      _$result = _$v ??
          new _$SearchGroup._(
              id: id,
              groupType: groupType,
              searchTermsMatched: _searchTermsMatched?.build(),
              totalNumberOfItems: totalNumberOfItems,
              items: _items?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'searchTermsMatched';
        _searchTermsMatched?.build();

        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchGroup', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
