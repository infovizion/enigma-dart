// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_library_measure;

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

Serializer<NxLibraryMeasure> _$nxLibraryMeasureSerializer =
    new _$NxLibraryMeasureSerializer();

class _$NxLibraryMeasureSerializer
    implements StructuredSerializer<NxLibraryMeasure> {
  @override
  final Iterable<Type> types = const [NxLibraryMeasure, _$NxLibraryMeasure];
  @override
  final String wireName = 'NxLibraryMeasure';

  @override
  Iterable serialize(Serializers serializers, NxLibraryMeasure object,
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
  NxLibraryMeasure deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxLibraryMeasureBuilder();

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

class _$NxLibraryMeasure extends NxLibraryMeasure {
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

  factory _$NxLibraryMeasure([void updates(NxLibraryMeasureBuilder b)]) =>
      (new NxLibraryMeasureBuilder()..update(updates)).build();

  _$NxLibraryMeasure._(
      {this.label,
      this.def,
      this.grouping,
      this.expressions,
      this.activeExpression,
      this.labelExpression})
      : super._();

  @override
  NxLibraryMeasure rebuild(void updates(NxLibraryMeasureBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxLibraryMeasureBuilder toBuilder() =>
      new NxLibraryMeasureBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxLibraryMeasure) return false;
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
    return (newBuiltValueToStringHelper('NxLibraryMeasure')
          ..add('label', label)
          ..add('def', def)
          ..add('grouping', grouping)
          ..add('expressions', expressions)
          ..add('activeExpression', activeExpression)
          ..add('labelExpression', labelExpression))
        .toString();
  }
}

class NxLibraryMeasureBuilder
    implements Builder<NxLibraryMeasure, NxLibraryMeasureBuilder> {
  _$NxLibraryMeasure _$v;

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

  NxLibraryMeasureBuilder();

  NxLibraryMeasureBuilder get _$this {
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
  void replace(NxLibraryMeasure other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxLibraryMeasure;
  }

  @override
  void update(void updates(NxLibraryMeasureBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxLibraryMeasure build() {
    _$NxLibraryMeasure _$result;
    try {
      _$result = _$v ??
          new _$NxLibraryMeasure._(
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
            'NxLibraryMeasure', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
