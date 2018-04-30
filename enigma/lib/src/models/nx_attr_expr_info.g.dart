// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_attr_expr_info;

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

Serializer<NxAttrExprInfo> _$nxAttrExprInfoSerializer =
    new _$NxAttrExprInfoSerializer();

class _$NxAttrExprInfoSerializer
    implements StructuredSerializer<NxAttrExprInfo> {
  @override
  final Iterable<Type> types = const [NxAttrExprInfo, _$NxAttrExprInfo];
  @override
  final String wireName = 'NxAttrExprInfo';

  @override
  Iterable serialize(Serializers serializers, NxAttrExprInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.min != null) {
      result
        ..add('qMin')
        ..add(serializers.serialize(object.min,
            specifiedType: const FullType(num)));
    }
    if (object.max != null) {
      result
        ..add('qMax')
        ..add(serializers.serialize(object.max,
            specifiedType: const FullType(num)));
    }
    if (object.fallbackTitle != null) {
      result
        ..add('qFallbackTitle')
        ..add(serializers.serialize(object.fallbackTitle,
            specifiedType: const FullType(String)));
    }
    if (object.minText != null) {
      result
        ..add('qMinText')
        ..add(serializers.serialize(object.minText,
            specifiedType: const FullType(String)));
    }
    if (object.maxText != null) {
      result
        ..add('qMaxText')
        ..add(serializers.serialize(object.maxText,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  NxAttrExprInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxAttrExprInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qMin':
          result.min = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'qMax':
          result.max = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'qFallbackTitle':
          result.fallbackTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qMinText':
          result.minText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qMaxText':
          result.maxText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NxAttrExprInfo extends NxAttrExprInfo {
  @override
  final num min;
  @override
  final num max;
  @override
  final String fallbackTitle;
  @override
  final String minText;
  @override
  final String maxText;

  factory _$NxAttrExprInfo([void updates(NxAttrExprInfoBuilder b)]) =>
      (new NxAttrExprInfoBuilder()..update(updates)).build();

  _$NxAttrExprInfo._(
      {this.min, this.max, this.fallbackTitle, this.minText, this.maxText})
      : super._();

  @override
  NxAttrExprInfo rebuild(void updates(NxAttrExprInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxAttrExprInfoBuilder toBuilder() =>
      new NxAttrExprInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxAttrExprInfo) return false;
    return min == other.min &&
        max == other.max &&
        fallbackTitle == other.fallbackTitle &&
        minText == other.minText &&
        maxText == other.maxText;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, min.hashCode), max.hashCode),
                fallbackTitle.hashCode),
            minText.hashCode),
        maxText.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxAttrExprInfo')
          ..add('min', min)
          ..add('max', max)
          ..add('fallbackTitle', fallbackTitle)
          ..add('minText', minText)
          ..add('maxText', maxText))
        .toString();
  }
}

class NxAttrExprInfoBuilder
    implements Builder<NxAttrExprInfo, NxAttrExprInfoBuilder> {
  _$NxAttrExprInfo _$v;

  num _min;
  num get min => _$this._min;
  set min(num min) => _$this._min = min;

  num _max;
  num get max => _$this._max;
  set max(num max) => _$this._max = max;

  String _fallbackTitle;
  String get fallbackTitle => _$this._fallbackTitle;
  set fallbackTitle(String fallbackTitle) =>
      _$this._fallbackTitle = fallbackTitle;

  String _minText;
  String get minText => _$this._minText;
  set minText(String minText) => _$this._minText = minText;

  String _maxText;
  String get maxText => _$this._maxText;
  set maxText(String maxText) => _$this._maxText = maxText;

  NxAttrExprInfoBuilder();

  NxAttrExprInfoBuilder get _$this {
    if (_$v != null) {
      _min = _$v.min;
      _max = _$v.max;
      _fallbackTitle = _$v.fallbackTitle;
      _minText = _$v.minText;
      _maxText = _$v.maxText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxAttrExprInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxAttrExprInfo;
  }

  @override
  void update(void updates(NxAttrExprInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxAttrExprInfo build() {
    final _$result = _$v ??
        new _$NxAttrExprInfo._(
            min: min,
            max: max,
            fallbackTitle: fallbackTitle,
            minText: minText,
            maxText: maxText);
    replace(_$result);
    return _$result;
  }
}
