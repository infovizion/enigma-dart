// GENERATED CODE - DO NOT MODIFY BY HAND

part of field_scores;

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

Serializer<FieldScores> _$fieldScoresSerializer = new _$FieldScoresSerializer();

class _$FieldScoresSerializer implements StructuredSerializer<FieldScores> {
  @override
  final Iterable<Type> types = const [FieldScores, _$FieldScores];
  @override
  final String wireName = 'FieldScores';

  @override
  Iterable serialize(Serializers serializers, FieldScores object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.fieldName != null) {
      result
        ..add('fieldName')
        ..add(serializers.serialize(object.fieldName,
            specifiedType: const FullType(String)));
    }
    if (object.readableName != null) {
      result
        ..add('readableName')
        ..add(serializers.serialize(object.readableName,
            specifiedType: const FullType(String)));
    }
    if (object.cardinalRatio != null) {
      result
        ..add('cardinalRatio')
        ..add(serializers.serialize(object.cardinalRatio,
            specifiedType: const FullType(num)));
    }
    if (object.symbolScore != null) {
      result
        ..add('symbolScore')
        ..add(serializers.serialize(object.symbolScore,
            specifiedType: const FullType(num)));
    }
    if (object.rowScore != null) {
      result
        ..add('rowScore')
        ..add(serializers.serialize(object.rowScore,
            specifiedType: const FullType(num)));
    }

    return result;
  }

  @override
  FieldScores deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FieldScoresBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'fieldName':
          result.fieldName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'readableName':
          result.readableName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cardinalRatio':
          result.cardinalRatio = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'symbolScore':
          result.symbolScore = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'rowScore':
          result.rowScore = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
      }
    }

    return result.build();
  }
}

class _$FieldScores extends FieldScores {
  @override
  final String fieldName;
  @override
  final String readableName;
  @override
  final num cardinalRatio;
  @override
  final num symbolScore;
  @override
  final num rowScore;

  factory _$FieldScores([void updates(FieldScoresBuilder b)]) =>
      (new FieldScoresBuilder()..update(updates)).build();

  _$FieldScores._(
      {this.fieldName,
      this.readableName,
      this.cardinalRatio,
      this.symbolScore,
      this.rowScore})
      : super._();

  @override
  FieldScores rebuild(void updates(FieldScoresBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldScoresBuilder toBuilder() => new FieldScoresBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FieldScores) return false;
    return fieldName == other.fieldName &&
        readableName == other.readableName &&
        cardinalRatio == other.cardinalRatio &&
        symbolScore == other.symbolScore &&
        rowScore == other.rowScore;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, fieldName.hashCode), readableName.hashCode),
                cardinalRatio.hashCode),
            symbolScore.hashCode),
        rowScore.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FieldScores')
          ..add('fieldName', fieldName)
          ..add('readableName', readableName)
          ..add('cardinalRatio', cardinalRatio)
          ..add('symbolScore', symbolScore)
          ..add('rowScore', rowScore))
        .toString();
  }
}

class FieldScoresBuilder implements Builder<FieldScores, FieldScoresBuilder> {
  _$FieldScores _$v;

  String _fieldName;
  String get fieldName => _$this._fieldName;
  set fieldName(String fieldName) => _$this._fieldName = fieldName;

  String _readableName;
  String get readableName => _$this._readableName;
  set readableName(String readableName) => _$this._readableName = readableName;

  num _cardinalRatio;
  num get cardinalRatio => _$this._cardinalRatio;
  set cardinalRatio(num cardinalRatio) => _$this._cardinalRatio = cardinalRatio;

  num _symbolScore;
  num get symbolScore => _$this._symbolScore;
  set symbolScore(num symbolScore) => _$this._symbolScore = symbolScore;

  num _rowScore;
  num get rowScore => _$this._rowScore;
  set rowScore(num rowScore) => _$this._rowScore = rowScore;

  FieldScoresBuilder();

  FieldScoresBuilder get _$this {
    if (_$v != null) {
      _fieldName = _$v.fieldName;
      _readableName = _$v.readableName;
      _cardinalRatio = _$v.cardinalRatio;
      _symbolScore = _$v.symbolScore;
      _rowScore = _$v.rowScore;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldScores other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FieldScores;
  }

  @override
  void update(void updates(FieldScoresBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FieldScores build() {
    final _$result = _$v ??
        new _$FieldScores._(
            fieldName: fieldName,
            readableName: readableName,
            cardinalRatio: cardinalRatio,
            symbolScore: symbolScore,
            rowScore: rowScore);
    replace(_$result);
    return _$result;
  }
}
