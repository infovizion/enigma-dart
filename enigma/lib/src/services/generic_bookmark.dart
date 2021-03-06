import 'dart:async';
import '../enigma/base_service.dart';
import '../enigma/enigma.dart';
import '../models.dart';
import '../serializers/json_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

/// This class describes all the methods that apply at bookmark level.
/// The _handle_ member in the JSON request for all methods listed in this section is the handle of the bookmark.
class GenericBookmark extends BaseService {
  GenericBookmark(Enigma enigma, int handle) : super(enigma, handle);

  String get serviceType => 'GenericBookmark';

  /// Retrieves the values of a field.
  ///
  /// ### Fieldvalue
  /// <table>
  /// <tr>
  /// <th>Name</th>
  /// <th>Description</th>
  /// <th>Type</th>
  /// </tr>
  /// <tr>
  /// <td>qText</td>
  /// <td>Text related to the field value.</td>
  /// <td>String</td>
  /// </tr>
  /// <tr>
  /// <td>qIsNumeric</td>
  /// <td>Is set to true if the value is a numeric.<br>Default is false.</td>
  /// <td>Boolean</td>
  /// </tr>
  /// <tr>
  /// <td>qNumber</td>
  /// <td>Numeric value of the field.<br>This parameter is displayed if <i>qIsNumeric</i> is set to true.</td>
  /// <td>Double</td>
  /// </tr>
  /// </table>
  Future<BuiltList<FieldValue>> getFieldValues(
      String field, bool getExcludedValues, BookmarkFieldPage dataPage) async {
    var __params = <String, dynamic>{};
    __params['qField'] = field;
    __params['qGetExcludedValues'] = getExcludedValues;
    __params['qDataPage'] =
        toJson(dataPage, specifiedType: const FullType(BookmarkFieldPage));
    var rawResult = await query('GetFieldValues', __params);
    var __jsonData = rawResult['result']['qFieldValues'];
    var __dartData = fromJsonFullType<BuiltList<FieldValue>>(
        const FullType(BuiltList, const [const FullType(FieldValue)]),
        __jsonData);
    return __dartData;
  }

  /// Evaluates an object and displays its properties including the dynamic properties.
  /// If the member _delta_ is set to true in the request object, only the delta is evaluated.
  Future<GenericBookmarkLayout> getLayout() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetLayout', __params);
    var __jsonData = rawResult['result']['qLayout'];
    var __dartData = fromJsonFullType<GenericBookmarkLayout>(
        const FullType(GenericBookmarkLayout), __jsonData);
    return __dartData;
  }

  /// Applies a patch to the properties of an object. Allows an update to some of the properties.
  /// <div class=tip>Applying a patch takes less time than resetting all the properties.</div>
  Future<void> applyPatches(List<NxPatch> patches) async {
    var __params = <String, dynamic>{};
    __params['qPatches'] = toJson(BuiltList<NxPatch>(patches),
        specifiedType:
            const FullType(BuiltList, const [const FullType(NxPatch)]));
    var rawResult = await query('ApplyPatches', __params);
  }

  /// Sets some properties for a bookmark.
  Future<void> setProperties(GenericBookmarkProperties prop) async {
    var __params = <String, dynamic>{};
    __params['qProp'] =
        toJson(prop, specifiedType: const FullType(GenericBookmarkProperties));
    var rawResult = await query('SetProperties', __params);
  }

  /// Shows the properties of an object.
  /// <div class=note>If the member delta is set to true in the request object, only the delta is retrieved.</div>
  /// The following is always returned in the output:
  Future<GenericBookmarkProperties> getProperties() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetProperties', __params);
    var __jsonData = rawResult['result']['qProp'];
    var __dartData = fromJsonFullType<GenericBookmarkProperties>(
        const FullType(GenericBookmarkProperties), __jsonData);
    return __dartData;
  }

  /// Returns:
  /// * The type of the object.
  /// * The identifier of the object.
  Future<NxInfo> getInfo() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetInfo', __params);
    var __jsonData = rawResult['result']['qInfo'];
    var __dartData =
        fromJsonFullType<NxInfo>(const FullType(NxInfo), __jsonData);
    return __dartData;
  }

  /// Applies a bookmark.
  ///
  /// <div class=note>The operation is successful if **qSuccess** is set to true. </div>
  Future<bool> apply() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('Apply', __params);
    return rawResult['result']['qSuccess'];
  }

  /// Publishes a bookmark.
  Future<void> publish() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('Publish', __params);
  }

  /// Unpublishes a bookmark.
  Future<void> unPublish() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('UnPublish', __params);
  }
}
