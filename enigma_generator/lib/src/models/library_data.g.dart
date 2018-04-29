// GENERATED CODE - DO NOT MODIFY BY HAND

part of library_data;

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

Serializer<LibraryData> _$libraryDataSerializer = new _$LibraryDataSerializer();

class _$LibraryDataSerializer implements StructuredSerializer<LibraryData> {
  @override
  final Iterable<Type> types = const [LibraryData, _$LibraryData];
  @override
  final String wireName = 'LibraryData';

  @override
  Iterable serialize(Serializers serializers, LibraryData object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'importDirectives',
      serializers.serialize(object.importDirectives,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  LibraryData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new LibraryDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'importDirectives':
          result.importDirectives.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$LibraryData extends LibraryData {
  @override
  final BuiltList<String> importDirectives;

  factory _$LibraryData([void updates(LibraryDataBuilder b)]) =>
      (new LibraryDataBuilder()..update(updates)).build();

  _$LibraryData._({this.importDirectives}) : super._() {
    if (importDirectives == null)
      throw new BuiltValueNullFieldError('LibraryData', 'importDirectives');
  }

  @override
  LibraryData rebuild(void updates(LibraryDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LibraryDataBuilder toBuilder() => new LibraryDataBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! LibraryData) return false;
    return importDirectives == other.importDirectives;
  }

  @override
  int get hashCode {
    return $jf($jc(0, importDirectives.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LibraryData')
          ..add('importDirectives', importDirectives))
        .toString();
  }
}

class LibraryDataBuilder implements Builder<LibraryData, LibraryDataBuilder> {
  _$LibraryData _$v;

  ListBuilder<String> _importDirectives;
  ListBuilder<String> get importDirectives =>
      _$this._importDirectives ??= new ListBuilder<String>();
  set importDirectives(ListBuilder<String> importDirectives) =>
      _$this._importDirectives = importDirectives;

  LibraryDataBuilder();

  LibraryDataBuilder get _$this {
    if (_$v != null) {
      _importDirectives = _$v.importDirectives?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LibraryData other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$LibraryData;
  }

  @override
  void update(void updates(LibraryDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LibraryData build() {
    _$LibraryData _$result;
    try {
      _$result = _$v ??
          new _$LibraryData._(importDirectives: importDirectives.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'importDirectives';
        importDirectives.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LibraryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
