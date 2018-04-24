// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_library_measure_def;

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
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.label != null) {
      result
        ..add('label')
        ..add(serializers.serialize(object.label,
            specifiedType: const FullType(String)));
    }
    if (object.def != null) {
      result
        ..add('def')
        ..add(serializers.serialize(object.def,
            specifiedType: const FullType(String)));
    }
    if (object.grouping != null) {
      result
        ..add('grouping')
        ..add(serializers.serialize(object.grouping,
            specifiedType: const FullType(String)));
    }
    if (object.expressions != null) {
      result
        ..add('expressions')
        ..add(serializers.serialize(object.expressions,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NxCell)])));
    }
    if (object.activeExpression != null) {
      result
        ..add('activeExpression')
        ..add(serializers.serialize(object.activeExpression,
            specifiedType: const FullType(int)));
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
  NxLibraryMeasureDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxLibraryMeasureDefBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'def':
          result.def = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'grouping':
          result.grouping = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expressions':
          result.expressions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(NxCell)]))
              as BuiltList);
          break;
        case 'activeExpression':
          result.activeExpression = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$NxLibraryMeasureDef extends NxLibraryMeasureDef {
  @override
  final String label;
  @override
  final String def;
  @override
  final String grouping;
  @override
  final BuiltList<NxCell> expressions;
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

  ListBuilder<NxCell> _expressions;
  ListBuilder<NxCell> get expressions =>
      _$this._expressions ??= new ListBuilder<NxCell>();
  set expressions(ListBuilder<NxCell> expressions) =>
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
