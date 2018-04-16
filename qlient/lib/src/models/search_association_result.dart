/// This code was autogenerated
import 'package:built_value/built_value.dart';
import 'search_field_dictionary.dart';
import 'import_'search_match_combination_dart';.dart';

class SearchAssociationResult {
  /// List of the fields that contains search associations.
  List<String> fieldNames;
  /// List of the search terms.
  List<String> searchTerms;
  /// Information about the fields containing search hits.
  List<SearchFieldDictionary> fieldDictionaries;
  /// List of search results.
  /// The maximum number of search results in this list is set by _qPage/qCount_ .
  List<List<import 'search_match_combination.dart';>> searchTermsMatched;
  /// Total number of search results.
  /// This number is not limited by _qPage/qCount_ .
  int totalSearchResults;
}

