// GENERATED CODE - DO NOT MODIFY BY HAND

part of get_hyper_cube_continuous_data_result;

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

Serializer<GetHyperCubeContinuousDataResult>
    _$getHyperCubeContinuousDataResultSerializer =
    new _$GetHyperCubeContinuousDataResultSerializer();

class _$GetHyperCubeContinuousDataResultSerializer
    implements StructuredSerializer<GetHyperCubeContinuousDataResult> {
  @override
  final Iterable<Type> types = const [
    GetHyperCubeContinuousDataResult,
    _$GetHyperCubeContinuousDataResult
  ];
  @override
  final String wireName = 'GetHyperCubeContinuousDataResult';

  @override
  Iterable serialize(
      Serializers serializers, GetHyperCubeContinuousDataResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.dataPages != null) {
      result
        ..add('qDataPages')
        ..add(serializers.serialize(object.dataPages,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.axisData != null) {
      result
        ..add('qAxisData')
        ..add(serializers.serialize(object.axisData,
            specifiedType: const FullType(NxAxisData)));
    }

    return result;
  }

  @override
  GetHyperCubeContinuousDataResult deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetHyperCubeContinuousDataResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qDataPages':
          result.dataPages = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
        case 'qAxisData':
          result.axisData.replace(serializers.deserialize(value,
              specifiedType: const FullType(NxAxisData)) as NxAxisData);
          break;
      }
    }

    return result.build();
  }
}

class _$GetHyperCubeContinuousDataResult
    extends GetHyperCubeContinuousDataResult {
  @override
  final BuiltList dataPages;
  @override
  final NxAxisData axisData;

  factory _$GetHyperCubeContinuousDataResult(
          [void updates(GetHyperCubeContinuousDataResultBuilder b)]) =>
      (new GetHyperCubeContinuousDataResultBuilder()..update(updates)).build();

  _$GetHyperCubeContinuousDataResult._({this.dataPages, this.axisData})
      : super._();

  @override
  GetHyperCubeContinuousDataResult rebuild(
          void updates(GetHyperCubeContinuousDataResultBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GetHyperCubeContinuousDataResultBuilder toBuilder() =>
      new GetHyperCubeContinuousDataResultBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GetHyperCubeContinuousDataResult) return false;
    return dataPages == other.dataPages && axisData == other.axisData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, dataPages.hashCode), axisData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetHyperCubeContinuousDataResult')
          ..add('dataPages', dataPages)
          ..add('axisData', axisData))
        .toString();
  }
}

class GetHyperCubeContinuousDataResultBuilder
    implements
        Builder<GetHyperCubeContinuousDataResult,
            GetHyperCubeContinuousDataResultBuilder> {
  _$GetHyperCubeContinuousDataResult _$v;

  BuiltList _dataPages;
  BuiltList get dataPages => _$this._dataPages;
  set dataPages(BuiltList dataPages) => _$this._dataPages = dataPages;

  NxAxisDataBuilder _axisData;
  NxAxisDataBuilder get axisData =>
      _$this._axisData ??= new NxAxisDataBuilder();
  set axisData(NxAxisDataBuilder axisData) => _$this._axisData = axisData;

  GetHyperCubeContinuousDataResultBuilder();

  GetHyperCubeContinuousDataResultBuilder get _$this {
    if (_$v != null) {
      _dataPages = _$v.dataPages;
      _axisData = _$v.axisData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetHyperCubeContinuousDataResult other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GetHyperCubeContinuousDataResult;
  }

  @override
  void update(void updates(GetHyperCubeContinuousDataResultBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GetHyperCubeContinuousDataResult build() {
    _$GetHyperCubeContinuousDataResult _$result;
    try {
      _$result = _$v ??
          new _$GetHyperCubeContinuousDataResult._(
              dataPages: dataPages, axisData: _axisData?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'axisData';
        _axisData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetHyperCubeContinuousDataResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
