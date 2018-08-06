// GENERATED CODE - DO NOT MODIFY BY HAND

part of selection_object;

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

Serializer<SelectionObject> _$selectionObjectSerializer =
    new _$SelectionObjectSerializer();

class _$SelectionObjectSerializer
    implements StructuredSerializer<SelectionObject> {
  @override
  final Iterable<Type> types = const [SelectionObject, _$SelectionObject];
  @override
  final String wireName = 'SelectionObject';

  @override
  Iterable serialize(Serializers serializers, SelectionObject object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.backCount != null) {
      result
        ..add('qBackCount')
        ..add(serializers.serialize(object.backCount,
            specifiedType: const FullType(int)));
    }
    if (object.forwardCount != null) {
      result
        ..add('qForwardCount')
        ..add(serializers.serialize(object.forwardCount,
            specifiedType: const FullType(int)));
    }
    if (object.selections != null) {
      result
        ..add('qSelections')
        ..add(serializers.serialize(object.selections,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NxCurrentSelectionItem)])));
    }

    return result;
  }

  @override
  SelectionObject deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SelectionObjectBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qBackCount':
          result.backCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qForwardCount':
          result.forwardCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qSelections':
          result.selections.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(NxCurrentSelectionItem)
              ])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$SelectionObject extends SelectionObject {
  @override
  final int backCount;
  @override
  final int forwardCount;
  @override
  final BuiltList<NxCurrentSelectionItem> selections;

  factory _$SelectionObject([void updates(SelectionObjectBuilder b)]) =>
      (new SelectionObjectBuilder()..update(updates)).build();

  _$SelectionObject._({this.backCount, this.forwardCount, this.selections})
      : super._();

  @override
  SelectionObject rebuild(void updates(SelectionObjectBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectionObjectBuilder toBuilder() =>
      new SelectionObjectBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SelectionObject) return false;
    return backCount == other.backCount &&
        forwardCount == other.forwardCount &&
        selections == other.selections;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, backCount.hashCode), forwardCount.hashCode),
        selections.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SelectionObject')
          ..add('backCount', backCount)
          ..add('forwardCount', forwardCount)
          ..add('selections', selections))
        .toString();
  }
}

class SelectionObjectBuilder
    implements Builder<SelectionObject, SelectionObjectBuilder> {
  _$SelectionObject _$v;

  int _backCount;
  int get backCount => _$this._backCount;
  set backCount(int backCount) => _$this._backCount = backCount;

  int _forwardCount;
  int get forwardCount => _$this._forwardCount;
  set forwardCount(int forwardCount) => _$this._forwardCount = forwardCount;

  ListBuilder<NxCurrentSelectionItem> _selections;
  ListBuilder<NxCurrentSelectionItem> get selections =>
      _$this._selections ??= new ListBuilder<NxCurrentSelectionItem>();
  set selections(ListBuilder<NxCurrentSelectionItem> selections) =>
      _$this._selections = selections;

  SelectionObjectBuilder();

  SelectionObjectBuilder get _$this {
    if (_$v != null) {
      _backCount = _$v.backCount;
      _forwardCount = _$v.forwardCount;
      _selections = _$v.selections?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectionObject other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SelectionObject;
  }

  @override
  void update(void updates(SelectionObjectBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SelectionObject build() {
    _$SelectionObject _$result;
    try {
      _$result = _$v ??
          new _$SelectionObject._(
              backCount: backCount,
              forwardCount: forwardCount,
              selections: _selections?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'selections';
        _selections?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SelectionObject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
