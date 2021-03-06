// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_library_measure_def;

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

Serializer<NxLibraryMeasureDef> _$nxLibraryMeasureDefSerializer =
    new _$NxLibraryMeasureDefSerializer();

class _$NxLibraryMeasureDefSerializer
    implements StructuredSerializer<NxLibraryMeasureDef> {
  @override
  final Iterable<Type> types = const [
    NxLibraryMeasureDef,
    _$NxLibraryMeasureDef
  ];
  @override
  final String wireName = 'NxLibraryMeasureDef';

  @override
  Iterable serialize(Serializers serializers, NxLibraryMeasureDef object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.label != null) {
      result
        ..add('qLabel')
        ..add(serializers.serialize(object.label,
            specifiedType: const FullType(String)));
    }
    if (object.def != null) {
      result
        ..add('qDef')
        ..add(serializers.serialize(object.def,
            specifiedType: const FullType(String)));
    }
    if (object.grouping != null) {
      result
        ..add('qGrouping')
        ..add(serializers.serialize(object.grouping,
            specifiedType: const FullType(String)));
    }
    if (object.expressions != null) {
      result
        ..add('qExpressions')
        ..add(serializers.serialize(object.expressions,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.activeExpression != null) {
      result
        ..add('qActiveExpression')
        ..add(serializers.serialize(object.activeExpression,
            specifiedType: const FullType(int)));
    }
    if (object.labelExpression != null) {
      result
        ..add('qLabelExpression')
        ..add(serializers.serialize(object.labelExpression,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  NxLibraryMeasureDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxLibraryMeasureDefBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qLabel':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qDef':
          result.def = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qGrouping':
          result.grouping = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qExpressions':
          result.expressions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'qActiveExpression':
          result.activeExpression = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qLabelExpression':
          result.labelExpression = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NxLibraryMeasureDef extends NxLibraryMeasureDef {
  @override
  final String label;
  @override
  final String def;
  @override
  final String grouping;
  @override
  final BuiltList<String> expressions;
  @override
  final int activeExpression;
  @override
  final String labelExpression;

  factory _$NxLibraryMeasureDef([void updates(NxLibraryMeasureDefBuilder b)]) =>
      (new NxLibraryMeasureDefBuilder()..update(updates)).build();

  _$NxLibraryMeasureDef._(
      {this.label,
      this.def,
      this.grouping,
      this.expressions,
      this.activeExpression,
      this.labelExpression})
      : super._();

  @override
  NxLibraryMeasureDef rebuild(void updates(NxLibraryMeasureDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxLibraryMeasureDefBuilder toBuilder() =>
      new NxLibraryMeasureDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxLibraryMeasureDef) return false;
    return label == other.label &&
        def == other.def &&
        grouping == other.grouping &&
        expressions == other.expressions &&
        activeExpression == other.activeExpression &&
        labelExpression == other.labelExpression;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, label.hashCode), def.hashCode),
                    grouping.hashCode),
                expressions.hashCode),
            activeExpression.hashCode),
        labelExpression.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxLibraryMeasureDef')
          ..add('label', label)
          ..add('def', def)
          ..add('grouping', grouping)
          ..add('expressions', expressions)
          ..add('activeExpression', activeExpression)
          ..add('labelExpression', labelExpression))
        .toString();
  }
}

class NxLibraryMeasureDefBuilder
    implements Builder<NxLibraryMeasureDef, NxLibraryMeasureDefBuilder> {
  _$NxLibraryMeasureDef _$v;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  String _def;
  String get def => _$this._def;
  set def(String def) => _$this._def = def;

  String _grouping;
  String get grouping => _$this._grouping;
  set grouping(String grouping) => _$this._grouping = grouping;

  ListBuilder<String> _expressions;
  ListBuilder<String> get expressions =>
      _$this._expressions ??= new ListBuilder<String>();
  set expressions(ListBuilder<String> expressions) =>
      _$this._expressions = expressions;

  int _activeExpression;
  int get activeExpression => _$this._activeExpression;
  set activeExpression(int activeExpression) =>
      _$this._activeExpression = activeExpression;

  String _labelExpression;
  String get labelExpression => _$this._labelExpression;
  set labelExpression(String labelExpression) =>
      _$this._labelExpression = labelExpression;

  NxLibraryMeasureDefBuilder();

  NxLibraryMeasureDefBuilder get _$this {
    if (_$v != null) {
      _label = _$v.label;
      _def = _$v.def;
      _grouping = _$v.grouping;
      _expressions = _$v.expressions?.toBuilder();
      _activeExpression = _$v.activeExpression;
      _labelExpression = _$v.labelExpression;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxLibraryMeasureDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxLibraryMeasureDef;
  }

  @override
  void update(void updates(NxLibraryMeasureDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxLibraryMeasureDef build() {
    _$NxLibraryMeasureDef _$result;
    try {
      _$result = _$v ??
          new _$NxLibraryMeasureDef._(
              label: label,
              def: def,
              grouping: grouping,
              expressions: _expressions?.build(),
              activeExpression: activeExpression,
              labelExpression: labelExpression);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'expressions';
        _expressions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxLibraryMeasureDef', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
