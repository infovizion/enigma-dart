import 'dart:async';
import '../enigma/base_service.dart';
import '../enigma/enigma.dart';
import '../models.dart';
import '../serializers/json_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

/// This class describes all the methods that apply at measure level.
/// The _handle_ member in the JSON request for all methods listed in this section is the handle of the measure.
class GenericMeasure extends BaseService {
  GenericMeasure(Enigma enigma, int handle) : super(enigma, handle);

  String get serviceType => 'GenericMeasure';

  /// Evaluates a measure and displays its properties, including the dynamic properties.
  Future<GenericMeasureLayout> getLayout() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetLayout', __params);
    var __jsonData = rawResult['result']['qLayout'];
    var __dartData = fromJsonFullType<GenericMeasureLayout>(
        const FullType(GenericMeasureLayout), __jsonData);
    return __dartData;
  }

  /// Applies a patch to the properties of an object. Allows an update to some of the properties.
  /// <div class=tip>Applying a patch takes less time than resetting all the properties.</div>
  Future<void> applyPatches(NxPatch patches) async {
    var __params = <String, dynamic>{};
    __params['qPatches'] =
        toJson(patches, specifiedType: const FullType(NxPatch));
    var rawResult = await query('ApplyPatches', __params);
  }

  /// Sets some properties for a measure.
  Future<void> setProperties(GenericMeasureProperties prop) async {
    var __params = <String, dynamic>{};
    __params['qProp'] =
        toJson(prop, specifiedType: const FullType(GenericMeasureProperties));
    var rawResult = await query('SetProperties', __params);
  }

  /// Shows the properties of an object.
  /// Returns the identifier and the definition of the measure.
  /// <div class=note>If the member delta is set to true in the request object, only the delta is retrieved.</div>
  /// The following is always returned in the output:
  Future<GenericMeasureProperties> getProperties() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetProperties', __params);
    var __jsonData = rawResult['result']['qProp'];
    var __dartData = fromJsonFullType<GenericMeasureProperties>(
        const FullType(GenericMeasureProperties), __jsonData);
    return __dartData;
  }

  /// Returns the type and identifier of the object.
  Future<NxInfo> getInfo() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetInfo', __params);
    var __jsonData = rawResult['result']['qInfo'];
    var __dartData =
        fromJsonFullType<NxInfo>(const FullType(NxInfo), __jsonData);
    return __dartData;
  }

  /// Returns the definition of a measure.
  Future<NxLibraryMeasureDef> getMeasure() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetMeasure', __params);
    var __jsonData = rawResult['result']['qMeasure'];
    var __dartData = fromJsonFullType<NxLibraryMeasureDef>(
        const FullType(NxLibraryMeasureDef), __jsonData);
    return __dartData;
  }

  /// Lists the linked objects to a generic object, a dimension or a measure.
  Future<NxLinkedObjectInfo> getLinkedObjects() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetLinkedObjects', __params);
    var __jsonData = rawResult['result']['qItems'];
    var __dartData = fromJsonFullType<NxLinkedObjectInfo>(
        const FullType(NxLinkedObjectInfo), __jsonData);
    return __dartData;
  }

  /// Publishes a measure.
  Future<void> publish() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('Publish', __params);
  }

  /// Unpublishes a measure.
  Future<void> unPublish() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('UnPublish', __params);
  }
}
