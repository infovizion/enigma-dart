// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_stream_list_entry;

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

Serializer<NxStreamListEntry> _$nxStreamListEntrySerializer =
    new _$NxStreamListEntrySerializer();

class _$NxStreamListEntrySerializer
    implements StructuredSerializer<NxStreamListEntry> {
  @override
  final Iterable<Type> types = const [NxStreamListEntry, _$NxStreamListEntry];
  @override
  final String wireName = 'NxStreamListEntry';

  @override
  Iterable serialize(Serializers serializers, NxStreamListEntry object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('qName')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('qId')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  NxStreamListEntry deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxStreamListEntryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qName':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qId':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NxStreamListEntry extends NxStreamListEntry {
  @override
  final String name;
  @override
  final String id;

  factory _$NxStreamListEntry([void updates(NxStreamListEntryBuilder b)]) =>
      (new NxStreamListEntryBuilder()..update(updates)).build();

  _$NxStreamListEntry._({this.name, this.id}) : super._();

  @override
  NxStreamListEntry rebuild(void updates(NxStreamListEntryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxStreamListEntryBuilder toBuilder() =>
      new NxStreamListEntryBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxStreamListEntry) return false;
    return name == other.name && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxStreamListEntry')
          ..add('name', name)
          ..add('id', id))
        .toString();
  }
}

class NxStreamListEntryBuilder
    implements Builder<NxStreamListEntry, NxStreamListEntryBuilder> {
  _$NxStreamListEntry _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  NxStreamListEntryBuilder();

  NxStreamListEntryBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxStreamListEntry other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxStreamListEntry;
  }

  @override
  void update(void updates(NxStreamListEntryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxStreamListEntry build() {
    final _$result = _$v ?? new _$NxStreamListEntry._(name: name, id: id);
    replace(_$result);
    return _$result;
  }
}
