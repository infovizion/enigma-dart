// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_bookmark;

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

Serializer<NxBookmark> _$nxBookmarkSerializer = new _$NxBookmarkSerializer();

class _$NxBookmarkSerializer implements StructuredSerializer<NxBookmark> {
  @override
  final Iterable<Type> types = const [NxBookmark, _$NxBookmark];
  @override
  final String wireName = 'NxBookmark';

  @override
  Iterable serialize(Serializers serializers, NxBookmark object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.stateData != null) {
      result
        ..add('stateData')
        ..add(serializers.serialize(object.stateData,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.utcModifyTime != null) {
      result
        ..add('utcModifyTime')
        ..add(serializers.serialize(object.utcModifyTime,
            specifiedType: const FullType(num)));
    }
    if (object.variableItems != null) {
      result
        ..add('variableItems')
        ..add(serializers.serialize(object.variableItems,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  NxBookmark deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxBookmarkBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'stateData':
          result.stateData = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'utcModifyTime':
          result.utcModifyTime = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'variableItems':
          result.variableItems = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
      }
    }

    return result.build();
  }
}

class _$NxBookmark extends NxBookmark {
  @override
  final List<NxCell> stateData;
  @override
  final num utcModifyTime;
  @override
  final List<NxCell> variableItems;

  factory _$NxBookmark([void updates(NxBookmarkBuilder b)]) =>
      (new NxBookmarkBuilder()..update(updates)).build();

  _$NxBookmark._({this.stateData, this.utcModifyTime, this.variableItems})
      : super._();

  @override
  NxBookmark rebuild(void updates(NxBookmarkBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxBookmarkBuilder toBuilder() => new NxBookmarkBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxBookmark) return false;
    return stateData == other.stateData &&
        utcModifyTime == other.utcModifyTime &&
        variableItems == other.variableItems;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, stateData.hashCode), utcModifyTime.hashCode),
        variableItems.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxBookmark')
          ..add('stateData', stateData)
          ..add('utcModifyTime', utcModifyTime)
          ..add('variableItems', variableItems))
        .toString();
  }
}

class NxBookmarkBuilder implements Builder<NxBookmark, NxBookmarkBuilder> {
  _$NxBookmark _$v;

  List<NxCell> _stateData;
  List<NxCell> get stateData => _$this._stateData;
  set stateData(List<NxCell> stateData) => _$this._stateData = stateData;

  num _utcModifyTime;
  num get utcModifyTime => _$this._utcModifyTime;
  set utcModifyTime(num utcModifyTime) => _$this._utcModifyTime = utcModifyTime;

  List<NxCell> _variableItems;
  List<NxCell> get variableItems => _$this._variableItems;
  set variableItems(List<NxCell> variableItems) =>
      _$this._variableItems = variableItems;

  NxBookmarkBuilder();

  NxBookmarkBuilder get _$this {
    if (_$v != null) {
      _stateData = _$v.stateData;
      _utcModifyTime = _$v.utcModifyTime;
      _variableItems = _$v.variableItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxBookmark other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxBookmark;
  }

  @override
  void update(void updates(NxBookmarkBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxBookmark build() {
    final _$result = _$v ??
        new _$NxBookmark._(
            stateData: stateData,
            utcModifyTime: utcModifyTime,
            variableItems: variableItems);
    replace(_$result);
    return _$result;
  }
}
