// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_attr_dim_def;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<NxAttrDimDef> _$nxAttrDimDefSerializer =
    new _$NxAttrDimDefSerializer();

class _$NxAttrDimDefSerializer implements StructuredSerializer<NxAttrDimDef> {
  @override
  final Iterable<Type> types = const [NxAttrDimDef, _$NxAttrDimDef];
  @override
  final String wireName = 'NxAttrDimDef';

  @override
  Iterable serialize(Serializers serializers, NxAttrDimDef object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.def != null) {
      result
        ..add('qDef')
        ..add(serializers.serialize(object.def,
            specifiedType: const FullType(String)));
    }
    if (object.libraryId != null) {
      result
        ..add('qLibraryId')
        ..add(serializers.serialize(object.libraryId,
            specifiedType: const FullType(String)));
    }
    if (object.sortBy != null) {
      result
        ..add('qSortBy')
        ..add(serializers.serialize(object.sortBy,
            specifiedType: const FullType(SortCriteria)));
    }
    if (object.attribute != null) {
      result
        ..add('qAttribute')
        ..add(serializers.serialize(object.attribute,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  NxAttrDimDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxAttrDimDefBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qDef':
          result.def = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qLibraryId':
          result.libraryId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qSortBy':
          result.sortBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(SortCriteria)) as SortCriteria);
          break;
        case 'qAttribute':
          result.attribute = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$NxAttrDimDef extends NxAttrDimDef {
  @override
  final String def;
  @override
  final String libraryId;
  @override
  final SortCriteria sortBy;
  @override
  final bool attribute;

  factory _$NxAttrDimDef([void updates(NxAttrDimDefBuilder b)]) =>
      (new NxAttrDimDefBuilder()..update(updates)).build();

  _$NxAttrDimDef._({this.def, this.libraryId, this.sortBy, this.attribute})
      : super._();

  @override
  NxAttrDimDef rebuild(void updates(NxAttrDimDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxAttrDimDefBuilder toBuilder() => new NxAttrDimDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxAttrDimDef) return false;
    return def == other.def &&
        libraryId == other.libraryId &&
        sortBy == other.sortBy &&
        attribute == other.attribute;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, def.hashCode), libraryId.hashCode), sortBy.hashCode),
        attribute.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxAttrDimDef')
          ..add('def', def)
          ..add('libraryId', libraryId)
          ..add('sortBy', sortBy)
          ..add('attribute', attribute))
        .toString();
  }
}

class NxAttrDimDefBuilder
    implements Builder<NxAttrDimDef, NxAttrDimDefBuilder> {
  _$NxAttrDimDef _$v;

  String _def;
  String get def => _$this._def;
  set def(String def) => _$this._def = def;

  String _libraryId;
  String get libraryId => _$this._libraryId;
  set libraryId(String libraryId) => _$this._libraryId = libraryId;

  SortCriteriaBuilder _sortBy;
  SortCriteriaBuilder get sortBy =>
      _$this._sortBy ??= new SortCriteriaBuilder();
  set sortBy(SortCriteriaBuilder sortBy) => _$this._sortBy = sortBy;

  bool _attribute;
  bool get attribute => _$this._attribute;
  set attribute(bool attribute) => _$this._attribute = attribute;

  NxAttrDimDefBuilder();

  NxAttrDimDefBuilder get _$this {
    if (_$v != null) {
      _def = _$v.def;
      _libraryId = _$v.libraryId;
      _sortBy = _$v.sortBy?.toBuilder();
      _attribute = _$v.attribute;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxAttrDimDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxAttrDimDef;
  }

  @override
  void update(void updates(NxAttrDimDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxAttrDimDef build() {
    _$NxAttrDimDef _$result;
    try {
      _$result = _$v ??
          new _$NxAttrDimDef._(
              def: def,
              libraryId: libraryId,
              sortBy: _sortBy?.build(),
              attribute: attribute);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sortBy';
        _sortBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxAttrDimDef', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
