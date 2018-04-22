/// This file was autogenerated

library value_expr;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'value_expr.g.dart';

abstract class ValueExpr implements Built<ValueExpr, ValueExprBuilder> {

 static Serializer<ValueExpr> get serializer => _$valueExprSerializer;

  /// Original name: qv
  @nullable
  String get v;

  factory ValueExpr([updates(ValueExprBuilder b)]) = _$ValueExpr;

  ValueExpr._();
}
