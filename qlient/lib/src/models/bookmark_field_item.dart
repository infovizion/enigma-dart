/// This file was autogenerated

library bookmark_field_item;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'field_def_ex.dart';
import 'select_info.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'bookmark_field_item.g.dart';

abstract class BookmarkFieldItem implements Built<BookmarkFieldItem, BookmarkFieldItemBuilder> {

 static Serializer<BookmarkFieldItem> get serializer => _$bookmarkFieldItemSerializer;

  /// Name and type of the field.
  /// Original name: qDef
  @nullable
  FieldDefEx get def;

  /// Indicates if the field is locked.
  /// Default is false.
  /// Original name: qLocked
  @nullable
  bool get locked;

  /// Information on the selections criteria.
  /// Original name: qSelectInfo
  @nullable
  SelectInfo get selectInfo;

  /// Original name: qValues
  @nullable
  List<NxCell> get values;

  /// List of excluded values.
  /// Either the list of selected values or the list of excluded values is displayed.
  /// Original name: qExcludedValues
  @nullable
  List<NxCell> get excludedValues;

  /// If set to true, selections within a list object are made in AND mode; If you have a list object that lists all customers, by selecting Customer 1 and Customer 2 while in and-mode, all records that are associated with Customer 1 **and** Customer 2 are selected.
  /// The default value is false; selections within a list object are made in OR mode. If you have a list object that lists all customers, by selecting Customer 1 and Customer 2 while in or-mode, all records that are associated with either Customer 1 **or** Customer 2 are selected.
  /// This parameter is not returned if set to false.
  /// Original name: qAndMode
  @nullable
  bool get andMode;

  /// If set to true, the field has always one selection (not 0 and not more than 1). If another value is selected, the previous one is unselected.
  /// The default value is false. This parameter is not returned if set to false.
  /// Original name: qOneAndOnlyOne
  @nullable
  bool get oneAndOnlyOne;

  factory BookmarkFieldItem([updates(BookmarkFieldItemBuilder b)]) = _$BookmarkFieldItem;

  BookmarkFieldItem._();
}
