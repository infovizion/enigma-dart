// GENERATED CODE - DO NOT MODIFY BY HAND

part of list_object;

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

Serializer<ListObject> _$listObjectSerializer = new _$ListObjectSerializer();

class _$ListObjectSerializer implements StructuredSerializer<ListObject> {
  @override
  final Iterable<Type> types = const [ListObject, _$ListObject];
  @override
  final String wireName = 'ListObject';

  @override
  Iterable serialize(Serializers serializers, ListObject object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.stateName != null) {
      result
        ..add('stateName')
        ..add(serializers.serialize(object.stateName,
            specifiedType: const FullType(String)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(Size)));
    }
    if (object.error != null) {
      result
        ..add('error')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(NxValidationError)));
    }
    if (object.dimensionInfo != null) {
      result
        ..add('dimensionInfo')
        ..add(serializers.serialize(object.dimensionInfo,
            specifiedType: const FullType(NxDimensionInfo)));
    }
    if (object.expressions != null) {
      result
        ..add('expressions')
        ..add(serializers.serialize(object.expressions,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.dataPages != null) {
      result
        ..add('dataPages')
        ..add(serializers.serialize(object.dataPages,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  ListObject deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ListObjectBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'stateName':
          result.stateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'size':
          result.size.replace(serializers.deserialize(value,
              specifiedType: const FullType(Size)) as Size);
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxValidationError))
              as NxValidationError);
          break;
        case 'dimensionInfo':
          result.dimensionInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxDimensionInfo))
              as NxDimensionInfo);
          break;
        case 'expressions':
          result.expressions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'dataPages':
          result.dataPages.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ListObject extends ListObject {
  @override
  final String stateName;
  @override
  final Size size;
  @override
  final NxValidationError error;
  @override
  final NxDimensionInfo dimensionInfo;
  @override
  final BuiltList<NxCell> expressions;
  @override
  final BuiltList<NxCell> dataPages;

  factory _$ListObject([void updates(ListObjectBuilder b)]) =>
      (new ListObjectBuilder()..update(updates)).build();

  _$ListObject._(
      {this.stateName,
      this.size,
      this.error,
      this.dimensionInfo,
      this.expressions,
      this.dataPages})
      : super._();

  @override
  ListObject rebuild(void updates(ListObjectBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ListObjectBuilder toBuilder() => new ListObjectBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ListObject) return false;
    return stateName == other.stateName &&
        size == other.size &&
        error == other.error &&
        dimensionInfo == other.dimensionInfo &&
        expressions == other.expressions &&
        dataPages == other.dataPages;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, stateName.hashCode), size.hashCode),
                    error.hashCode),
                dimensionInfo.hashCode),
            expressions.hashCode),
        dataPages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListObject')
          ..add('stateName', stateName)
          ..add('size', size)
          ..add('error', error)
          ..add('dimensionInfo', dimensionInfo)
          ..add('expressions', expressions)
          ..add('dataPages', dataPages))
        .toString();
  }
}

class ListObjectBuilder implements Builder<ListObject, ListObjectBuilder> {
  _$ListObject _$v;

  String _stateName;
  String get stateName => _$this._stateName;
  set stateName(String stateName) => _$this._stateName = stateName;

  SizeBuilder _size;
  SizeBuilder get size => _$this._size ??= new SizeBuilder();
  set size(SizeBuilder size) => _$this._size = size;

  NxValidationErrorBuilder _error;
  NxValidationErrorBuilder get error =>
      _$this._error ??= new NxValidationErrorBuilder();
  set error(NxValidationErrorBuilder error) => _$this._error = error;

  NxDimensionInfoBuilder _dimensionInfo;
  NxDimensionInfoBuilder get dimensionInfo =>
      _$this._dimensionInfo ??= new NxDimensionInfoBuilder();
  set dimensionInfo(NxDimensionInfoBuilder dimensionInfo) =>
      _$this._dimensionInfo = dimensionInfo;

  ListBuilder<NxCell> _expressions;
  ListBuilder<NxCell> get expressions =>
      _$this._expressions ??= new ListBuilder<NxCell>();
  set expressions(ListBuilder<NxCell> expressions) =>
      _$this._expressions = expressions;

  ListBuilder<NxCell> _dataPages;
  ListBuilder<NxCell> get dataPages =>
      _$this._dataPages ??= new ListBuilder<NxCell>();
  set dataPages(ListBuilder<NxCell> dataPages) => _$this._dataPages = dataPages;

  ListObjectBuilder();

  ListObjectBuilder get _$this {
    if (_$v != null) {
      _stateName = _$v.stateName;
      _size = _$v.size?.toBuilder();
      _error = _$v.error?.toBuilder();
      _dimensionInfo = _$v.dimensionInfo?.toBuilder();
      _expressions = _$v.expressions?.toBuilder();
      _dataPages = _$v.dataPages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListObject other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ListObject;
  }

  @override
  void update(void updates(ListObjectBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ListObject build() {
    _$ListObject _$result;
    try {
      _$result = _$v ??
          new _$ListObject._(
              stateName: stateName,
              size: _size?.build(),
              error: _error?.build(),
              dimensionInfo: _dimensionInfo?.build(),
              expressions: _expressions?.build(),
              dataPages: _dataPages?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'size';
        _size?.build();
        _$failedField = 'error';
        _error?.build();
        _$failedField = 'dimensionInfo';
        _dimensionInfo?.build();
        _$failedField = 'expressions';
        _expressions?.build();
        _$failedField = 'dataPages';
        _dataPages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ListObject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
