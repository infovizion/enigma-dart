/// This file was autogenerated

library search_char_range;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'search_char_range.g.dart';

abstract class SearchCharRange
    implements Built<SearchCharRange, SearchCharRangeBuilder> {
  static Serializer<SearchCharRange> get serializer =>
      _$searchCharRangeSerializer;

  /// Starting position of the match in the search result, starting from 0.
  /// Original name: qCharPos
  @nullable
  int get charPos;

  /// Length of the match in the search result.
  /// Original name: qCharCount
  @nullable
  int get charCount;

  /// Position of the term in the list of search terms, starting from 0.
  /// Original name: qTerm
  @nullable
  int get term;

  factory SearchCharRange([updates(SearchCharRangeBuilder b)]) =
      _$SearchCharRange;

  factory SearchCharRange.init({int charPos, int charCount, int term}) =
      _$SearchCharRange._;

  SearchCharRange._();
}
