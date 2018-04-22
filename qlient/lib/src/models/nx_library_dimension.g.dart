// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_library_dimension;

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

Serializer<NxLibraryDimension> _$nxLibraryDimensionSerializer =
    new _$NxLibraryDimensionSerializer();

class _$NxLibraryDimensionSerializer
    implements StructuredSerializer<NxLibraryDimension> {
  @override
  final Iterable<Type> types = const [NxLibraryDimension, _$NxLibraryDimension];
  @override
  final String wireName = 'NxLibraryDimension';

  @override
  Iterable serialize(Serializers serializers, NxLibraryDimension object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.grouping != null) {
      result
        ..add('grouping')
        ..add(serializers.serialize(object.grouping,
            specifiedType: const FullType(String)));
    }
    if (object.fieldDefs != null) {
      result
        ..add('fieldDefs')
        ..add(serializers.serialize(object.fieldDefs,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.fieldLabels != null) {
      result
        ..add('fieldLabels')
        ..add(serializers.serialize(object.fieldLabels,
            specifiedType:
                const FullType(List, const [const FullType(NxCell)])));
    }
    if (object.labelExpression != null) {
      result
        ..add('labelExpression')
        ..add(serializers.serialize(object.labelExpression,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  NxLibraryDimension deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxLibraryDimensionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'grouping':
          result.grouping = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fieldDefs':
          result.fieldDefs = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'fieldLabels':
          result.fieldLabels = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(NxCell)]))
              as List<NxCell>;
          break;
        case 'labelExpression':
          result.labelExpression = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NxLibraryDimension extends NxLibraryDimension {
  @override
  final String grouping;
  @override
  final List<NxCell> fieldDefs;
  @override
  final List<NxCell> fieldLabels;
  @override
  final String labelExpression;

  factory _$NxLibraryDimension([void updates(NxLibraryDimensionBuilder b)]) =>
      (new NxLibraryDimensionBuilder()..update(updates)).build();

  _$NxLibraryDimension._(
      {this.grouping, this.fieldDefs, this.fieldLabels, this.labelExpression})
      : super._();

  @override
  NxLibraryDimension rebuild(void updates(NxLibraryDimensionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxLibraryDimensionBuilder toBuilder() =>
      new NxLibraryDimensionBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxLibraryDimension) return false;
    return grouping == other.grouping &&
        fieldDefs == other.fieldDefs &&
        fieldLabels == other.fieldLabels &&
        labelExpression == other.labelExpression;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, grouping.hashCode), fieldDefs.hashCode),
            fieldLabels.hashCode),
        labelExpression.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxLibraryDimension')
          ..add('grouping', grouping)
          ..add('fieldDefs', fieldDefs)
          ..add('fieldLabels', fieldLabels)
          ..add('labelExpression', labelExpression))
        .toString();
  }
}

class NxLibraryDimensionBuilder
    implements Builder<NxLibraryDimension, NxLibraryDimensionBuilder> {
  _$NxLibraryDimension _$v;

  String _grouping;
  String get grouping => _$this._grouping;
  set grouping(String grouping) => _$this._grouping = grouping;

  List<NxCell> _fieldDefs;
  List<NxCell> get fieldDefs => _$this._fieldDefs;
  set fieldDefs(List<NxCell> fieldDefs) => _$this._fieldDefs = fieldDefs;

  List<NxCell> _fieldLabels;
  List<NxCell> get fieldLabels => _$this._fieldLabels;
  set fieldLabels(List<NxCell> fieldLabels) =>
      _$this._fieldLabels = fieldLabels;

  String _labelExpression;
  String get labelExpression => _$this._labelExpression;
  set labelExpression(String labelExpression) =>
      _$this._labelExpression = labelExpression;

  NxLibraryDimensionBuilder();

  NxLibraryDimensionBuilder get _$this {
    if (_$v != null) {
      _grouping = _$v.grouping;
      _fieldDefs = _$v.fieldDefs;
      _fieldLabels = _$v.fieldLabels;
      _labelExpression = _$v.labelExpression;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxLibraryDimension other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxLibraryDimension;
  }

  @override
  void update(void updates(NxLibraryDimensionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxLibraryDimension build() {
    final _$result = _$v ??
        new _$NxLibraryDimension._(
            grouping: grouping,
            fieldDefs: fieldDefs,
            fieldLabels: fieldLabels,
            labelExpression: labelExpression);
    replace(_$result);
    return _$result;
  }
}
