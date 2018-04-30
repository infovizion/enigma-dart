// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

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

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Layout.serializer)
      ..add(LibraryData.serializer)
      ..add(Method.serializer)
      ..add(Schema.serializer)
      ..add(SchemaType.serializer)
      ..add(Service.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SchemaType)]),
          () => new ListBuilder<SchemaType>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SchemaType)]),
          () => new ListBuilder<SchemaType>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(Method)]),
          () => new MapBuilder<String, Method>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Layout)]),
          () => new ListBuilder<Layout>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(SchemaType)]),
          () => new MapBuilder<String, SchemaType>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(SchemaType)]),
          () => new MapBuilder<String, SchemaType>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(Service)]),
          () => new MapBuilder<String, Service>()))
    .build();
