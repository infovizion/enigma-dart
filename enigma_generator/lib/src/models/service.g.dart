// GENERATED CODE - DO NOT MODIFY BY HAND

part of service;

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

Serializer<Service> _$serviceSerializer = new _$ServiceSerializer();

class _$ServiceSerializer implements StructuredSerializer<Service> {
  @override
  final Iterable<Type> types = const [Service, _$Service];
  @override
  final String wireName = 'Service';

  @override
  Iterable serialize(Serializers serializers, Service object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'methods',
      serializers.serialize(object.methods,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(Method)])),
      'layouts',
      serializers.serialize(object.layouts,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Layout)])),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Service deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ServiceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'methods':
          result.methods.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(Method)
              ])) as BuiltMap);
          break;
        case 'layouts':
          result.layouts.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Layout)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Service extends Service {
  @override
  final String description;
  @override
  final BuiltMap<String, Method> methods;
  @override
  final BuiltList<Layout> layouts;

  factory _$Service([void updates(ServiceBuilder b)]) =>
      (new ServiceBuilder()..update(updates)).build();

  _$Service._({this.description, this.methods, this.layouts}) : super._() {
    if (methods == null)
      throw new BuiltValueNullFieldError('Service', 'methods');
    if (layouts == null)
      throw new BuiltValueNullFieldError('Service', 'layouts');
  }

  @override
  Service rebuild(void updates(ServiceBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceBuilder toBuilder() => new ServiceBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Service) return false;
    return description == other.description &&
        methods == other.methods &&
        layouts == other.layouts;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, description.hashCode), methods.hashCode), layouts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Service')
          ..add('description', description)
          ..add('methods', methods)
          ..add('layouts', layouts))
        .toString();
  }
}

class ServiceBuilder implements Builder<Service, ServiceBuilder> {
  _$Service _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  MapBuilder<String, Method> _methods;
  MapBuilder<String, Method> get methods =>
      _$this._methods ??= new MapBuilder<String, Method>();
  set methods(MapBuilder<String, Method> methods) => _$this._methods = methods;

  ListBuilder<Layout> _layouts;
  ListBuilder<Layout> get layouts =>
      _$this._layouts ??= new ListBuilder<Layout>();
  set layouts(ListBuilder<Layout> layouts) => _$this._layouts = layouts;

  ServiceBuilder();

  ServiceBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _methods = _$v.methods?.toBuilder();
      _layouts = _$v.layouts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Service other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Service;
  }

  @override
  void update(void updates(ServiceBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Service build() {
    _$Service _$result;
    try {
      _$result = _$v ??
          new _$Service._(
              description: description,
              methods: methods.build(),
              layouts: layouts.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'methods';
        methods.build();
        _$failedField = 'layouts';
        layouts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Service', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
