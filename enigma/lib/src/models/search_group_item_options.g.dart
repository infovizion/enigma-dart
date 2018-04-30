// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_group_item_options;

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

Serializer<SearchGroupItemOptions> _$searchGroupItemOptionsSerializer =
    new _$SearchGroupItemOptionsSerializer();

class _$SearchGroupItemOptionsSerializer
    implements StructuredSerializer<SearchGroupItemOptions> {
  @override
  final Iterable<Type> types = const [
    SearchGroupItemOptions,
    _$SearchGroupItemOptions
  ];
  @override
  final String wireName = 'SearchGroupItemOptions';

  @override
  Iterable serialize(Serializers serializers, SearchGroupItemOptions object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.groupItemType != null) {
      result
        ..add('qGroupItemType')
        ..add(serializers.serialize(object.groupItemType,
            specifiedType: const FullType(String)));
    }
    if (object.offset != null) {
      result
        ..add('qOffset')
        ..add(serializers.serialize(object.offset,
            specifiedType: const FullType(int)));
    }
    if (object.count != null) {
      result
        ..add('qCount')
        ..add(serializers.serialize(object.count,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  SearchGroupItemOptions deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SearchGroupItemOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qGroupItemType':
          result.groupItemType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qOffset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qCount':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchGroupItemOptions extends SearchGroupItemOptions {
  @override
  final String groupItemType;
  @override
  final int offset;
  @override
  final int count;

  factory _$SearchGroupItemOptions(
          [void updates(SearchGroupItemOptionsBuilder b)]) =>
      (new SearchGroupItemOptionsBuilder()..update(updates)).build();

  _$SearchGroupItemOptions._({this.groupItemType, this.offset, this.count})
      : super._();

  @override
  SearchGroupItemOptions rebuild(
          void updates(SearchGroupItemOptionsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchGroupItemOptionsBuilder toBuilder() =>
      new SearchGroupItemOptionsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchGroupItemOptions) return false;
    return groupItemType == other.groupItemType &&
        offset == other.offset &&
        count == other.count;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, groupItemType.hashCode), offset.hashCode), count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchGroupItemOptions')
          ..add('groupItemType', groupItemType)
          ..add('offset', offset)
          ..add('count', count))
        .toString();
  }
}

class SearchGroupItemOptionsBuilder
    implements Builder<SearchGroupItemOptions, SearchGroupItemOptionsBuilder> {
  _$SearchGroupItemOptions _$v;

  String _groupItemType;
  String get groupItemType => _$this._groupItemType;
  set groupItemType(String groupItemType) =>
      _$this._groupItemType = groupItemType;

  int _offset;
  int get offset => _$this._offset;
  set offset(int offset) => _$this._offset = offset;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  SearchGroupItemOptionsBuilder();

  SearchGroupItemOptionsBuilder get _$this {
    if (_$v != null) {
      _groupItemType = _$v.groupItemType;
      _offset = _$v.offset;
      _count = _$v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchGroupItemOptions other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchGroupItemOptions;
  }

  @override
  void update(void updates(SearchGroupItemOptionsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchGroupItemOptions build() {
    final _$result = _$v ??
        new _$SearchGroupItemOptions._(
            groupItemType: groupItemType, offset: offset, count: count);
    replace(_$result);
    return _$result;
  }
}
