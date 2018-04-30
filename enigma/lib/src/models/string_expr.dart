/// This file was autogenerated

library string_expr;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'string_expr.g.dart';

abstract class StringExpr implements Built<StringExpr, StringExprBuilder> {
  static Serializer<StringExpr> get serializer => _$stringExprSerializer;

  /// Original name: qv
  @nullable
  @BuiltValueField(wireName: 'qv')
  String get v;

  factory StringExpr([updates(StringExprBuilder b)]) = _$StringExpr;

  factory StringExpr.init({String v}) = _$StringExpr._;

  StringExpr._();
}
