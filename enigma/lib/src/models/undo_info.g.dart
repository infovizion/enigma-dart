// GENERATED CODE - DO NOT MODIFY BY HAND

part of undo_info;

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

Serializer<UndoInfo> _$undoInfoSerializer = new _$UndoInfoSerializer();

class _$UndoInfoSerializer implements StructuredSerializer<UndoInfo> {
  @override
  final Iterable<Type> types = const [UndoInfo, _$UndoInfo];
  @override
  final String wireName = 'UndoInfo';

  @override
  Iterable serialize(Serializers serializers, UndoInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.undoCount != null) {
      result
        ..add('qUndoCount')
        ..add(serializers.serialize(object.undoCount,
            specifiedType: const FullType(int)));
    }
    if (object.redoCount != null) {
      result
        ..add('qRedoCount')
        ..add(serializers.serialize(object.redoCount,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  UndoInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UndoInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qUndoCount':
          result.undoCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qRedoCount':
          result.redoCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$UndoInfo extends UndoInfo {
  @override
  final int undoCount;
  @override
  final int redoCount;

  factory _$UndoInfo([void updates(UndoInfoBuilder b)]) =>
      (new UndoInfoBuilder()..update(updates)).build();

  _$UndoInfo._({this.undoCount, this.redoCount}) : super._();

  @override
  UndoInfo rebuild(void updates(UndoInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UndoInfoBuilder toBuilder() => new UndoInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! UndoInfo) return false;
    return undoCount == other.undoCount && redoCount == other.redoCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, undoCount.hashCode), redoCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UndoInfo')
          ..add('undoCount', undoCount)
          ..add('redoCount', redoCount))
        .toString();
  }
}

class UndoInfoBuilder implements Builder<UndoInfo, UndoInfoBuilder> {
  _$UndoInfo _$v;

  int _undoCount;
  int get undoCount => _$this._undoCount;
  set undoCount(int undoCount) => _$this._undoCount = undoCount;

  int _redoCount;
  int get redoCount => _$this._redoCount;
  set redoCount(int redoCount) => _$this._redoCount = redoCount;

  UndoInfoBuilder();

  UndoInfoBuilder get _$this {
    if (_$v != null) {
      _undoCount = _$v.undoCount;
      _redoCount = _$v.redoCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UndoInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$UndoInfo;
  }

  @override
  void update(void updates(UndoInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UndoInfo build() {
    final _$result =
        _$v ?? new _$UndoInfo._(undoCount: undoCount, redoCount: redoCount);
    replace(_$result);
    return _$result;
  }
}
