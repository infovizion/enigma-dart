/// This code was autogenerated
//import 'package:built_value/built_value.dart';
import 'nx_cell.dart';

class SearchGroupItemMatch {
  /// Search match value.
  /// Value of the search group item.
  /// If the match is found in a field, it corresponds to the value of the field.
  /// If the match is found in a generic object property, it corresponds to the property value.
  /// Original name: qText
  String text;
  /// List of ranges.
  /// For example, if the search terms are Price and Make, and the search group item value is Make by Price vs Mileage, then there are two ranges: one for Price and one for Make.
  /// Original name: qRanges
  List<NxCell> ranges;
  /// Provides detail of the match as requested by the user in _SearchObjectsOptions.qAttributes_ or _SearchCombinationOptions.qAttributes_
  /// If the user requests _SearchObjects_ or _SearchResults_ with an empty _qAttributes_ option, the outputted _qAttributes_ is returned empty.
  /// For _SearchObjects_ requested with _qProperty_ , the _SearchGroupItemMatch.qAttributes_ return value contains _[“qProperty”, "qMetaDef/title”]_ if the match has been found in the title of the item. For dimension values, the returned _qProperty_ will be _“*”_ .
  /// For _SearchResults_ requested with _qNum_ , the _SearchGroupItemMatch.qAttributes_ return value contains _["qNum", N]_ where _N_ is the numeric value of the element or _NaN_ if the value is not numeric.
  /// For _SearchResults_ requested with _qElemNum_ , the _SearchGroupItemMatch.qAttributes_ return value contains _["qElemNum", N]_ where _N_ is the value index of the element.
  /// Original name: qAttributes
  List<NxCell> attributes;
}

