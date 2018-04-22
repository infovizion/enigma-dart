// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_attr_dim_info;

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

Serializer<NxAttrDimInfo> _$nxAttrDimInfoSerializer =
    new _$NxAttrDimInfoSerializer();

class _$NxAttrDimInfoSerializer implements StructuredSerializer<NxAttrDimInfo> {
  @override
  final Iterable<Type> types = const [NxAttrDimInfo, _$NxAttrDimInfo];
  @override
  final String wireName = 'NxAttrDimInfo';

  @override
  Iterable serialize(Serializers serializers, NxAttrDimInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.cardinal != null) {
      result
        ..add('cardinal')
        ..add(serializers.serialize(object.cardinal,
            specifiedType: const FullType(int)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(Size)));
    }
    if (object.fallbackTitle != null) {
      result
        ..add('fallbackTitle')
        ..add(serializers.serialize(object.fallbackTitle,
            specifiedType: const FullType(String)));
    }
    if (object.locked != null) {
      result
        ..add('locked')
        ..add(serializers.serialize(object.locked,
            specifiedType: const FullType(bool)));
    }
    if (object.error != null) {
      result
        ..add('error')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(NxValidationError)));
    }
    if (object.isCalculated != null) {
      result
        ..add('isCalculated')
        ..add(serializers.serialize(object.isCalculated,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  NxAttrDimInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxAttrDimInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'cardinal':
          result.cardinal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'size':
          result.size.replace(serializers.deserialize(value,
              specifiedType: const FullType(Size)) as Size);
          break;
        case 'fallbackTitle':
          result.fallbackTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'locked':
          result.locked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NxValidationError))
              as NxValidationError);
          break;
        case 'isCalculated':
          result.isCalculated = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$NxAttrDimInfo extends NxAttrDimInfo {
  @override
  final int cardinal;
  @override
  final Size size;
  @override
  final String fallbackTitle;
  @override
  final bool locked;
  @override
  final NxValidationError error;
  @override
  final bool isCalculated;

  factory _$NxAttrDimInfo([void updates(NxAttrDimInfoBuilder b)]) =>
      (new NxAttrDimInfoBuilder()..update(updates)).build();

  _$NxAttrDimInfo._(
      {this.cardinal,
      this.size,
      this.fallbackTitle,
      this.locked,
      this.error,
      this.isCalculated})
      : super._();

  @override
  NxAttrDimInfo rebuild(void updates(NxAttrDimInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxAttrDimInfoBuilder toBuilder() => new NxAttrDimInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxAttrDimInfo) return false;
    return cardinal == other.cardinal &&
        size == other.size &&
        fallbackTitle == other.fallbackTitle &&
        locked == other.locked &&
        error == other.error &&
        isCalculated == other.isCalculated;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, cardinal.hashCode), size.hashCode),
                    fallbackTitle.hashCode),
                locked.hashCode),
            error.hashCode),
        isCalculated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxAttrDimInfo')
          ..add('cardinal', cardinal)
          ..add('size', size)
          ..add('fallbackTitle', fallbackTitle)
          ..add('locked', locked)
          ..add('error', error)
          ..add('isCalculated', isCalculated))
        .toString();
  }
}

class NxAttrDimInfoBuilder
    implements Builder<NxAttrDimInfo, NxAttrDimInfoBuilder> {
  _$NxAttrDimInfo _$v;

  int _cardinal;
  int get cardinal => _$this._cardinal;
  set cardinal(int cardinal) => _$this._cardinal = cardinal;

  SizeBuilder _size;
  SizeBuilder get size => _$this._size ??= new SizeBuilder();
  set size(SizeBuilder size) => _$this._size = size;

  String _fallbackTitle;
  String get fallbackTitle => _$this._fallbackTitle;
  set fallbackTitle(String fallbackTitle) =>
      _$this._fallbackTitle = fallbackTitle;

  bool _locked;
  bool get locked => _$this._locked;
  set locked(bool locked) => _$this._locked = locked;

  NxValidationErrorBuilder _error;
  NxValidationErrorBuilder get error =>
      _$this._error ??= new NxValidationErrorBuilder();
  set error(NxValidationErrorBuilder error) => _$this._error = error;

  bool _isCalculated;
  bool get isCalculated => _$this._isCalculated;
  set isCalculated(bool isCalculated) => _$this._isCalculated = isCalculated;

  NxAttrDimInfoBuilder();

  NxAttrDimInfoBuilder get _$this {
    if (_$v != null) {
      _cardinal = _$v.cardinal;
      _size = _$v.size?.toBuilder();
      _fallbackTitle = _$v.fallbackTitle;
      _locked = _$v.locked;
      _error = _$v.error?.toBuilder();
      _isCalculated = _$v.isCalculated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxAttrDimInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxAttrDimInfo;
  }

  @override
  void update(void updates(NxAttrDimInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxAttrDimInfo build() {
    _$NxAttrDimInfo _$result;
    try {
      _$result = _$v ??
          new _$NxAttrDimInfo._(
              cardinal: cardinal,
              size: _size?.build(),
              fallbackTitle: fallbackTitle,
              locked: locked,
              error: _error?.build(),
              isCalculated: isCalculated);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'size';
        _size?.build();

        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxAttrDimInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
