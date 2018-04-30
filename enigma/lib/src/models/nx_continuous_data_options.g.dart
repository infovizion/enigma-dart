// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_continuous_data_options;

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

Serializer<NxContinuousDataOptions> _$nxContinuousDataOptionsSerializer =
    new _$NxContinuousDataOptionsSerializer();

class _$NxContinuousDataOptionsSerializer
    implements StructuredSerializer<NxContinuousDataOptions> {
  @override
  final Iterable<Type> types = const [
    NxContinuousDataOptions,
    _$NxContinuousDataOptions
  ];
  @override
  final String wireName = 'NxContinuousDataOptions';

  @override
  Iterable serialize(Serializers serializers, NxContinuousDataOptions object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.start != null) {
      result
        ..add('qStart')
        ..add(serializers.serialize(object.start,
            specifiedType: const FullType(num)));
    }
    if (object.end != null) {
      result
        ..add('qEnd')
        ..add(serializers.serialize(object.end,
            specifiedType: const FullType(num)));
    }
    if (object.nbrPoints != null) {
      result
        ..add('qNbrPoints')
        ..add(serializers.serialize(object.nbrPoints,
            specifiedType: const FullType(int)));
    }
    if (object.maxNbrTicks != null) {
      result
        ..add('qMaxNbrTicks')
        ..add(serializers.serialize(object.maxNbrTicks,
            specifiedType: const FullType(int)));
    }
    if (object.maxNumberLines != null) {
      result
        ..add('qMaxNumberLines')
        ..add(serializers.serialize(object.maxNumberLines,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  NxContinuousDataOptions deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxContinuousDataOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qStart':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'qEnd':
          result.end = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'qNbrPoints':
          result.nbrPoints = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qMaxNbrTicks':
          result.maxNbrTicks = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qMaxNumberLines':
          result.maxNumberLines = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$NxContinuousDataOptions extends NxContinuousDataOptions {
  @override
  final num start;
  @override
  final num end;
  @override
  final int nbrPoints;
  @override
  final int maxNbrTicks;
  @override
  final int maxNumberLines;

  factory _$NxContinuousDataOptions(
          [void updates(NxContinuousDataOptionsBuilder b)]) =>
      (new NxContinuousDataOptionsBuilder()..update(updates)).build();

  _$NxContinuousDataOptions._(
      {this.start,
      this.end,
      this.nbrPoints,
      this.maxNbrTicks,
      this.maxNumberLines})
      : super._();

  @override
  NxContinuousDataOptions rebuild(
          void updates(NxContinuousDataOptionsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxContinuousDataOptionsBuilder toBuilder() =>
      new NxContinuousDataOptionsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxContinuousDataOptions) return false;
    return start == other.start &&
        end == other.end &&
        nbrPoints == other.nbrPoints &&
        maxNbrTicks == other.maxNbrTicks &&
        maxNumberLines == other.maxNumberLines;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, start.hashCode), end.hashCode), nbrPoints.hashCode),
            maxNbrTicks.hashCode),
        maxNumberLines.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxContinuousDataOptions')
          ..add('start', start)
          ..add('end', end)
          ..add('nbrPoints', nbrPoints)
          ..add('maxNbrTicks', maxNbrTicks)
          ..add('maxNumberLines', maxNumberLines))
        .toString();
  }
}

class NxContinuousDataOptionsBuilder
    implements
        Builder<NxContinuousDataOptions, NxContinuousDataOptionsBuilder> {
  _$NxContinuousDataOptions _$v;

  num _start;
  num get start => _$this._start;
  set start(num start) => _$this._start = start;

  num _end;
  num get end => _$this._end;
  set end(num end) => _$this._end = end;

  int _nbrPoints;
  int get nbrPoints => _$this._nbrPoints;
  set nbrPoints(int nbrPoints) => _$this._nbrPoints = nbrPoints;

  int _maxNbrTicks;
  int get maxNbrTicks => _$this._maxNbrTicks;
  set maxNbrTicks(int maxNbrTicks) => _$this._maxNbrTicks = maxNbrTicks;

  int _maxNumberLines;
  int get maxNumberLines => _$this._maxNumberLines;
  set maxNumberLines(int maxNumberLines) =>
      _$this._maxNumberLines = maxNumberLines;

  NxContinuousDataOptionsBuilder();

  NxContinuousDataOptionsBuilder get _$this {
    if (_$v != null) {
      _start = _$v.start;
      _end = _$v.end;
      _nbrPoints = _$v.nbrPoints;
      _maxNbrTicks = _$v.maxNbrTicks;
      _maxNumberLines = _$v.maxNumberLines;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxContinuousDataOptions other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxContinuousDataOptions;
  }

  @override
  void update(void updates(NxContinuousDataOptionsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxContinuousDataOptions build() {
    final _$result = _$v ??
        new _$NxContinuousDataOptions._(
            start: start,
            end: end,
            nbrPoints: nbrPoints,
            maxNbrTicks: maxNbrTicks,
            maxNumberLines: maxNumberLines);
    replace(_$result);
    return _$result;
  }
}
