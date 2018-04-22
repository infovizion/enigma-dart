/// This file was autogenerated

library nx_list_object_expression;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'nx_layout_errors.dart';
part 'nx_list_object_expression.g.dart';

abstract class NxListObjectExpression implements Built<NxListObjectExpression, NxListObjectExpressionBuilder> {

 static Serializer<NxListObjectExpression> get serializer => _$nxListObjectExpressionSerializer;

  /// Value of the expression.
  /// Original name: qExpr
  @nullable
  String get expr;

  /// Gives information on the error.
  /// This parameter is optional.
  /// Original name: qError
  @nullable
  NxLayoutErrors get error;

  factory NxListObjectExpression([updates(NxListObjectExpressionBuilder b)]) = _$NxListObjectExpression;

  NxListObjectExpression._();
}
