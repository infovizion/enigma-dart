// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_group_options;

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

Serializer<SearchGroupOptions> _$searchGroupOptionsSerializer =
    new _$SearchGroupOptionsSerializer();

class _$SearchGroupOptionsSerializer
    implements StructuredSerializer<SearchGroupOptions> {
  @override
  final Iterable<Type> types = const [SearchGroupOptions, _$SearchGroupOptions];
  @override
  final String wireName = 'SearchGroupOptions';

  @override
  Iterable serialize(Serializers serializers, SearchGroupOptions object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.groupType != null) {
      result
        ..add('qGroupType')
        ..add(serializers.serialize(object.groupType,
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
  SearchGroupOptions deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SearchGroupOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qGroupType':
          result.groupType = serializers.deserialize(value,
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

class _$SearchGroupOptions extends SearchGroupOptions {
  @override
  final String groupType;
  @override
  final int offset;
  @override
  final int count;

  factory _$SearchGroupOptions([void updates(SearchGroupOptionsBuilder b)]) =>
      (new SearchGroupOptionsBuilder()..update(updates)).build();

  _$SearchGroupOptions._({this.groupType, this.offset, this.count}) : super._();

  @override
  SearchGroupOptions rebuild(void updates(SearchGroupOptionsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchGroupOptionsBuilder toBuilder() =>
      new SearchGroupOptionsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchGroupOptions) return false;
    return groupType == other.groupType &&
        offset == other.offset &&
        count == other.count;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, groupType.hashCode), offset.hashCode), count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchGroupOptions')
          ..add('groupType', groupType)
          ..add('offset', offset)
          ..add('count', count))
        .toString();
  }
}

class SearchGroupOptionsBuilder
    implements Builder<SearchGroupOptions, SearchGroupOptionsBuilder> {
  _$SearchGroupOptions _$v;

  String _groupType;
  String get groupType => _$this._groupType;
  set groupType(String groupType) => _$this._groupType = groupType;

  int _offset;
  int get offset => _$this._offset;
  set offset(int offset) => _$this._offset = offset;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  SearchGroupOptionsBuilder();

  SearchGroupOptionsBuilder get _$this {
    if (_$v != null) {
      _groupType = _$v.groupType;
      _offset = _$v.offset;
      _count = _$v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchGroupOptions other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchGroupOptions;
  }

  @override
  void update(void updates(SearchGroupOptionsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchGroupOptions build() {
    final _$result = _$v ??
        new _$SearchGroupOptions._(
            groupType: groupType, offset: offset, count: count);
    replace(_$result);
    return _$result;
  }
}
