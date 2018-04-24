// GENERATED CODE - DO NOT MODIFY BY HAND

part of table_row;

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

Serializer<TableRow> _$tableRowSerializer = new _$TableRowSerializer();

class _$TableRowSerializer implements StructuredSerializer<TableRow> {
  @override
  final Iterable<Type> types = const [TableRow, _$TableRow];
  @override
  final String wireName = 'TableRow';

  @override
  Iterable serialize(Serializers serializers, TableRow object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(object.value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  TableRow deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new TableRowBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'value':
          result.value.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$TableRow extends TableRow {
  @override
  final BuiltList<NxCell> value;

  factory _$TableRow([void updates(TableRowBuilder b)]) =>
      (new TableRowBuilder()..update(updates)).build();

  _$TableRow._({this.value}) : super._();

  @override
  TableRow rebuild(void updates(TableRowBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TableRowBuilder toBuilder() => new TableRowBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! TableRow) return false;
    return value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TableRow')..add('value', value))
        .toString();
  }
}

class TableRowBuilder implements Builder<TableRow, TableRowBuilder> {
  _$TableRow _$v;

  ListBuilder<NxCell> _value;
  ListBuilder<NxCell> get value => _$this._value ??= new ListBuilder<NxCell>();
  set value(ListBuilder<NxCell> value) => _$this._value = value;

  TableRowBuilder();

  TableRowBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TableRow other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$TableRow;
  }

  @override
  void update(void updates(TableRowBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TableRow build() {
    _$TableRow _$result;
    try {
      _$result = _$v ?? new _$TableRow._(value: _value?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'value';
        _value?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TableRow', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
