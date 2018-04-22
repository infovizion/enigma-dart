/// This file was autogenerated

library search_group;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'search_group.g.dart';

abstract class SearchGroup implements Built<SearchGroup, SearchGroupBuilder> {

 static Serializer<SearchGroup> get serializer => _$searchGroupSerializer;

  /// Identifier of the search group.
  /// Original name: qId
  @nullable
  int get id;

  /// Type of the search group.
  /// 
  /// One of:
  /// * DatasetType or DATASET_GROUP
  /// * GenericObjectsType or GENERIC_OBJECTS_GROUP
  /// Original name: qGroupType
  @nullable
  String get groupType;

  /// Indexes of the search terms that are included in the group. These search terms are related to the list of terms defined in _SearchResult.qSearchTerms_ .
  /// Original name: qSearchTermsMatched
  @nullable
  List<NxCell> get searchTermsMatched;

  /// Total number of distinct items in the search group.
  /// Original name: qTotalNumberOfItems
  @nullable
  int get totalNumberOfItems;

  /// List of items in the search group.
  /// The group items are numbered from the value of _SearchGroupOptions.qOffset_ to the value of _SearchGroupOptions.qOffset_ \+ _SearchGroupOptions.qCount_
  /// Original name: qItems
  @nullable
  List<NxCell> get items;

  factory SearchGroup([updates(SearchGroupBuilder b)]) = _$SearchGroup;

  SearchGroup._();
}
