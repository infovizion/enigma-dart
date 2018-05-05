library check_expression_result;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_expression_result.g.dart';

abstract class CheckExpressionResult implements Built<CheckExpressionResult, CheckExpressionResultBuilder> {

  static Serializer<CheckExpressionResult> get serializer => _$checkExpressionResultSerializer;
  @nullable
  @BuiltValueField(wireName: 'qErrorMsg')
  String get errorMsg;

  @nullable
  @BuiltValueField(wireName: 'qBadFieldNames')
  BuiltList<String> get badFieldNames;
  
  @nullable
  @BuiltValueField(wireName: 'qDangerousFieldNames')
  BuiltList<String> get dangerousFieldNames;
  
  factory CheckExpressionResult([updates(CheckExpressionResultBuilder b)]) = _$CheckExpressionResult;
  
  CheckExpressionResult._();
}
  
  