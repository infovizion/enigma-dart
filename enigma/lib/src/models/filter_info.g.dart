// GENERATED CODE - DO NOT MODIFY BY HAND

part of filter_info;

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

Serializer<FilterInfo> _$filterInfoSerializer = new _$FilterInfoSerializer();

class _$FilterInfoSerializer implements StructuredSerializer<FilterInfo> {
  @override
  final Iterable<Type> types = const [FilterInfo, _$FilterInfo];
  @override
  final String wireName = 'FilterInfo';

  @override
  Iterable serialize(Serializers serializers, FilterInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.type != null) {
      result
        ..add('qType')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.wherePredicate != null) {
      result
        ..add('qWherePredicate')
        ..add(serializers.serialize(object.wherePredicate,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  FilterInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FilterInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qType':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qWherePredicate':
          result.wherePredicate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FilterInfo extends FilterInfo {
  @override
  final String type;
  @override
  final String wherePredicate;

  factory _$FilterInfo([void updates(FilterInfoBuilder b)]) =>
      (new FilterInfoBuilder()..update(updates)).build();

  _$FilterInfo._({this.type, this.wherePredicate}) : super._();

  @override
  FilterInfo rebuild(void updates(FilterInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterInfoBuilder toBuilder() => new FilterInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FilterInfo) return false;
    return type == other.type && wherePredicate == other.wherePredicate;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, type.hashCode), wherePredicate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FilterInfo')
          ..add('type', type)
          ..add('wherePredicate', wherePredicate))
        .toString();
  }
}

class FilterInfoBuilder implements Builder<FilterInfo, FilterInfoBuilder> {
  _$FilterInfo _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _wherePredicate;
  String get wherePredicate => _$this._wherePredicate;
  set wherePredicate(String wherePredicate) =>
      _$this._wherePredicate = wherePredicate;

  FilterInfoBuilder();

  FilterInfoBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _wherePredicate = _$v.wherePredicate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FilterInfo;
  }

  @override
  void update(void updates(FilterInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FilterInfo build() {
    final _$result =
        _$v ?? new _$FilterInfo._(type: type, wherePredicate: wherePredicate);
    replace(_$result);
    return _$result;
  }
}
