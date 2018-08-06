// GENERATED CODE - DO NOT MODIFY BY HAND

part of size;

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

Serializer<Size> _$sizeSerializer = new _$SizeSerializer();

class _$SizeSerializer implements StructuredSerializer<Size> {
  @override
  final Iterable<Type> types = const [Size, _$Size];
  @override
  final String wireName = 'Size';

  @override
  Iterable serialize(Serializers serializers, Size object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.cx != null) {
      result
        ..add('qcx')
        ..add(serializers.serialize(object.cx,
            specifiedType: const FullType(int)));
    }
    if (object.cy != null) {
      result
        ..add('qcy')
        ..add(serializers.serialize(object.cy,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  Size deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SizeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qcx':
          result.cx = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qcy':
          result.cy = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Size extends Size {
  @override
  final int cx;
  @override
  final int cy;

  factory _$Size([void updates(SizeBuilder b)]) =>
      (new SizeBuilder()..update(updates)).build();

  _$Size._({this.cx, this.cy}) : super._();

  @override
  Size rebuild(void updates(SizeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SizeBuilder toBuilder() => new SizeBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Size) return false;
    return cx == other.cx && cy == other.cy;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, cx.hashCode), cy.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Size')..add('cx', cx)..add('cy', cy))
        .toString();
  }
}

class SizeBuilder implements Builder<Size, SizeBuilder> {
  _$Size _$v;

  int _cx;
  int get cx => _$this._cx;
  set cx(int cx) => _$this._cx = cx;

  int _cy;
  int get cy => _$this._cy;
  set cy(int cy) => _$this._cy = cy;

  SizeBuilder();

  SizeBuilder get _$this {
    if (_$v != null) {
      _cx = _$v.cx;
      _cy = _$v.cy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Size other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Size;
  }

  @override
  void update(void updates(SizeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Size build() {
    final _$result = _$v ?? new _$Size._(cx: cx, cy: cy);
    replace(_$result);
    return _$result;
  }
}
