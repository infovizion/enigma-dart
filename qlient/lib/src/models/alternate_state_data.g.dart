// GENERATED CODE - DO NOT MODIFY BY HAND

part of alternate_state_data;

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

Serializer<AlternateStateData> _$alternateStateDataSerializer =
    new _$AlternateStateDataSerializer();

class _$AlternateStateDataSerializer
    implements StructuredSerializer<AlternateStateData> {
  @override
  final Iterable<Type> types = const [AlternateStateData, _$AlternateStateData];
  @override
  final String wireName = 'AlternateStateData';

  @override
  Iterable serialize(Serializers serializers, AlternateStateData object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.stateName != null) {
      result
        ..add('stateName')
        ..add(serializers.serialize(object.stateName,
            specifiedType: const FullType(String)));
    }
    if (object.fieldItems != null) {
      result
        ..add('fieldItems')
        ..add(serializers.serialize(object.fieldItems,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }

    return result;
  }

  @override
  AlternateStateData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new AlternateStateDataBuilder();

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
        case 'fieldItems':
          result.fieldItems = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
      }
    }

    return result.build();
  }
}

class _$AlternateStateData extends AlternateStateData {
  @override
  final String stateName;
  @override
  final List<NxCell> fieldItems;

  factory _$AlternateStateData([void updates(AlternateStateDataBuilder b)]) =>
      (new AlternateStateDataBuilder()..update(updates)).build();

  _$AlternateStateData._({this.stateName, this.fieldItems}) : super._();

  @override
  AlternateStateData rebuild(void updates(AlternateStateDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AlternateStateDataBuilder toBuilder() =>
      new AlternateStateDataBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! AlternateStateData) return false;
    return stateName == other.stateName && fieldItems == other.fieldItems;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, stateName.hashCode), fieldItems.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AlternateStateData')
          ..add('stateName', stateName)
          ..add('fieldItems', fieldItems))
        .toString();
  }
}

class AlternateStateDataBuilder
    implements Builder<AlternateStateData, AlternateStateDataBuilder> {
  _$AlternateStateData _$v;

  String _stateName;
  String get stateName => _$this._stateName;
  set stateName(String stateName) => _$this._stateName = stateName;

  List<NxCell> _fieldItems;
  List<NxCell> get fieldItems => _$this._fieldItems;
  set fieldItems(List<NxCell> fieldItems) => _$this._fieldItems = fieldItems;

  AlternateStateDataBuilder();

  AlternateStateDataBuilder get _$this {
    if (_$v != null) {
      _stateName = _$v.stateName;
      _fieldItems = _$v.fieldItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlternateStateData other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$AlternateStateData;
  }

  @override
  void update(void updates(AlternateStateDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AlternateStateData build() {
    final _$result = _$v ??
        new _$AlternateStateData._(
            stateName: stateName, fieldItems: fieldItems);
    replace(_$result);
    return _$result;
  }
}
