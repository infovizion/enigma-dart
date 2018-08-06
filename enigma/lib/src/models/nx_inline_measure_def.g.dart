// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_inline_measure_def;

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

Serializer<NxInlineMeasureDef> _$nxInlineMeasureDefSerializer =
    new _$NxInlineMeasureDefSerializer();

class _$NxInlineMeasureDefSerializer
    implements StructuredSerializer<NxInlineMeasureDef> {
  @override
  final Iterable<Type> types = const [NxInlineMeasureDef, _$NxInlineMeasureDef];
  @override
  final String wireName = 'NxInlineMeasureDef';

  @override
  Iterable serialize(Serializers serializers, NxInlineMeasureDef object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.label != null) {
      result
        ..add('qLabel')
        ..add(serializers.serialize(object.label,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('qDescription')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.tags != null) {
      result
        ..add('qTags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.grouping != null) {
      result
        ..add('qGrouping')
        ..add(serializers.serialize(object.grouping,
            specifiedType: const FullType(String)));
    }
    if (object.def != null) {
      result
        ..add('qDef')
        ..add(serializers.serialize(object.def,
            specifiedType: const FullType(String)));
    }
    if (object.numFormat != null) {
      result
        ..add('qNumFormat')
        ..add(serializers.serialize(object.numFormat,
            specifiedType: const FullType(FieldAttributes)));
    }
    if (object.relative != null) {
      result
        ..add('qRelative')
        ..add(serializers.serialize(object.relative,
            specifiedType: const FullType(bool)));
    }
    if (object.brutalSum != null) {
      result
        ..add('qBrutalSum')
        ..add(serializers.serialize(object.brutalSum,
            specifiedType: const FullType(bool)));
    }
    if (object.aggrFunc != null) {
      result
        ..add('qAggrFunc')
        ..add(serializers.serialize(object.aggrFunc,
            specifiedType: const FullType(String)));
    }
    if (object.accumulate != null) {
      result
        ..add('qAccumulate')
        ..add(serializers.serialize(object.accumulate,
            specifiedType: const FullType(int)));
    }
    if (object.reverseSort != null) {
      result
        ..add('qReverseSort')
        ..add(serializers.serialize(object.reverseSort,
            specifiedType: const FullType(bool)));
    }
    if (object.activeExpression != null) {
      result
        ..add('qActiveExpression')
        ..add(serializers.serialize(object.activeExpression,
            specifiedType: const FullType(int)));
    }
    if (object.expressions != null) {
      result
        ..add('qExpressions')
        ..add(serializers.serialize(object.expressions,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  NxInlineMeasureDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxInlineMeasureDefBuilder();

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
        case 'qDescription':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qTags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'qGrouping':
          result.grouping = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qDef':
          result.def = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qNumFormat':
          result.numFormat.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FieldAttributes))
              as FieldAttributes);
          break;
        case 'qRelative':
          result.relative = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qBrutalSum':
          result.brutalSum = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qAggrFunc':
          result.aggrFunc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qAccumulate':
          result.accumulate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qReverseSort':
          result.reverseSort = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'qActiveExpression':
          result.activeExpression = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qExpressions':
          result.expressions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
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

class _$NxInlineMeasureDef extends NxInlineMeasureDef {
  @override
  final String label;
  @override
  final String description;
  @override
  final BuiltList<String> tags;
  @override
  final String grouping;
  @override
  final String def;
  @override
  final FieldAttributes numFormat;
  @override
  final bool relative;
  @override
  final bool brutalSum;
  @override
  final String aggrFunc;
  @override
  final int accumulate;
  @override
  final bool reverseSort;
  @override
  final int activeExpression;
  @override
  final BuiltList<String> expressions;
  @override
  final String labelExpression;

  factory _$NxInlineMeasureDef([void updates(NxInlineMeasureDefBuilder b)]) =>
      (new NxInlineMeasureDefBuilder()..update(updates)).build();

  _$NxInlineMeasureDef._(
      {this.label,
      this.description,
      this.tags,
      this.grouping,
      this.def,
      this.numFormat,
      this.relative,
      this.brutalSum,
      this.aggrFunc,
      this.accumulate,
      this.reverseSort,
      this.activeExpression,
      this.expressions,
      this.labelExpression})
      : super._();

  @override
  NxInlineMeasureDef rebuild(void updates(NxInlineMeasureDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxInlineMeasureDefBuilder toBuilder() =>
      new NxInlineMeasureDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxInlineMeasureDef) return false;
    return label == other.label &&
        description == other.description &&
        tags == other.tags &&
        grouping == other.grouping &&
        def == other.def &&
        numFormat == other.numFormat &&
        relative == other.relative &&
        brutalSum == other.brutalSum &&
        aggrFunc == other.aggrFunc &&
        accumulate == other.accumulate &&
        reverseSort == other.reverseSort &&
        activeExpression == other.activeExpression &&
        expressions == other.expressions &&
        labelExpression == other.labelExpression;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, label.hashCode),
                                                        description.hashCode),
                                                    tags.hashCode),
                                                grouping.hashCode),
                                            def.hashCode),
                                        numFormat.hashCode),
                                    relative.hashCode),
                                brutalSum.hashCode),
                            aggrFunc.hashCode),
                        accumulate.hashCode),
                    reverseSort.hashCode),
                activeExpression.hashCode),
            expressions.hashCode),
        labelExpression.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxInlineMeasureDef')
          ..add('label', label)
          ..add('description', description)
          ..add('tags', tags)
          ..add('grouping', grouping)
          ..add('def', def)
          ..add('numFormat', numFormat)
          ..add('relative', relative)
          ..add('brutalSum', brutalSum)
          ..add('aggrFunc', aggrFunc)
          ..add('accumulate', accumulate)
          ..add('reverseSort', reverseSort)
          ..add('activeExpression', activeExpression)
          ..add('expressions', expressions)
          ..add('labelExpression', labelExpression))
        .toString();
  }
}

class NxInlineMeasureDefBuilder
    implements Builder<NxInlineMeasureDef, NxInlineMeasureDefBuilder> {
  _$NxInlineMeasureDef _$v;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  String _grouping;
  String get grouping => _$this._grouping;
  set grouping(String grouping) => _$this._grouping = grouping;

  String _def;
  String get def => _$this._def;
  set def(String def) => _$this._def = def;

  FieldAttributesBuilder _numFormat;
  FieldAttributesBuilder get numFormat =>
      _$this._numFormat ??= new FieldAttributesBuilder();
  set numFormat(FieldAttributesBuilder numFormat) =>
      _$this._numFormat = numFormat;

  bool _relative;
  bool get relative => _$this._relative;
  set relative(bool relative) => _$this._relative = relative;

  bool _brutalSum;
  bool get brutalSum => _$this._brutalSum;
  set brutalSum(bool brutalSum) => _$this._brutalSum = brutalSum;

  String _aggrFunc;
  String get aggrFunc => _$this._aggrFunc;
  set aggrFunc(String aggrFunc) => _$this._aggrFunc = aggrFunc;

  int _accumulate;
  int get accumulate => _$this._accumulate;
  set accumulate(int accumulate) => _$this._accumulate = accumulate;

  bool _reverseSort;
  bool get reverseSort => _$this._reverseSort;
  set reverseSort(bool reverseSort) => _$this._reverseSort = reverseSort;

  int _activeExpression;
  int get activeExpression => _$this._activeExpression;
  set activeExpression(int activeExpression) =>
      _$this._activeExpression = activeExpression;

  ListBuilder<String> _expressions;
  ListBuilder<String> get expressions =>
      _$this._expressions ??= new ListBuilder<String>();
  set expressions(ListBuilder<String> expressions) =>
      _$this._expressions = expressions;

  String _labelExpression;
  String get labelExpression => _$this._labelExpression;
  set labelExpression(String labelExpression) =>
      _$this._labelExpression = labelExpression;

  NxInlineMeasureDefBuilder();

  NxInlineMeasureDefBuilder get _$this {
    if (_$v != null) {
      _label = _$v.label;
      _description = _$v.description;
      _tags = _$v.tags?.toBuilder();
      _grouping = _$v.grouping;
      _def = _$v.def;
      _numFormat = _$v.numFormat?.toBuilder();
      _relative = _$v.relative;
      _brutalSum = _$v.brutalSum;
      _aggrFunc = _$v.aggrFunc;
      _accumulate = _$v.accumulate;
      _reverseSort = _$v.reverseSort;
      _activeExpression = _$v.activeExpression;
      _expressions = _$v.expressions?.toBuilder();
      _labelExpression = _$v.labelExpression;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxInlineMeasureDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxInlineMeasureDef;
  }

  @override
  void update(void updates(NxInlineMeasureDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxInlineMeasureDef build() {
    _$NxInlineMeasureDef _$result;
    try {
      _$result = _$v ??
          new _$NxInlineMeasureDef._(
              label: label,
              description: description,
              tags: _tags?.build(),
              grouping: grouping,
              def: def,
              numFormat: _numFormat?.build(),
              relative: relative,
              brutalSum: brutalSum,
              aggrFunc: aggrFunc,
              accumulate: accumulate,
              reverseSort: reverseSort,
              activeExpression: activeExpression,
              expressions: _expressions?.build(),
              labelExpression: labelExpression);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'numFormat';
        _numFormat?.build();

        _$failedField = 'expressions';
        _expressions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NxInlineMeasureDef', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
