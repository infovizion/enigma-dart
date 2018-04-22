// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_auto_sort_by_state_def;

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

Serializer<NxAutoSortByStateDef> _$nxAutoSortByStateDefSerializer =
    new _$NxAutoSortByStateDefSerializer();

class _$NxAutoSortByStateDefSerializer
    implements StructuredSerializer<NxAutoSortByStateDef> {
  @override
  final Iterable<Type> types = const [
    NxAutoSortByStateDef,
    _$NxAutoSortByStateDef
  ];
  @override
  final String wireName = 'NxAutoSortByStateDef';

  @override
  Iterable serialize(Serializers serializers, NxAutoSortByStateDef object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.displayNumberOfRows != null) {
      result
        ..add('displayNumberOfRows')
        ..add(serializers.serialize(object.displayNumberOfRows,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  NxAutoSortByStateDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NxAutoSortByStateDefBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'displayNumberOfRows':
          result.displayNumberOfRows = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$NxAutoSortByStateDef extends NxAutoSortByStateDef {
  @override
  final int displayNumberOfRows;

  factory _$NxAutoSortByStateDef(
          [void updates(NxAutoSortByStateDefBuilder b)]) =>
      (new NxAutoSortByStateDefBuilder()..update(updates)).build();

  _$NxAutoSortByStateDef._({this.displayNumberOfRows}) : super._();

  @override
  NxAutoSortByStateDef rebuild(void updates(NxAutoSortByStateDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxAutoSortByStateDefBuilder toBuilder() =>
      new NxAutoSortByStateDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxAutoSortByStateDef) return false;
    return displayNumberOfRows == other.displayNumberOfRows;
  }

  @override
  int get hashCode {
    return $jf($jc(0, displayNumberOfRows.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxAutoSortByStateDef')
          ..add('displayNumberOfRows', displayNumberOfRows))
        .toString();
  }
}

class NxAutoSortByStateDefBuilder
    implements Builder<NxAutoSortByStateDef, NxAutoSortByStateDefBuilder> {
  _$NxAutoSortByStateDef _$v;

  int _displayNumberOfRows;
  int get displayNumberOfRows => _$this._displayNumberOfRows;
  set displayNumberOfRows(int displayNumberOfRows) =>
      _$this._displayNumberOfRows = displayNumberOfRows;

  NxAutoSortByStateDefBuilder();

  NxAutoSortByStateDefBuilder get _$this {
    if (_$v != null) {
      _displayNumberOfRows = _$v.displayNumberOfRows;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxAutoSortByStateDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxAutoSortByStateDef;
  }

  @override
  void update(void updates(NxAutoSortByStateDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxAutoSortByStateDef build() {
    final _$result = _$v ??
        new _$NxAutoSortByStateDef._(displayNumberOfRows: displayNumberOfRows);
    replace(_$result);
    return _$result;
  }
}
