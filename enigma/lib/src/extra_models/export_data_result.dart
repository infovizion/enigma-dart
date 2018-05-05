library export_data_result;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_data_result.g.dart';

abstract class ExportDataResult implements Built<ExportDataResult, ExportDataResultBuilder> {

  static Serializer<ExportDataResult> get serializer => _$exportDataResultSerializer;
  @nullable 
  @BuiltValueField(wireName: 'qUrl')
  String get url;
  @nullable
  @BuiltValueField(wireName: 'qWarnings')
  BuiltList<String> get warninings;
  factory ExportDataResult([updates(ExportDataResultBuilder b)]) = _$ExportDataResult;
  ExportDataResult._();
}
  
  