/// This file was autogenerated

library media_list;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'media_list.g.dart';

/// Lists the media files. Is the layout for _MediaListDef_.
/// <div class=note>This struct is deprecated.</div>
abstract class MediaList implements Built<MediaList, MediaListBuilder> {

 static Serializer<MediaList> get serializer => _$mediaListSerializer;

  /// Information about the list of media files.
  /// In Qlik Sense Desktop, the media files are retrieved from:
  /// _%userprofile%\Documents\Qlik\Sense\Content\Default_
  /// In Qlik Sense Enterprise, the media files are retrieved from:
  /// &lt;installation_directory&gt;\Qlik\Sense\Repository\Content\Default
  /// The default installation directory is _ProgramData_ .
  /// Original name: qItems
  @nullable
  List<NxCell> get items;

  factory MediaList([updates(MediaListBuilder b)]) = _$MediaList;

  MediaList._();
}
