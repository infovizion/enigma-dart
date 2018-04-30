// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_selection_info;

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

Serializer<NxSelectionInfo> _$nxSelectionInfoSerializer =
    new _$NxSelectionInfoSerializer();

class _$NxSelectionInfoSerializer
    implements StructuredSerializer<NxSelectionInfo> {
  @override
  final Iterable<Type> types = const [NxSelectionInfo, _$NxSelectionInfo];
  @override
  final String wireName = 'NxSelectionInfo';

  @override
  Iterable serialize(Serializers serializers, NxSelectionInfo object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.inSelections != null) {
      result
        ..add('qInSelections')
        ..add(serializers.serialize(object.inSelections,
            specifiedType: const FullType(bool)));
    }
    if (object.madeSelections != null) {
      result
        ..add('qMadeSelections')
        ..add(serializers.serialize(object.madeSelections,
            specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  NxSelectionInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxSelectionInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qInSelections':
          result.inSelections = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qMadeSelections':
          result.madeSelections = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$NxSelectionInfo extends NxSelectionInfo {
  @override
  final bool inSelections;
  @override
  final bool madeSelections;

  factory _$NxSelectionInfo([void updates(NxSelectionInfoBuilder b)]) =>
      (new NxSelectionInfoBuilder()..update(updates)).build();

  _$NxSelectionInfo._({this.inSelections, this.madeSelections}) : super._();

  @override
  NxSelectionInfo rebuild(void updates(NxSelectionInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxSelectionInfoBuilder toBuilder() =>
      new NxSelectionInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxSelectionInfo) return false;
    return inSelections == other.inSelections &&
        madeSelections == other.madeSelections;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, inSelections.hashCode), madeSelections.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxSelectionInfo')
          ..add('inSelections', inSelections)
          ..add('madeSelections', madeSelections))
        .toString();
  }
}

class NxSelectionInfoBuilder
    implements Builder<NxSelectionInfo, NxSelectionInfoBuilder> {
  _$NxSelectionInfo _$v;

  bool _inSelections;
  bool get inSelections => _$this._inSelections;
  set inSelections(bool inSelections) => _$this._inSelections = inSelections;

  bool _madeSelections;
  bool get madeSelections => _$this._madeSelections;
  set madeSelections(bool madeSelections) =>
      _$this._madeSelections = madeSelections;

  NxSelectionInfoBuilder();

  NxSelectionInfoBuilder get _$this {
    if (_$v != null) {
      _inSelections = _$v.inSelections;
      _madeSelections = _$v.madeSelections;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxSelectionInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxSelectionInfo;
  }

  @override
  void update(void updates(NxSelectionInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxSelectionInfo build() {
    final _$result = _$v ??
        new _$NxSelectionInfo._(
            inSelections: inSelections, madeSelections: madeSelections);
    replace(_$result);
    return _$result;
  }
}
