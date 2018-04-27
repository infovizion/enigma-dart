/// This file was autogenerated

library content_library_list;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'content_library_list.g.dart';

abstract class ContentLibraryList
    implements Built<ContentLibraryList, ContentLibraryListBuilder> {
  static Serializer<ContentLibraryList> get serializer =>
      _$contentLibraryListSerializer;

  /// Information about the content library.
  /// Original name: qItems
  @nullable
  BuiltList<NxCell> get items;

  factory ContentLibraryList([updates(ContentLibraryListBuilder b)]) =
      _$ContentLibraryList;

  factory ContentLibraryList.init({BuiltList<NxCell> items}) =
      _$ContentLibraryList._;

  ContentLibraryList._();
}
