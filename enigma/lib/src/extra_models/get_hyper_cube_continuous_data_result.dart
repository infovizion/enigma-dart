library get_hyper_cube_continuous_data_result;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import '../models/nx_axis_data.dart';
part 'get_hyper_cube_continuous_data_result.g.dart';

abstract class GetHyperCubeContinuousDataResult implements Built<GetHyperCubeContinuousDataResult, GetHyperCubeContinuousDataResultBuilder> {

  static Serializer<GetHyperCubeContinuousDataResult> get serializer => _$getHyperCubeContinuousDataResultSerializer;

  @nullable
  @BuiltValueField(wireName: 'qDataPages') 
  BuiltList get dataPages;

  @nullable
  @BuiltValueField(wireName: 'qAxisData') 
  NxAxisData get axisData;

  factory GetHyperCubeContinuousDataResult([updates(GetHyperCubeContinuousDataResultBuilder b)]) = _$GetHyperCubeContinuousDataResult;
  GetHyperCubeContinuousDataResult._();
}
  
  