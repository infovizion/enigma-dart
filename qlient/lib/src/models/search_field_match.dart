/// This file was autogenerated

library search_field_match;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_cell.dart';
import 'package:built_collection/built_collection.dart';
part 'search_field_match.g.dart';

abstract class SearchFieldMatch implements Built<SearchFieldMatch, SearchFieldMatchBuilder> {

 static Serializer<SearchFieldMatch> get serializer => _$searchFieldMatchSerializer;

  /// Position of the field in the list of fields, starting from 0.
  /// The list of fields is defined in _qResults/qFieldNames_ and contains the search associations.
  /// Original name: qField
  @nullable
  int get field;

  /// Positions of the matching values in the search results.
  /// The maximum number of values in this list is defined by _qMaxNbrFieldMatches_ .
  /// Original name: qValues
  @nullable
  List<NxCell> get values;

  /// Positions of the search terms, starting from 0.
  /// Original name: qTerms
  @nullable
  List<NxCell> get terms;

  /// Number of search hits in the field.
  /// The number of values in _qValues_ and the value of _qNoOfMatches_ are equal if _qMaxNbrFieldMatches_ is -1.
  /// Original name: qNoOfMatches
  @nullable
  int get noOfMatches;

  factory SearchFieldMatch([updates(SearchFieldMatchBuilder b)]) = _$SearchFieldMatch;

  SearchFieldMatch._();
}
