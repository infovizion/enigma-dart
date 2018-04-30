// GENERATED CODE - DO NOT MODIFY BY HAND

part of sort_criteria;

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

Serializer<SortCriteria> _$sortCriteriaSerializer =
    new _$SortCriteriaSerializer();

class _$SortCriteriaSerializer implements StructuredSerializer<SortCriteria> {
  @override
  final Iterable<Type> types = const [SortCriteria, _$SortCriteria];
  @override
  final String wireName = 'SortCriteria';

  @override
  Iterable serialize(Serializers serializers, SortCriteria object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.sortByState != null) {
      result
        ..add('qSortByState')
        ..add(serializers.serialize(object.sortByState,
            specifiedType: const FullType(int)));
    }
    if (object.sortByFrequency != null) {
      result
        ..add('qSortByFrequency')
        ..add(serializers.serialize(object.sortByFrequency,
            specifiedType: const FullType(int)));
    }
    if (object.sortByNumeric != null) {
      result
        ..add('qSortByNumeric')
        ..add(serializers.serialize(object.sortByNumeric,
            specifiedType: const FullType(int)));
    }
    if (object.sortByAscii != null) {
      result
        ..add('qSortByAscii')
        ..add(serializers.serialize(object.sortByAscii,
            specifiedType: const FullType(int)));
    }
    if (object.sortByLoadOrder != null) {
      result
        ..add('qSortByLoadOrder')
        ..add(serializers.serialize(object.sortByLoadOrder,
            specifiedType: const FullType(int)));
    }
    if (object.sortByExpression != null) {
      result
        ..add('qSortByExpression')
        ..add(serializers.serialize(object.sortByExpression,
            specifiedType: const FullType(int)));
    }
    if (object.expression != null) {
      result
        ..add('qExpression')
        ..add(serializers.serialize(object.expression,
            specifiedType: const FullType(ValueExpr)));
    }
    if (object.sortByGreyness != null) {
      result
        ..add('qSortByGreyness')
        ..add(serializers.serialize(object.sortByGreyness,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  SortCriteria deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SortCriteriaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qSortByState':
          result.sortByState = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qSortByFrequency':
          result.sortByFrequency = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qSortByNumeric':
          result.sortByNumeric = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qSortByAscii':
          result.sortByAscii = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qSortByLoadOrder':
          result.sortByLoadOrder = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qSortByExpression':
          result.sortByExpression = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qExpression':
          result.expression.replace(serializers.deserialize(value,
              specifiedType: const FullType(ValueExpr)) as ValueExpr);
          break;
        case 'qSortByGreyness':
          result.sortByGreyness = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SortCriteria extends SortCriteria {
  @override
  final int sortByState;
  @override
  final int sortByFrequency;
  @override
  final int sortByNumeric;
  @override
  final int sortByAscii;
  @override
  final int sortByLoadOrder;
  @override
  final int sortByExpression;
  @override
  final ValueExpr expression;
  @override
  final int sortByGreyness;

  factory _$SortCriteria([void updates(SortCriteriaBuilder b)]) =>
      (new SortCriteriaBuilder()..update(updates)).build();

  _$SortCriteria._(
      {this.sortByState,
      this.sortByFrequency,
      this.sortByNumeric,
      this.sortByAscii,
      this.sortByLoadOrder,
      this.sortByExpression,
      this.expression,
      this.sortByGreyness})
      : super._();

  @override
  SortCriteria rebuild(void updates(SortCriteriaBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SortCriteriaBuilder toBuilder() => new SortCriteriaBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SortCriteria) return false;
    return sortByState == other.sortByState &&
        sortByFrequency == other.sortByFrequency &&
        sortByNumeric == other.sortByNumeric &&
        sortByAscii == other.sortByAscii &&
        sortByLoadOrder == other.sortByLoadOrder &&
        sortByExpression == other.sortByExpression &&
        expression == other.expression &&
        sortByGreyness == other.sortByGreyness;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, sortByState.hashCode),
                                sortByFrequency.hashCode),
                            sortByNumeric.hashCode),
                        sortByAscii.hashCode),
                    sortByLoadOrder.hashCode),
                sortByExpression.hashCode),
            expression.hashCode),
        sortByGreyness.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SortCriteria')
          ..add('sortByState', sortByState)
          ..add('sortByFrequency', sortByFrequency)
          ..add('sortByNumeric', sortByNumeric)
          ..add('sortByAscii', sortByAscii)
          ..add('sortByLoadOrder', sortByLoadOrder)
          ..add('sortByExpression', sortByExpression)
          ..add('expression', expression)
          ..add('sortByGreyness', sortByGreyness))
        .toString();
  }
}

class SortCriteriaBuilder
    implements Builder<SortCriteria, SortCriteriaBuilder> {
  _$SortCriteria _$v;

  int _sortByState;
  int get sortByState => _$this._sortByState;
  set sortByState(int sortByState) => _$this._sortByState = sortByState;

  int _sortByFrequency;
  int get sortByFrequency => _$this._sortByFrequency;
  set sortByFrequency(int sortByFrequency) =>
      _$this._sortByFrequency = sortByFrequency;

  int _sortByNumeric;
  int get sortByNumeric => _$this._sortByNumeric;
  set sortByNumeric(int sortByNumeric) => _$this._sortByNumeric = sortByNumeric;

  int _sortByAscii;
  int get sortByAscii => _$this._sortByAscii;
  set sortByAscii(int sortByAscii) => _$this._sortByAscii = sortByAscii;

  int _sortByLoadOrder;
  int get sortByLoadOrder => _$this._sortByLoadOrder;
  set sortByLoadOrder(int sortByLoadOrder) =>
      _$this._sortByLoadOrder = sortByLoadOrder;

  int _sortByExpression;
  int get sortByExpression => _$this._sortByExpression;
  set sortByExpression(int sortByExpression) =>
      _$this._sortByExpression = sortByExpression;

  ValueExprBuilder _expression;
  ValueExprBuilder get expression =>
      _$this._expression ??= new ValueExprBuilder();
  set expression(ValueExprBuilder expression) =>
      _$this._expression = expression;

  int _sortByGreyness;
  int get sortByGreyness => _$this._sortByGreyness;
  set sortByGreyness(int sortByGreyness) =>
      _$this._sortByGreyness = sortByGreyness;

  SortCriteriaBuilder();

  SortCriteriaBuilder get _$this {
    if (_$v != null) {
      _sortByState = _$v.sortByState;
      _sortByFrequency = _$v.sortByFrequency;
      _sortByNumeric = _$v.sortByNumeric;
      _sortByAscii = _$v.sortByAscii;
      _sortByLoadOrder = _$v.sortByLoadOrder;
      _sortByExpression = _$v.sortByExpression;
      _expression = _$v.expression?.toBuilder();
      _sortByGreyness = _$v.sortByGreyness;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SortCriteria other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SortCriteria;
  }

  @override
  void update(void updates(SortCriteriaBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SortCriteria build() {
    _$SortCriteria _$result;
    try {
      _$result = _$v ??
          new _$SortCriteria._(
              sortByState: sortByState,
              sortByFrequency: sortByFrequency,
              sortByNumeric: sortByNumeric,
              sortByAscii: sortByAscii,
              sortByLoadOrder: sortByLoadOrder,
              sortByExpression: sortByExpression,
              expression: _expression?.build(),
              sortByGreyness: sortByGreyness);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'expression';
        _expression?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SortCriteria', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
