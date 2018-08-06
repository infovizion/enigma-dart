// GENERATED CODE - DO NOT MODIFY BY HAND

part of lineage_info;

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

Serializer<LineageInfo> _$lineageInfoSerializer = new _$LineageInfoSerializer();

class _$LineageInfoSerializer implements StructuredSerializer<LineageInfo> {
  @override
  final Iterable<Type> types = const [LineageInfo, _$LineageInfo];
  @override
  final String wireName = 'LineageInfo';

  @override
  Iterable serialize(Serializers serializers, LineageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.discriminator != null) {
      result
        ..add('qDiscriminator')
        ..add(serializers.serialize(object.discriminator,
            specifiedType: const FullType(String)));
    }
    if (object.statement != null) {
      result
        ..add('qStatement')
        ..add(serializers.serialize(object.statement,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  LineageInfo deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LineageInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'qDiscriminator':
          result.discriminator = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qStatement':
          result.statement = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LineageInfo extends LineageInfo {
  @override
  final String discriminator;
  @override
  final String statement;

  factory _$LineageInfo([void updates(LineageInfoBuilder b)]) =>
      (new LineageInfoBuilder()..update(updates)).build();

  _$LineageInfo._({this.discriminator, this.statement}) : super._();

  @override
  LineageInfo rebuild(void updates(LineageInfoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LineageInfoBuilder toBuilder() => new LineageInfoBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! LineageInfo) return false;
    return discriminator == other.discriminator && statement == other.statement;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, discriminator.hashCode), statement.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LineageInfo')
          ..add('discriminator', discriminator)
          ..add('statement', statement))
        .toString();
  }
}

class LineageInfoBuilder implements Builder<LineageInfo, LineageInfoBuilder> {
  _$LineageInfo _$v;

  String _discriminator;
  String get discriminator => _$this._discriminator;
  set discriminator(String discriminator) =>
      _$this._discriminator = discriminator;

  String _statement;
  String get statement => _$this._statement;
  set statement(String statement) => _$this._statement = statement;

  LineageInfoBuilder();

  LineageInfoBuilder get _$this {
    if (_$v != null) {
      _discriminator = _$v.discriminator;
      _statement = _$v.statement;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LineageInfo other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$LineageInfo;
  }

  @override
  void update(void updates(LineageInfoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LineageInfo build() {
    final _$result = _$v ??
        new _$LineageInfo._(discriminator: discriminator, statement: statement);
    replace(_$result);
    return _$result;
  }
}
