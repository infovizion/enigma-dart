library library_data;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'library_data.g.dart';

abstract class LibraryData implements Built<LibraryData, LibraryDataBuilder> {

  static Serializer<LibraryData> get serializer => _$libraryDataSerializer;
  BuiltList<String> get importDirectives;
  factory LibraryData([updates(LibraryDataBuilder b)]) = _$LibraryData;
  LibraryData._();
}