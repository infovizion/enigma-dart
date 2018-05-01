// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_derived_field_description_list;

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

Serializer<NxDerivedFieldDescriptionList>
    _$nxDerivedFieldDescriptionListSerializer =
    new _$NxDerivedFieldDescriptionListSerializer();

class _$NxDerivedFieldDescriptionListSerializer
    implements StructuredSerializer<NxDerivedFieldDescriptionList> {
  @override
  final Iterable<Type> types = const [
    NxDerivedFieldDescriptionList,
    _$NxDerivedFieldDescriptionList
  ];
  @override
  final String wireName = 'NxDerivedFieldDescriptionList';

  @override
  Iterable serialize(
      Serializers serializers, NxDerivedFieldDescriptionList object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.derivedFieldLists != null) {
      result
        ..add('qDerivedFieldLists')
        ..add(serializers.serialize(object.derivedFieldLists,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxDerivedFieldsData)])));
    }

    return result;
  }

  @override
  NxDerivedFieldDescriptionList deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxDerivedFieldDescriptionListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qDerivedFieldLists':
          result.derivedFieldLists.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NxDerivedFieldsData)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$NxDerivedFieldDescriptionList extends NxDerivedFieldDescriptionList {
  @override
  final BuiltList<NxDerivedFieldsData> derivedFieldLists;

  factory _$NxDerivedFieldDescriptionList(
          [void updates(NxDerivedFieldDescriptionListBuilder b)]) =>
      (new NxDerivedFieldDescriptionListBuilder()..update(updates)).build();

  _$NxDerivedFieldDescriptionList._({this.derivedFieldLists}) : super._();

  @override
  NxDerivedFieldDescriptionList rebuild(
          void updates(NxDerivedFieldDescriptionListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxDerivedFieldDescriptionListBuilder toBuilder() =>
      new NxDerivedFieldDescriptionListBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxDerivedFieldDescriptionList) return false;
    return derivedFieldLists == other.derivedFieldLists;
  }

  @override
  int get hashCode {
    return $jf($jc(0, derivedFieldLists.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxDerivedFieldDescriptionList')
          ..add('derivedFieldLists', derivedFieldLists))
        .toString();
  }
}

class NxDerivedFieldDescriptionListBuilder
    implements
        Builder<NxDerivedFieldDescriptionList,
            NxDerivedFieldDescriptionListBuilder> {
  _$NxDerivedFieldDescriptionList _$v;

  ListBuilder<NxDerivedFieldsData> _derivedFieldLists;
  ListBuilder<NxDerivedFieldsData> get derivedFieldLists =>
      _$this._derivedFieldLists ??= new ListBuilder<NxDerivedFieldsData>();
  set derivedFieldLists(ListBuilder<NxDerivedFieldsData> derivedFieldLists) =>
      _$this._derivedFieldLists = derivedFieldLists;

  NxDerivedFieldDescriptionListBuilder();

  NxDerivedFieldDescriptionListBuilder get _$this {
    if (_$v != null) {
      _derivedFieldLists = _$v.derivedFieldLists?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxDerivedFieldDescriptionList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxDerivedFieldDescriptionList;
  }

  @override
  void update(void updates(NxDerivedFieldDescriptionListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxDerivedFieldDescriptionList build() {
    _$NxDerivedFieldDescriptionList _$result;
    try {
      _$result = _$v ??
          new _$NxDerivedFieldDescriptionList._(
              derivedFieldLists: _derivedFieldLists?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'derivedFieldLists';
        _derivedFieldLists?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxDerivedFieldDescriptionList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
