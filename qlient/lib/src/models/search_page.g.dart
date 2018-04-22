// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_page;

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

Serializer<SearchPage> _$searchPageSerializer = new _$SearchPageSerializer();

class _$SearchPageSerializer implements StructuredSerializer<SearchPage> {
  @override
  final Iterable<Type> types = const [SearchPage, _$SearchPage];
  @override
  final String wireName = 'SearchPage';

  @override
  Iterable serialize(Serializers serializers, SearchPage object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.offset != null) {
      result
        ..add('offset')
        ..add(serializers.serialize(object.offset,
            specifiedType: const FullType(int)));
    }
    if (object.count != null) {
      result
        ..add('count')
        ..add(serializers.serialize(object.count,
            specifiedType: const FullType(int)));
    }
    if (object.maxNbrFieldMatches != null) {
      result
        ..add('maxNbrFieldMatches')
        ..add(serializers.serialize(object.maxNbrFieldMatches,
            specifiedType: const FullType(int)));
    }
    if (object.groupOptions != null) {
      result
        ..add('groupOptions')
        ..add(serializers.serialize(object.groupOptions,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.groupItemOptions != null) {
      result
        ..add('groupItemOptions')
        ..add(serializers.serialize(object.groupItemOptions,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  SearchPage deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SearchPageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'maxNbrFieldMatches':
          result.maxNbrFieldMatches = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'groupOptions':
          result.groupOptions = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'groupItemOptions':
          result.groupItemOptions = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchPage extends SearchPage {
  @override
  final int offset;
  @override
  final int count;
  @override
  final int maxNbrFieldMatches;
  @override
  final List<NxCell> groupOptions;
  @override
  final List<NxCell> groupItemOptions;

  factory _$SearchPage([void updates(SearchPageBuilder b)]) =>
      (new SearchPageBuilder()..update(updates)).build();

  _$SearchPage._(
      {this.offset,
      this.count,
      this.maxNbrFieldMatches,
      this.groupOptions,
      this.groupItemOptions})
      : super._();

  @override
  SearchPage rebuild(void updates(SearchPageBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchPageBuilder toBuilder() => new SearchPageBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SearchPage) return false;
    return offset == other.offset &&
        count == other.count &&
        maxNbrFieldMatches == other.maxNbrFieldMatches &&
        groupOptions == other.groupOptions &&
        groupItemOptions == other.groupItemOptions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, offset.hashCode), count.hashCode),
                maxNbrFieldMatches.hashCode),
            groupOptions.hashCode),
        groupItemOptions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchPage')
          ..add('offset', offset)
          ..add('count', count)
          ..add('maxNbrFieldMatches', maxNbrFieldMatches)
          ..add('groupOptions', groupOptions)
          ..add('groupItemOptions', groupItemOptions))
        .toString();
  }
}

class SearchPageBuilder implements Builder<SearchPage, SearchPageBuilder> {
  _$SearchPage _$v;

  int _offset;
  int get offset => _$this._offset;
  set offset(int offset) => _$this._offset = offset;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  int _maxNbrFieldMatches;
  int get maxNbrFieldMatches => _$this._maxNbrFieldMatches;
  set maxNbrFieldMatches(int maxNbrFieldMatches) =>
      _$this._maxNbrFieldMatches = maxNbrFieldMatches;

  List<NxCell> _groupOptions;
  List<NxCell> get groupOptions => _$this._groupOptions;
  set groupOptions(List<NxCell> groupOptions) =>
      _$this._groupOptions = groupOptions;

  List<NxCell> _groupItemOptions;
  List<NxCell> get groupItemOptions => _$this._groupItemOptions;
  set groupItemOptions(List<NxCell> groupItemOptions) =>
      _$this._groupItemOptions = groupItemOptions;

  SearchPageBuilder();

  SearchPageBuilder get _$this {
    if (_$v != null) {
      _offset = _$v.offset;
      _count = _$v.count;
      _maxNbrFieldMatches = _$v.maxNbrFieldMatches;
      _groupOptions = _$v.groupOptions;
      _groupItemOptions = _$v.groupItemOptions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchPage other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SearchPage;
  }

  @override
  void update(void updates(SearchPageBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchPage build() {
    final _$result = _$v ??
        new _$SearchPage._(
            offset: offset,
            count: count,
            maxNbrFieldMatches: maxNbrFieldMatches,
            groupOptions: groupOptions,
            groupItemOptions: groupItemOptions);
    replace(_$result);
    return _$result;
  }
}
