/// This file was autogenerated

library child_list;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'child_list.g.dart';

/// Lists the children of a generic object. Is the layout for _ChildListDef_.
/// <div class=note>ChildList is used by the _GetLayout Method_ to list the children of a generic object. </div>
abstract class ChildList implements Built<ChildList, ChildListBuilder> {

 static Serializer<ChildList> get serializer => _$childListSerializer;

  /// Information about the items in the app object.
  /// Original name: qItems
  @nullable
  List<NxCell> get items;

  factory ChildList([updates(ChildListBuilder b)]) = _$ChildList;

  ChildList._();
}
