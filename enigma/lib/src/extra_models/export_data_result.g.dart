// GENERATED CODE - DO NOT MODIFY BY HAND

part of export_data_result;

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

Serializer<ExportDataResult> _$exportDataResultSerializer =
    new _$ExportDataResultSerializer();

class _$ExportDataResultSerializer
    implements StructuredSerializer<ExportDataResult> {
  @override
  final Iterable<Type> types = const [ExportDataResult, _$ExportDataResult];
  @override
  final String wireName = 'ExportDataResult';

  @override
  Iterable serialize(Serializers serializers, ExportDataResult object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('qUrl')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.warninings != null) {
      result
        ..add('qWarnings')
        ..add(serializers.serialize(object.warninings,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }

    return result;
  }

  @override
  ExportDataResult deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ExportDataResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qUrl':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qWarnings':
          result.warninings.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ExportDataResult extends ExportDataResult {
  @override
  final String url;
  @override
  final BuiltList<String> warninings;

  factory _$ExportDataResult([void updates(ExportDataResultBuilder b)]) =>
      (new ExportDataResultBuilder()..update(updates)).build();

  _$ExportDataResult._({this.url, this.warninings}) : super._();

  @override
  ExportDataResult rebuild(void updates(ExportDataResultBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportDataResultBuilder toBuilder() =>
      new ExportDataResultBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ExportDataResult) return false;
    return url == other.url && warninings == other.warninings;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, url.hashCode), warninings.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExportDataResult')
          ..add('url', url)
          ..add('warninings', warninings))
        .toString();
  }
}

class ExportDataResultBuilder
    implements Builder<ExportDataResult, ExportDataResultBuilder> {
  _$ExportDataResult _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ListBuilder<String> _warninings;
  ListBuilder<String> get warninings =>
      _$this._warninings ??= new ListBuilder<String>();
  set warninings(ListBuilder<String> warninings) =>
      _$this._warninings = warninings;

  ExportDataResultBuilder();

  ExportDataResultBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _warninings = _$v.warninings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportDataResult other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ExportDataResult;
  }

  @override
  void update(void updates(ExportDataResultBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ExportDataResult build() {
    _$ExportDataResult _$result;
    try {
      _$result = _$v ??
          new _$ExportDataResult._(url: url, warninings: _warninings?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'warninings';
        _warninings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ExportDataResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
