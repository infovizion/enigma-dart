/// This file was autogenerated

library generic_bookmark_layout;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_info.dart';
import 'nx_meta.dart';
import 'nx_bookmark.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'generic_bookmark_layout.g.dart';

/// Is the layout for _GenericBookmarkProperties_.
abstract class GenericBookmarkLayout
    implements Built<GenericBookmarkLayout, GenericBookmarkLayoutBuilder> {
  static Serializer<GenericBookmarkLayout> get serializer =>
      _$genericBookmarkLayoutSerializer;

  /// Information about the object.
  /// Original name: qInfo
  @nullable
  NxInfo get info;

  /// Information on publishing and permissions.
  /// Original name: qMeta
  @nullable
  NxMeta get meta;

  /// Information about the bookmark.
  /// Original name: qBookmark
  @nullable
  NxBookmark get bookmark;

  /// Original name: qFieldInfos
  @nullable
  BuiltList<NxCell> get fieldInfos;

  factory GenericBookmarkLayout([updates(GenericBookmarkLayoutBuilder b)]) =
      _$GenericBookmarkLayout;

  factory GenericBookmarkLayout.init(
      {NxInfo info,
      NxMeta meta,
      NxBookmark bookmark,
      BuiltList<NxCell> fieldInfos}) = _$GenericBookmarkLayout._;

  GenericBookmarkLayout._();
}
