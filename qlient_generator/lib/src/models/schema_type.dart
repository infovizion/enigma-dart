library schema_type;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schema_type.g.dart';

abstract class SchemaType implements Built<SchemaType, SchemaTypeBuilder> {

  static Serializer<SchemaType> get serializer => _$schemaTypeSerializer;
  @nullable
  String get description;

  @nullable
	String get name;

  @nullable
  bool get required;

  @nullable
  String get format;

  BuiltMap<String,SchemaType> get properties;

  @nullable
  SchemaType get schema;

  @nullable
  SchemaType get items;

  @nullable
  String get title;

  @BuiltValueField(wireName: '\$ref')
  @nullable
  String get ref;

  @BuiltValueField(wireName: 'type')
  @nullable
  String get jsonType;
  factory SchemaType([updates(SchemaTypeBuilder b)]) = _$SchemaType;


//  factory SchemaType({String description, String jsonType, String format, SchemaType items, String title, String ref}) = _$SchemaType._;
  SchemaType._();

}
  
 /*


 type Type struct {
	QlikExtensions
	AdditionalItems      *Type                   `json:"additionalItems,omitempty"`
	AdditionalProperties json.RawMessage         `json:"additionalProperties,omitempty"`
	AllOf                []*Type                 `json:"allOf,omitempty"`
	AnyOf                []*Type                 `json:"anyOf,omitempty"`
	BinaryEncoding       string                  `json:"binaryEncoding,omitempty"`
	Default              interface{}             `json:"default,omitempty"`
	Definitions          map[string]*Type        `json:"definitions,omitempty"`
	Dependencies         map[string]*Type        `json:"dependencies,omitempty"`
	Description          string                  `json:"description,omitempty"`
	Enum                 []interface{}           `json:"enum,omitempty"`
	ExclusiveMaximum     bool                    `json:"exclusiveMaximum,omitempty"`
	ExclusiveMinimum     bool                    `json:"exclusiveMinimum,omitempty"`
	Format               string                  `json:"format,omitempty"`
	Items                *Type                   `json:"items,omitempty"`
	Maximum              int                     `json:"maximum,omitempty"`
	MaxItems             int                     `json:"maxItems,omitempty"`
	MaxLength            int                     `json:"maxLength,omitempty"`
	MaxProperties        int                     `json:"maxProperties,omitempty"`
	Media                *Type                   `json:"media,omitempty"`
	Minimum              int                     `json:"minimum,omitempty"`
	MinItems             int                     `json:"minItems,omitempty"`
	MinLength            int                     `json:"minLength,omitempty"`
	MinProperties        int                     `json:"minProperties,omitempty"`
	MultipleOf           int                     `json:"multipleOf,omitempty"`
	Not                  *Type                   `json:"not,omitempty"`
	Name                 string                  `json:"name,omitempty"`
	OneOf                []*Type                 `json:"oneOf,omitempty"`
	Pattern              string                  `json:"pattern,omitempty"`
	PatternProperties    map[string]*Type        `json:"patternProperties,omitempty"`
	Properties           map[OrderAwareKey]*Type `json:"properties,omitempty"` // Special trick with the OrderAwareKey to retain the order of the properties
	Ref                  string                  `json:"$ref,omitempty"`
	Required             bool                    `json:"required,omitempty"`
	Title                string                  `json:"title,omitempty"`
	Type                 string                  `json:"type,omitempty"`
	UniqueItems          bool                    `json:"uniqueItems,omitempty"`
	Schema               *Type                   `json:"schema,omitempty"`
}
  */