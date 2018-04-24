// GENERATED CODE - DO NOT MODIFY BY HAND

part of bookmark_field_item;

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

Serializer<BookmarkFieldItem> _$bookmarkFieldItemSerializer =
    new _$BookmarkFieldItemSerializer();

class _$BookmarkFieldItemSerializer
    implements StructuredSerializer<BookmarkFieldItem> {
  @override
  final Iterable<Type> types = const [BookmarkFieldItem, _$BookmarkFieldItem];
  @override
  final String wireName = 'BookmarkFieldItem';

  @override
  Iterable serialize(Serializers serializers, BookmarkFieldItem object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.def != null) {
      result
        ..add('def')
        ..add(serializers.serialize(object.def,
            specifiedType: const FullType(FieldDefEx)));
    }
    if (object.locked != null) {
      result
        ..add('locked')
        ..add(serializers.serialize(object.locked,
            specifiedType: const FullType(bool)));
    }
    if (object.selectInfo != null) {
      result
        ..add('selectInfo')
        ..add(serializers.serialize(object.selectInfo,
            specifiedType: const FullType(SelectInfo)));
    }
    if (object.values != null) {
      result
        ..add('values')
        ..add(serializers.serialize(object.values,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.excludedValues != null) {
      result
        ..add('excludedValues')
        ..add(serializers.serialize(object.excludedValues,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.andMode != null) {
      result
        ..add('andMode')
        ..add(serializers.serialize(object.andMode,
            specifiedType: const FullType(bool)));
    }
    if (object.oneAndOnlyOne != null) {
      result
        ..add('oneAndOnlyOne')
        ..add(serializers.serialize(object.oneAndOnlyOne,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  BookmarkFieldItem deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new BookmarkFieldItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'def':
          result.def.replace(serializers.deserialize(value,
              specifiedType: const FullType(FieldDefEx)) as FieldDefEx);
          break;
        case 'locked':
          result.locked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'selectInfo':
          result.selectInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(SelectInfo)) as SelectInfo);
          break;
        case 'values':
          result.values.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'excludedValues':
          result.excludedValues.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'andMode':
          result.andMode = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'oneAndOnlyOne':
          result.oneAndOnlyOne = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$BookmarkFieldItem extends BookmarkFieldItem {
  @override
  final FieldDefEx def;
  @override
  final bool locked;
  @override
  final SelectInfo selectInfo;
  @override
  final BuiltList<NxCell> values;
  @override
  final BuiltList<NxCell> excludedValues;
  @override
  final bool andMode;
  @override
  final bool oneAndOnlyOne;

  factory _$BookmarkFieldItem([void updates(BookmarkFieldItemBuilder b)]) =>
      (new BookmarkFieldItemBuilder()..update(updates)).build();

  _$BookmarkFieldItem._(
      {this.def,
      this.locked,
      this.selectInfo,
      this.values,
      this.excludedValues,
      this.andMode,
      this.oneAndOnlyOne})
      : super._();

  @override
  BookmarkFieldItem rebuild(void updates(BookmarkFieldItemBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BookmarkFieldItemBuilder toBuilder() =>
      new BookmarkFieldItemBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! BookmarkFieldItem) return false;
    return def == other.def &&
        locked == other.locked &&
        selectInfo == other.selectInfo &&
        values == other.values &&
        excludedValues == other.excludedValues &&
        andMode == other.andMode &&
        oneAndOnlyOne == other.oneAndOnlyOne;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, def.hashCode), locked.hashCode),
                        selectInfo.hashCode),
                    values.hashCode),
                excludedValues.hashCode),
            andMode.hashCode),
        oneAndOnlyOne.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BookmarkFieldItem')
          ..add('def', def)
          ..add('locked', locked)
          ..add('selectInfo', selectInfo)
          ..add('values', values)
          ..add('excludedValues', excludedValues)
          ..add('andMode', andMode)
          ..add('oneAndOnlyOne', oneAndOnlyOne))
        .toString();
  }
}

class BookmarkFieldItemBuilder
    implements Builder<BookmarkFieldItem, BookmarkFieldItemBuilder> {
  _$BookmarkFieldItem _$v;

  FieldDefExBuilder _def;
  FieldDefExBuilder get def => _$this._def ??= new FieldDefExBuilder();
  set def(FieldDefExBuilder def) => _$this._def = def;

  bool _locked;
  bool get locked => _$this._locked;
  set locked(bool locked) => _$this._locked = locked;

  SelectInfoBuilder _selectInfo;
  SelectInfoBuilder get selectInfo =>
      _$this._selectInfo ??= new SelectInfoBuilder();
  set selectInfo(SelectInfoBuilder selectInfo) =>
      _$this._selectInfo = selectInfo;

  ListBuilder<NxCell> _values;
  ListBuilder<NxCell> get values =>
      _$this._values ??= new ListBuilder<NxCell>();
  set values(ListBuilder<NxCell> values) => _$this._values = values;

  ListBuilder<NxCell> _excludedValues;
  ListBuilder<NxCell> get excludedValues =>
      _$this._excludedValues ??= new ListBuilder<NxCell>();
  set excludedValues(ListBuilder<NxCell> excludedValues) =>
      _$this._excludedValues = excludedValues;

  bool _andMode;
  bool get andMode => _$this._andMode;
  set andMode(bool andMode) => _$this._andMode = andMode;

  bool _oneAndOnlyOne;
  bool get oneAndOnlyOne => _$this._oneAndOnlyOne;
  set oneAndOnlyOne(bool oneAndOnlyOne) =>
      _$this._oneAndOnlyOne = oneAndOnlyOne;

  BookmarkFieldItemBuilder();

  BookmarkFieldItemBuilder get _$this {
    if (_$v != null) {
      _def = _$v.def?.toBuilder();
      _locked = _$v.locked;
      _selectInfo = _$v.selectInfo?.toBuilder();
      _values = _$v.values?.toBuilder();
      _excludedValues = _$v.excludedValues?.toBuilder();
      _andMode = _$v.andMode;
      _oneAndOnlyOne = _$v.oneAndOnlyOne;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookmarkFieldItem other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$BookmarkFieldItem;
  }

  @override
  void update(void updates(BookmarkFieldItemBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$BookmarkFieldItem build() {
    _$BookmarkFieldItem _$result;
    try {
      _$result = _$v ??
          new _$BookmarkFieldItem._(
              def: _def?.build(),
              locked: locked,
              selectInfo: _selectInfo?.build(),
              values: _values?.build(),
              excludedValues: _excludedValues?.build(),
              andMode: andMode,
              oneAndOnlyOne: oneAndOnlyOne);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'def';
        _def?.build();

        _$failedField = 'selectInfo';
        _selectInfo?.build();
        _$failedField = 'values';
        _values?.build();
        _$failedField = 'excludedValues';
        _excludedValues?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BookmarkFieldItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
