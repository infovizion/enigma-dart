// GENERATED CODE - DO NOT MODIFY BY HAND

part of layout;

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

Serializer<Layout> _$layoutSerializer = new _$LayoutSerializer();

class _$LayoutSerializer implements StructuredSerializer<Layout> {
  @override
  final Iterable<Type> types = const [Layout, _$Layout];
  @override
  final String wireName = 'Layout';

  @override
  Iterable serialize(Serializers serializers, Layout object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'prop',
      serializers.serialize(object.prop,
          specifiedType: const FullType(SchemaType)),
      'layout',
      serializers.serialize(object.layout,
          specifiedType: const FullType(SchemaType)),
    ];

    return result;
  }

  @override
  Layout deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new LayoutBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'prop':
          result.prop.replace(serializers.deserialize(value,
              specifiedType: const FullType(SchemaType)) as SchemaType);
          break;
        case 'layout':
          result.layout.replace(serializers.deserialize(value,
              specifiedType: const FullType(SchemaType)) as SchemaType);
          break;
      }
    }

    return result.build();
  }
}

class _$Layout extends Layout {
  @override
  final SchemaType prop;
  @override
  final SchemaType layout;

  factory _$Layout([void updates(LayoutBuilder b)]) =>
      (new LayoutBuilder()..update(updates)).build();

  _$Layout._({this.prop, this.layout}) : super._() {
    if (prop == null) throw new BuiltValueNullFieldError('Layout', 'prop');
    if (layout == null) throw new BuiltValueNullFieldError('Layout', 'layout');
  }

  @override
  Layout rebuild(void updates(LayoutBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LayoutBuilder toBuilder() => new LayoutBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Layout) return false;
    return prop == other.prop && layout == other.layout;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, prop.hashCode), layout.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Layout')
          ..add('prop', prop)
          ..add('layout', layout))
        .toString();
  }
}

class LayoutBuilder implements Builder<Layout, LayoutBuilder> {
  _$Layout _$v;

  SchemaTypeBuilder _prop;
  SchemaTypeBuilder get prop => _$this._prop ??= new SchemaTypeBuilder();
  set prop(SchemaTypeBuilder prop) => _$this._prop = prop;

  SchemaTypeBuilder _layout;
  SchemaTypeBuilder get layout => _$this._layout ??= new SchemaTypeBuilder();
  set layout(SchemaTypeBuilder layout) => _$this._layout = layout;

  LayoutBuilder();

  LayoutBuilder get _$this {
    if (_$v != null) {
      _prop = _$v.prop?.toBuilder();
      _layout = _$v.layout?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Layout other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Layout;
  }

  @override
  void update(void updates(LayoutBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Layout build() {
    _$Layout _$result;
    try {
      _$result =
          _$v ?? new _$Layout._(prop: prop.build(), layout: layout.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'prop';
        prop.build();
        _$failedField = 'layout';
        layout.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Layout', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
