// GENERATED CODE - DO NOT MODIFY BY HAND

part of association_score;

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

Serializer<AssociationScore> _$associationScoreSerializer =
    new _$AssociationScoreSerializer();

class _$AssociationScoreSerializer
    implements StructuredSerializer<AssociationScore> {
  @override
  final Iterable<Type> types = const [AssociationScore, _$AssociationScore];
  @override
  final String wireName = 'AssociationScore';

  @override
  Iterable serialize(Serializers serializers, AssociationScore object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.fieldPairName != null) {
      result
        ..add('fieldPairName')
        ..add(serializers.serialize(object.fieldPairName,
            specifiedType: const FullType(String)));
    }
    if (object.scoreSummary != null) {
      result
        ..add('scoreSummary')
        ..add(serializers.serialize(object.scoreSummary,
            specifiedType: const FullType(int)));
    }
    if (object.field1Scores != null) {
      result
        ..add('field1Scores')
        ..add(serializers.serialize(object.field1Scores,
            specifiedType: const FullType(FieldScores)));
    }
    if (object.field2Scores != null) {
      result
        ..add('field2Scores')
        ..add(serializers.serialize(object.field2Scores,
            specifiedType: const FullType(FieldScores)));
    }

    return result;
  }

  @override
  AssociationScore deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new AssociationScoreBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'fieldPairName':
          result.fieldPairName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scoreSummary':
          result.scoreSummary = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'field1Scores':
          result.field1Scores.replace(serializers.deserialize(value,
              specifiedType: const FullType(FieldScores)) as FieldScores);
          break;
        case 'field2Scores':
          result.field2Scores.replace(serializers.deserialize(value,
              specifiedType: const FullType(FieldScores)) as FieldScores);
          break;
      }
    }

    return result.build();
  }
}

class _$AssociationScore extends AssociationScore {
  @override
  final String fieldPairName;
  @override
  final int scoreSummary;
  @override
  final FieldScores field1Scores;
  @override
  final FieldScores field2Scores;

  factory _$AssociationScore([void updates(AssociationScoreBuilder b)]) =>
      (new AssociationScoreBuilder()..update(updates)).build();

  _$AssociationScore._(
      {this.fieldPairName,
      this.scoreSummary,
      this.field1Scores,
      this.field2Scores})
      : super._();

  @override
  AssociationScore rebuild(void updates(AssociationScoreBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociationScoreBuilder toBuilder() =>
      new AssociationScoreBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! AssociationScore) return false;
    return fieldPairName == other.fieldPairName &&
        scoreSummary == other.scoreSummary &&
        field1Scores == other.field1Scores &&
        field2Scores == other.field2Scores;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, fieldPairName.hashCode), scoreSummary.hashCode),
            field1Scores.hashCode),
        field2Scores.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AssociationScore')
          ..add('fieldPairName', fieldPairName)
          ..add('scoreSummary', scoreSummary)
          ..add('field1Scores', field1Scores)
          ..add('field2Scores', field2Scores))
        .toString();
  }
}

class AssociationScoreBuilder
    implements Builder<AssociationScore, AssociationScoreBuilder> {
  _$AssociationScore _$v;

  String _fieldPairName;
  String get fieldPairName => _$this._fieldPairName;
  set fieldPairName(String fieldPairName) =>
      _$this._fieldPairName = fieldPairName;

  int _scoreSummary;
  int get scoreSummary => _$this._scoreSummary;
  set scoreSummary(int scoreSummary) => _$this._scoreSummary = scoreSummary;

  FieldScoresBuilder _field1Scores;
  FieldScoresBuilder get field1Scores =>
      _$this._field1Scores ??= new FieldScoresBuilder();
  set field1Scores(FieldScoresBuilder field1Scores) =>
      _$this._field1Scores = field1Scores;

  FieldScoresBuilder _field2Scores;
  FieldScoresBuilder get field2Scores =>
      _$this._field2Scores ??= new FieldScoresBuilder();
  set field2Scores(FieldScoresBuilder field2Scores) =>
      _$this._field2Scores = field2Scores;

  AssociationScoreBuilder();

  AssociationScoreBuilder get _$this {
    if (_$v != null) {
      _fieldPairName = _$v.fieldPairName;
      _scoreSummary = _$v.scoreSummary;
      _field1Scores = _$v.field1Scores?.toBuilder();
      _field2Scores = _$v.field2Scores?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociationScore other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$AssociationScore;
  }

  @override
  void update(void updates(AssociationScoreBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AssociationScore build() {
    _$AssociationScore _$result;
    try {
      _$result = _$v ??
          new _$AssociationScore._(
              fieldPairName: fieldPairName,
              scoreSummary: scoreSummary,
              field1Scores: _field1Scores?.build(),
              field2Scores: _field2Scores?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'field1Scores';
        _field1Scores?.build();
        _$failedField = 'field2Scores';
        _field2Scores?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AssociationScore', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
