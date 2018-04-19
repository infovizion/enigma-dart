/// This code was autogenerated
import 'package:built_value/built_value.dart';


class Function {
  /// Name of the script function.
  String name;
  /// Group of the script function.
  /// 
  /// One of:
  /// * ALL or FUNC_GROUP_ALL
  /// * U or FUNC_GROUP_UNKNOWN
  /// * NONE or FUNC_GROUP_NONE
  /// * AGGR or FUNC_GROUP_AGGR
  /// * NUM or FUNC_GROUP_NUMERIC
  /// * RNG or FUNC_GROUP_RANGE
  /// * EXP or FUNC_GROUP_EXPONENTIAL_AND_LOGARITHMIC
  /// * TRIG or FUNC_GROUP_TRIGONOMETRIC_AND_HYPERBOLIC
  /// * FIN or FUNC_GROUP_FINANCIAL
  /// * MATH or FUNC_GROUP_MATH_CONSTANT_AND_PARAM_FREE
  /// * COUNT or FUNC_GROUP_COUNTER
  /// * STR or FUNC_GROUP_STRING
  /// * MAPP or FUNC_GROUP_MAPPING
  /// * RCRD or FUNC_GROUP_INTER_RECORD
  /// * CND or FUNC_GROUP_CONDITIONAL
  /// * LOG or FUNC_GROUP_LOGICAL
  /// * NULL or FUNC_GROUP_NULL
  /// * SYS or FUNC_GROUP_SYSTEM
  /// * FILE or FUNC_GROUP_FILE
  /// * TBL or FUNC_GROUP_TABLE
  /// * DATE or FUNC_GROUP_DATE_AND_TIME
  /// * NUMI or FUNC_GROUP_NUMBER_INTERPRET
  /// * FRMT or FUNC_GROUP_FORMATTING
  /// * CLR or FUNC_GROUP_COLOR
  /// * RNK or FUNC_GROUP_RANKING
  /// * GEO or FUNC_GROUP_GEO
  /// * EXT or FUNC_GROUP_EXTERNAL
  String group;
  /// Signature of the script function.
  /// Gives general information about the function.
  String signature;
}

