// GENERATED CODE - DO NOT MODIFY BY HAND

part of nx_tick_cell;

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

Serializer<NxTickCell> _$nxTickCellSerializer = new _$NxTickCellSerializer();

class _$NxTickCellSerializer implements StructuredSerializer<NxTickCell> {
  @override
  final Iterable<Type> types = const [NxTickCell, _$NxTickCell];
  @override
  final String wireName = 'NxTickCell';

  @override
  Iterable serialize(Serializers serializers, NxTickCell object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('qText')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
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

    return result;
  }

  @override
  NxTickCell deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NxTickCellBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qText':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qStart':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'qEnd':
          result.end = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
      }
    }

    return result.build();
  }
}

class _$NxTickCell extends NxTickCell {
  @override
  final String text;
  @override
  final num start;
  @override
  final num end;

  factory _$NxTickCell([void updates(NxTickCellBuilder b)]) =>
      (new NxTickCellBuilder()..update(updates)).build();

  _$NxTickCell._({this.text, this.start, this.end}) : super._();

  @override
  NxTickCell rebuild(void updates(NxTickCellBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NxTickCellBuilder toBuilder() => new NxTickCellBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NxTickCell) return false;
    return text == other.text && start == other.start && end == other.end;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, text.hashCode), start.hashCode), end.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NxTickCell')
          ..add('text', text)
          ..add('start', start)
          ..add('end', end))
        .toString();
  }
}

class NxTickCellBuilder implements Builder<NxTickCell, NxTickCellBuilder> {
  _$NxTickCell _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  num _start;
  num get start => _$this._start;
  set start(num start) => _$this._start = start;

  num _end;
  num get end => _$this._end;
  set end(num end) => _$this._end = end;

  NxTickCellBuilder();

  NxTickCellBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _start = _$v.start;
      _end = _$v.end;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NxTickCell other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NxTickCell;
  }

  @override
  void update(void updates(NxTickCellBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NxTickCell build() {
    final _$result =
        _$v ?? new _$NxTickCell._(text: text, start: start, end: end);
    replace(_$result);
    return _$result;
  }
}
