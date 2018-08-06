// GENERATED CODE - DO NOT MODIFY BY HAND

part of file_data_format;

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

Serializer<FileDataFormat> _$fileDataFormatSerializer =
    new _$FileDataFormatSerializer();

class _$FileDataFormatSerializer
    implements StructuredSerializer<FileDataFormat> {
  @override
  final Iterable<Type> types = const [FileDataFormat, _$FileDataFormat];
  @override
  final String wireName = 'FileDataFormat';

  @override
  Iterable serialize(Serializers serializers, FileDataFormat object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.type != null) {
      result
        ..add('qType')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.label != null) {
      result
        ..add('qLabel')
        ..add(serializers.serialize(object.label,
            specifiedType: const FullType(String)));
    }
    if (object.quote != null) {
      result
        ..add('qQuote')
        ..add(serializers.serialize(object.quote,
            specifiedType: const FullType(String)));
    }
    if (object.comment != null) {
      result
        ..add('qComment')
        ..add(serializers.serialize(object.comment,
            specifiedType: const FullType(String)));
    }
    if (object.delimiter != null) {
      result
        ..add('qDelimiter')
        ..add(serializers.serialize(object.delimiter,
            specifiedType: const FullType(DelimiterInfo)));
    }
    if (object.codePage != null) {
      result
        ..add('qCodePage')
        ..add(serializers.serialize(object.codePage,
            specifiedType: const FullType(int)));
    }
    if (object.headerSize != null) {
      result
        ..add('qHeaderSize')
        ..add(serializers.serialize(object.headerSize,
            specifiedType: const FullType(int)));
    }
    if (object.recordSize != null) {
      result
        ..add('qRecordSize')
        ..add(serializers.serialize(object.recordSize,
            specifiedType: const FullType(int)));
    }
    if (object.tabSize != null) {
      result
        ..add('qTabSize')
        ..add(serializers.serialize(object.tabSize,
            specifiedType: const FullType(int)));
    }
    if (object.ignoreEOF != null) {
      result
        ..add('qIgnoreEOF')
        ..add(serializers.serialize(object.ignoreEOF,
            specifiedType: const FullType(bool)));
    }
    if (object.fixedWidthDelimiters != null) {
      result
        ..add('qFixedWidthDelimiters')
        ..add(serializers.serialize(object.fixedWidthDelimiters,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  FileDataFormat deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FileDataFormatBuilder();

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
        case 'qLabel':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qQuote':
          result.quote = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qComment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qDelimiter':
          result.delimiter.replace(serializers.deserialize(value,
              specifiedType: const FullType(DelimiterInfo)) as DelimiterInfo);
          break;
        case 'qCodePage':
          result.codePage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qHeaderSize':
          result.headerSize = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qRecordSize':
          result.recordSize = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qTabSize':
          result.tabSize = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qIgnoreEOF':
          result.ignoreEOF = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qFixedWidthDelimiters':
          result.fixedWidthDelimiters = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FileDataFormat extends FileDataFormat {
  @override
  final String type;
  @override
  final String label;
  @override
  final String quote;
  @override
  final String comment;
  @override
  final DelimiterInfo delimiter;
  @override
  final int codePage;
  @override
  final int headerSize;
  @override
  final int recordSize;
  @override
  final int tabSize;
  @override
  final bool ignoreEOF;
  @override
  final String fixedWidthDelimiters;

  factory _$FileDataFormat([void updates(FileDataFormatBuilder b)]) =>
      (new FileDataFormatBuilder()..update(updates)).build();

  _$FileDataFormat._(
      {this.type,
      this.label,
      this.quote,
      this.comment,
      this.delimiter,
      this.codePage,
      this.headerSize,
      this.recordSize,
      this.tabSize,
      this.ignoreEOF,
      this.fixedWidthDelimiters})
      : super._();

  @override
  FileDataFormat rebuild(void updates(FileDataFormatBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FileDataFormatBuilder toBuilder() =>
      new FileDataFormatBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FileDataFormat) return false;
    return type == other.type &&
        label == other.label &&
        quote == other.quote &&
        comment == other.comment &&
        delimiter == other.delimiter &&
        codePage == other.codePage &&
        headerSize == other.headerSize &&
        recordSize == other.recordSize &&
        tabSize == other.tabSize &&
        ignoreEOF == other.ignoreEOF &&
        fixedWidthDelimiters == other.fixedWidthDelimiters;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, type.hashCode),
                                            label.hashCode),
                                        quote.hashCode),
                                    comment.hashCode),
                                delimiter.hashCode),
                            codePage.hashCode),
                        headerSize.hashCode),
                    recordSize.hashCode),
                tabSize.hashCode),
            ignoreEOF.hashCode),
        fixedWidthDelimiters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FileDataFormat')
          ..add('type', type)
          ..add('label', label)
          ..add('quote', quote)
          ..add('comment', comment)
          ..add('delimiter', delimiter)
          ..add('codePage', codePage)
          ..add('headerSize', headerSize)
          ..add('recordSize', recordSize)
          ..add('tabSize', tabSize)
          ..add('ignoreEOF', ignoreEOF)
          ..add('fixedWidthDelimiters', fixedWidthDelimiters))
        .toString();
  }
}

class FileDataFormatBuilder
    implements Builder<FileDataFormat, FileDataFormatBuilder> {
  _$FileDataFormat _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  String _quote;
  String get quote => _$this._quote;
  set quote(String quote) => _$this._quote = quote;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  DelimiterInfoBuilder _delimiter;
  DelimiterInfoBuilder get delimiter =>
      _$this._delimiter ??= new DelimiterInfoBuilder();
  set delimiter(DelimiterInfoBuilder delimiter) =>
      _$this._delimiter = delimiter;

  int _codePage;
  int get codePage => _$this._codePage;
  set codePage(int codePage) => _$this._codePage = codePage;

  int _headerSize;
  int get headerSize => _$this._headerSize;
  set headerSize(int headerSize) => _$this._headerSize = headerSize;

  int _recordSize;
  int get recordSize => _$this._recordSize;
  set recordSize(int recordSize) => _$this._recordSize = recordSize;

  int _tabSize;
  int get tabSize => _$this._tabSize;
  set tabSize(int tabSize) => _$this._tabSize = tabSize;

  bool _ignoreEOF;
  bool get ignoreEOF => _$this._ignoreEOF;
  set ignoreEOF(bool ignoreEOF) => _$this._ignoreEOF = ignoreEOF;

  String _fixedWidthDelimiters;
  String get fixedWidthDelimiters => _$this._fixedWidthDelimiters;
  set fixedWidthDelimiters(String fixedWidthDelimiters) =>
      _$this._fixedWidthDelimiters = fixedWidthDelimiters;

  FileDataFormatBuilder();

  FileDataFormatBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _label = _$v.label;
      _quote = _$v.quote;
      _comment = _$v.comment;
      _delimiter = _$v.delimiter?.toBuilder();
      _codePage = _$v.codePage;
      _headerSize = _$v.headerSize;
      _recordSize = _$v.recordSize;
      _tabSize = _$v.tabSize;
      _ignoreEOF = _$v.ignoreEOF;
      _fixedWidthDelimiters = _$v.fixedWidthDelimiters;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileDataFormat other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FileDataFormat;
  }

  @override
  void update(void updates(FileDataFormatBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FileDataFormat build() {
    _$FileDataFormat _$result;
    try {
      _$result = _$v ??
          new _$FileDataFormat._(
              type: type,
              label: label,
              quote: quote,
              comment: comment,
              delimiter: _delimiter?.build(),
              codePage: codePage,
              headerSize: headerSize,
              recordSize: recordSize,
              tabSize: tabSize,
              ignoreEOF: ignoreEOF,
              fixedWidthDelimiters: fixedWidthDelimiters);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'delimiter';
        _delimiter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FileDataFormat', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
