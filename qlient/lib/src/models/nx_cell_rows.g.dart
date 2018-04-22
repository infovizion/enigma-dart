// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_cell_rows;

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

Serializer<NxCellRows> _$nxCellRowsSerializer = new _$NxCellRowsSerializer();

class _$NxCellRowsSerializer implements StructuredSerializer<NxCellRows> {
  @override
  final Iterable<Type> types = const [NxCellRows, _$NxCellRows];
  @override
  final String wireName = 'NxCellRows';

  @override
  Iterable serialize(Serializers serializers, NxCellRows object,
      {FullType specifiedType: FullType.unspecified}) {
    return <Object>[];
  }

  @override
  NxCellRows deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    return new NxCellRowsBuilder().build();
  }
}

class _$NxCellRows extends NxCellRows {
  factory _$NxCellRows([void updates(NxCellRowsBuilder b)]) =>
      (new NxCellRowsBuilder()..update(updates)).build();

  _$NxCellRows._() : super._();

  @override
  NxCellRows rebuild(void updates(NxCellRowsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxCellRowsBuilder toBuilder() => new NxCellRowsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxCellRows) return false;
    return true;
  }

  @override
  int get hashCode {
    return 994438089;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('NxCellRows').toString();
  }
}

class NxCellRowsBuilder implements Builder<NxCellRows, NxCellRowsBuilder> {
  _$NxCellRows _$v;

  NxCellRowsBuilder();

  @override
  void replace(NxCellRows other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxCellRows;
  }

  @override
  void update(void updates(NxCellRowsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxCellRows build() {
    final _$result = _$v ?? new _$NxCellRows._();
    replace(_$result);
    return _$result;
  }
}
