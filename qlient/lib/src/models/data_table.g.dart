// GENERATED CODE - DO NOT MODIFY BY HAND

part of data_table;

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

Serializer<DataTable> _$dataTableSerializer = new _$DataTableSerializer();

class _$DataTableSerializer implements StructuredSerializer<DataTable> {
  @override
  final Iterable<Type> types = const [DataTable, _$DataTable];
  @override
  final String wireName = 'DataTable';

  @override
  Iterable serialize(Serializers serializers, DataTable object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  DataTable deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new DataTableBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataTable extends DataTable {
  @override
  final String name;
  @override
  final String type;

  factory _$DataTable([void updates(DataTableBuilder b)]) =>
      (new DataTableBuilder()..update(updates)).build();

  _$DataTable._({this.name, this.type}) : super._();

  @override
  DataTable rebuild(void updates(DataTableBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DataTableBuilder toBuilder() => new DataTableBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! DataTable) return false;
    return name == other.name && type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataTable')
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class DataTableBuilder implements Builder<DataTable, DataTableBuilder> {
  _$DataTable _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  DataTableBuilder();

  DataTableBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataTable other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$DataTable;
  }

  @override
  void update(void updates(DataTableBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DataTable build() {
    final _$result = _$v ?? new _$DataTable._(name: name, type: type);
    replace(_$result);
    return _$result;
  }
}
