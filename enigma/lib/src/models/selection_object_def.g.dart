// GENERATED CODE - DO NOT MODIFY BY HAND

part of selection_object_def;

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

Serializer<SelectionObjectDef> _$selectionObjectDefSerializer =
    new _$SelectionObjectDefSerializer();

class _$SelectionObjectDefSerializer
    implements StructuredSerializer<SelectionObjectDef> {
  @override
  final Iterable<Type> types = const [SelectionObjectDef, _$SelectionObjectDef];
  @override
  final String wireName = 'SelectionObjectDef';

  @override
  Iterable serialize(Serializers serializers, SelectionObjectDef object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.stateName != null) {
      result
        ..add('stateName')
        ..add(serializers.serialize(object.stateName,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  SelectionObjectDef deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SelectionObjectDefBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'stateName':
          result.stateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SelectionObjectDef extends SelectionObjectDef {
  @override
  final String stateName;

  factory _$SelectionObjectDef([void updates(SelectionObjectDefBuilder b)]) =>
      (new SelectionObjectDefBuilder()..update(updates)).build();

  _$SelectionObjectDef._({this.stateName}) : super._();

  @override
  SelectionObjectDef rebuild(void updates(SelectionObjectDefBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectionObjectDefBuilder toBuilder() =>
      new SelectionObjectDefBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SelectionObjectDef) return false;
    return stateName == other.stateName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, stateName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SelectionObjectDef')
          ..add('stateName', stateName))
        .toString();
  }
}

class SelectionObjectDefBuilder
    implements Builder<SelectionObjectDef, SelectionObjectDefBuilder> {
  _$SelectionObjectDef _$v;

  String _stateName;
  String get stateName => _$this._stateName;
  set stateName(String stateName) => _$this._stateName = stateName;

  SelectionObjectDefBuilder();

  SelectionObjectDefBuilder get _$this {
    if (_$v != null) {
      _stateName = _$v.stateName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectionObjectDef other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SelectionObjectDef;
  }

  @override
  void update(void updates(SelectionObjectDefBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SelectionObjectDef build() {
    final _$result = _$v ?? new _$SelectionObjectDef._(stateName: stateName);
    replace(_$result);
    return _$result;
  }
}
