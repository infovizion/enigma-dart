import 'dart:async';
import '../enigma/base_service.dart';
import '../enigma/enigma.dart';
import '../models.dart';
import '../serializers/json_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

/// This class describes all the methods that apply at dimension level.
/// The _handle_ member in the JSON request for all methods listed in this section is the handle of the dimension.
class GenericDimension extends BaseService {
  GenericDimension(Enigma enigma, int handle) : super(enigma, handle);

  String get serviceType => 'GenericDimension';

  /// Evaluates a dimension and displays its properties, including the dynamic properties.
  Future<GenericDimensionLayout> getLayout() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetLayout', __params);
    var __jsonData = rawResult['result']['qLayout'];
    var __dartData = fromJsonFullType<GenericDimensionLayout>(
        const FullType(GenericDimensionLayout), __jsonData);
    return __dartData;
  }

  /// Applies a patch to the properties of an object. Allows an update to some of the properties.
  /// <div class=tip>Applying a patch takes less time than resetting all the properties.</div>
  Future<void> applyPatches(List<NxPatch> patches) async {
    var __params = <String, dynamic>{};
    __params['qPatches'] = toJson(patches,
        specifiedType:
            const FullType(BuiltList, const [const FullType(NxPatch)]));
    var rawResult = await query('ApplyPatches', __params);
  }

  /// Sets some properties for a dimension.
  Future<void> setProperties(GenericDimensionProperties prop) async {
    var __params = <String, dynamic>{};
    __params['qProp'] =
        toJson(prop, specifiedType: const FullType(GenericDimensionProperties));
    var rawResult = await query('SetProperties', __params);
  }

  /// Shows the properties of an object.
  /// Returns the identifier and the definition of the dimension.
  /// <div class=note>If the member delta is set to true in the request object, only the delta is retrieved.</div>
  Future<GenericDimensionProperties> getProperties() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetProperties', __params);
    var __jsonData = rawResult['result']['qProp'];
    var __dartData = fromJsonFullType<GenericDimensionProperties>(
        const FullType(GenericDimensionProperties), __jsonData);
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

  /// Returns the definition of a dimension.
  ///
  /// The definition of the dimension is returned.
  Future<NxLibraryDimensionDef> getDimension() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetDimension', __params);
    var __jsonData = rawResult['result']['qDim'];
    var __dartData = fromJsonFullType<NxLibraryDimensionDef>(
        const FullType(NxLibraryDimensionDef), __jsonData);
    return __dartData;
  }

  /// Lists the linked objects to a generic object, a dimension or a measure.
  Future<BuiltList<NxLinkedObjectInfo>> getLinkedObjects() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('GetLinkedObjects', __params);
    var __jsonData = rawResult['result']['qItems'];
    var __dartData = fromJsonFullType<BuiltList<NxLinkedObjectInfo>>(
        const FullType(BuiltList, const [const FullType(NxLinkedObjectInfo)]),
        __jsonData);
    return __dartData;
  }

  /// Publishes a dimension.
  Future<void> publish() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('Publish', __params);
  }

  /// Unpublishes a dimension.
  Future<void> unPublish() async {
    var __params = <String, dynamic>{};
    var rawResult = await query('UnPublish', __params);
  }
}
