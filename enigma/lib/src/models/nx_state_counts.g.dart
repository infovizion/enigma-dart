// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_state_counts;

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

Serializer<NxStateCounts> _$nxStateCountsSerializer =
    new _$NxStateCountsSerializer();

class _$NxStateCountsSerializer implements StructuredSerializer<NxStateCounts> {
  @override
  final Iterable<Type> types = const [NxStateCounts, _$NxStateCounts];
  @override
  final String wireName = 'NxStateCounts';

  @override
  Iterable serialize(Serializers serializers, NxStateCounts object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.locked != null) {
      result
        ..add('qLocked')
        ..add(serializers.serialize(object.locked,
            specifiedType: const FullType(int)));
    }
    if (object.selected != null) {
      result
        ..add('qSelected')
        ..add(serializers.serialize(object.selected,
            specifiedType: const FullType(int)));
    }
    if (object.option != null) {
      result
        ..add('qOption')
        ..add(serializers.serialize(object.option,
            specifiedType: const FullType(int)));
    }
    if (object.deselected != null) {
      result
        ..add('qDeselected')
        ..add(serializers.serialize(object.deselected,
            specifiedType: const FullType(int)));
    }
    if (object.alternative != null) {
      result
        ..add('qAlternative')
        ..add(serializers.serialize(object.alternative,
            specifiedType: const FullType(int)));
    }
    if (object.excluded != null) {
      result
        ..add('qExcluded')
        ..add(serializers.serialize(object.excluded,
            specifiedType: const FullType(int)));
    }
    if (object.selectedExcluded != null) {
      result
        ..add('qSelectedExcluded')
        ..add(serializers.serialize(object.selectedExcluded,
            specifiedType: const FullType(int)));
    }
    if (object.lockedExcluded != null) {
      result
        ..add('qLockedExcluded')
        ..add(serializers.serialize(object.lockedExcluded,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  NxStateCounts deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxStateCountsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qLocked':
          result.locked = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qSelected':
          result.selected = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qOption':
          result.option = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qDeselected':
          result.deselected = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qAlternative':
          result.alternative = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qExcluded':
          result.excluded = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qSelectedExcluded':
          result.selectedExcluded = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qLockedExcluded':
          result.lockedExcluded = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$NxStateCounts extends NxStateCounts {
  @override
  final int locked;
  @override
  final int selected;
  @override
  final int option;
  @override
  final int deselected;
  @override
  final int alternative;
  @override
  final int excluded;
  @override
  final int selectedExcluded;
  @override
  final int lockedExcluded;

  factory _$NxStateCounts([void updates(NxStateCountsBuilder b)]) =>
      (new NxStateCountsBuilder()..update(updates)).build();

  _$NxStateCounts._(
      {this.locked,
      this.selected,
      this.option,
      this.deselected,
      this.alternative,
      this.excluded,
      this.selectedExcluded,
      this.lockedExcluded})
      : super._();

  @override
  NxStateCounts rebuild(void updates(NxStateCountsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxStateCountsBuilder toBuilder() => new NxStateCountsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxStateCounts) return false;
    return locked == other.locked &&
        selected == other.selected &&
        option == other.option &&
        deselected == other.deselected &&
        alternative == other.alternative &&
        excluded == other.excluded &&
        selectedExcluded == other.selectedExcluded &&
        lockedExcluded == other.lockedExcluded;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, locked.hashCode), selected.hashCode),
                            option.hashCode),
                        deselected.hashCode),
                    alternative.hashCode),
                excluded.hashCode),
            selectedExcluded.hashCode),
        lockedExcluded.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxStateCounts')
          ..add('locked', locked)
          ..add('selected', selected)
          ..add('option', option)
          ..add('deselected', deselected)
          ..add('alternative', alternative)
          ..add('excluded', excluded)
          ..add('selectedExcluded', selectedExcluded)
          ..add('lockedExcluded', lockedExcluded))
        .toString();
  }
}

class NxStateCountsBuilder
    implements Builder<NxStateCounts, NxStateCountsBuilder> {
  _$NxStateCounts _$v;

  int _locked;
  int get locked => _$this._locked;
  set locked(int locked) => _$this._locked = locked;

  int _selected;
  int get selected => _$this._selected;
  set selected(int selected) => _$this._selected = selected;

  int _option;
  int get option => _$this._option;
  set option(int option) => _$this._option = option;

  int _deselected;
  int get deselected => _$this._deselected;
  set deselected(int deselected) => _$this._deselected = deselected;

  int _alternative;
  int get alternative => _$this._alternative;
  set alternative(int alternative) => _$this._alternative = alternative;

  int _excluded;
  int get excluded => _$this._excluded;
  set excluded(int excluded) => _$this._excluded = excluded;

  int _selectedExcluded;
  int get selectedExcluded => _$this._selectedExcluded;
  set selectedExcluded(int selectedExcluded) =>
      _$this._selectedExcluded = selectedExcluded;

  int _lockedExcluded;
  int get lockedExcluded => _$this._lockedExcluded;
  set lockedExcluded(int lockedExcluded) =>
      _$this._lockedExcluded = lockedExcluded;

  NxStateCountsBuilder();

  NxStateCountsBuilder get _$this {
    if (_$v != null) {
      _locked = _$v.locked;
      _selected = _$v.selected;
      _option = _$v.option;
      _deselected = _$v.deselected;
      _alternative = _$v.alternative;
      _excluded = _$v.excluded;
      _selectedExcluded = _$v.selectedExcluded;
      _lockedExcluded = _$v.lockedExcluded;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxStateCounts other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxStateCounts;
  }

  @override
  void update(void updates(NxStateCountsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxStateCounts build() {
    final _$result = _$v ??
        new _$NxStateCounts._(
            locked: locked,
            selected: selected,
            option: option,
            deselected: deselected,
            alternative: alternative,
            excluded: excluded,
            selectedExcluded: selectedExcluded,
            lockedExcluded: lockedExcluded);
    replace(_$result);
    return _$result;
  }
}
