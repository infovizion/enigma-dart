/// This file was autogenerated

library nx_get_object_options;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
part 'nx_get_object_options.g.dart';

abstract class NxGetObjectOptions implements Built<NxGetObjectOptions, NxGetObjectOptionsBuilder> {

 static Serializer<NxGetObjectOptions> get serializer => _$nxGetObjectOptionsSerializer;

  /// List of object types.
  /// Original name: qTypes
  @nullable
  BuiltList<NxCell> get types;

  /// Set to true to include session objects.
  /// The default value is false.
  /// Original name: qIncludeSessionObjects
  @nullable
  bool get includeSessionObjects;

  /// Set of data.
  /// Original name: qData
  @nullable
  JsonObject get data;

  factory NxGetObjectOptions([updates(NxGetObjectOptionsBuilder b)]) = _$NxGetObjectOptions;

  factory NxGetObjectOptions.init({BuiltList<NxCell> types, bool includeSessionObjects, JsonObject data}) = _$NxGetObjectOptions._;

  NxGetObjectOptions._();
}
