// GENERATED CODE - DO NOT MODIFY BY HAND

part of schema_type;

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

Serializer<SchemaType> _$schemaTypeSerializer = new _$SchemaTypeSerializer();

class _$SchemaTypeSerializer implements StructuredSerializer<SchemaType> {
  @override
  final Iterable<Type> types = const [SchemaType, _$SchemaType];
  @override
  final String wireName = 'SchemaType';

  @override
  Iterable serialize(Serializers serializers, SchemaType object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'properties',
      serializers.serialize(object.properties,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(SchemaType)])),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.required != null) {
      result
        ..add('required')
        ..add(serializers.serialize(object.required,
            specifiedType: const FullType(bool)));
    }
    if (object.format != null) {
      result
        ..add('format')
        ..add(serializers.serialize(object.format,
            specifiedType: const FullType(String)));
    }
    if (object.schema != null) {
      result
        ..add('schema')
        ..add(serializers.serialize(object.schema,
            specifiedType: const FullType(SchemaType)));
    }
    if (object.items != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType: const FullType(SchemaType)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.ref != null) {
      result
        ..add('\$ref')
        ..add(serializers.serialize(object.ref,
            specifiedType: const FullType(String)));
    }
    if (object.jsonType != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.jsonType,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  SchemaType deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SchemaTypeBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'required':
          result.required = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'format':
          result.format = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'properties':
          result.properties.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(SchemaType)
              ])) as BuiltMap);
          break;
        case 'schema':
          result.schema.replace(serializers.deserialize(value,
              specifiedType: const FullType(SchemaType)) as SchemaType);
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(SchemaType)) as SchemaType);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '\$ref':
          result.ref = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.jsonType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SchemaType extends SchemaType {
  @override
  final String description;
  @override
  final String name;
  @override
  final bool required;
  @override
  final String format;
  @override
  final BuiltMap<String, SchemaType> properties;
  @override
  final SchemaType schema;
  @override
  final SchemaType items;
  @override
  final String title;
  @override
  final String ref;
  @override
  final String jsonType;

  factory _$SchemaType([void updates(SchemaTypeBuilder b)]) =>
      (new SchemaTypeBuilder()..update(updates)).build();

  _$SchemaType._(
      {this.description,
      this.name,
      this.required,
      this.format,
      this.properties,
      this.schema,
      this.items,
      this.title,
      this.ref,
      this.jsonType})
      : super._() {
    if (properties == null)
      throw new BuiltValueNullFieldError('SchemaType', 'properties');
  }

  @override
  SchemaType rebuild(void updates(SchemaTypeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SchemaTypeBuilder toBuilder() => new SchemaTypeBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SchemaType) return false;
    return description == other.description &&
        name == other.name &&
        required == other.required &&
        format == other.format &&
        properties == other.properties &&
        schema == other.schema &&
        items == other.items &&
        title == other.title &&
        ref == other.ref &&
        jsonType == other.jsonType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, description.hashCode),
                                        name.hashCode),
                                    required.hashCode),
                                format.hashCode),
                            properties.hashCode),
                        schema.hashCode),
                    items.hashCode),
                title.hashCode),
            ref.hashCode),
        jsonType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SchemaType')
          ..add('description', description)
          ..add('name', name)
          ..add('required', required)
          ..add('format', format)
          ..add('properties', properties)
          ..add('schema', schema)
          ..add('items', items)
          ..add('title', title)
          ..add('ref', ref)
          ..add('jsonType', jsonType))
        .toString();
  }
}

class SchemaTypeBuilder implements Builder<SchemaType, SchemaTypeBuilder> {
  _$SchemaType _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  bool _required;
  bool get required => _$this._required;
  set required(bool required) => _$this._required = required;

  String _format;
  String get format => _$this._format;
  set format(String format) => _$this._format = format;

  MapBuilder<String, SchemaType> _properties;
  MapBuilder<String, SchemaType> get properties =>
      _$this._properties ??= new MapBuilder<String, SchemaType>();
  set properties(MapBuilder<String, SchemaType> properties) =>
      _$this._properties = properties;

  SchemaTypeBuilder _schema;
  SchemaTypeBuilder get schema => _$this._schema ??= new SchemaTypeBuilder();
  set schema(SchemaTypeBuilder schema) => _$this._schema = schema;

  SchemaTypeBuilder _items;
  SchemaTypeBuilder get items => _$this._items ??= new SchemaTypeBuilder();
  set items(SchemaTypeBuilder items) => _$this._items = items;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _ref;
  String get ref => _$this._ref;
  set ref(String ref) => _$this._ref = ref;

  String _jsonType;
  String get jsonType => _$this._jsonType;
  set jsonType(String jsonType) => _$this._jsonType = jsonType;

  SchemaTypeBuilder();

  SchemaTypeBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _name = _$v.name;
      _required = _$v.required;
      _format = _$v.format;
      _properties = _$v.properties?.toBuilder();
      _schema = _$v.schema?.toBuilder();
      _items = _$v.items?.toBuilder();
      _title = _$v.title;
      _ref = _$v.ref;
      _jsonType = _$v.jsonType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SchemaType other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SchemaType;
  }

  @override
  void update(void updates(SchemaTypeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SchemaType build() {
    _$SchemaType _$result;
    try {
      _$result = _$v ??
          new _$SchemaType._(
              description: description,
              name: name,
              required: required,
              format: format,
              properties: properties.build(),
              schema: _schema?.build(),
              items: _items?.build(),
              title: title,
              ref: ref,
              jsonType: jsonType);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'properties';
        properties.build();
        _$failedField = 'schema';
        _schema?.build();
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SchemaType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
