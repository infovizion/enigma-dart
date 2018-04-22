/// This file was autogenerated

library nx_tick_cell;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'nx_tick_cell.g.dart';

abstract class NxTickCell implements Built<NxTickCell, NxTickCellBuilder> {

 static Serializer<NxTickCell> get serializer => _$nxTickCellSerializer;

  /// Tick's label.
  /// Original name: qText
  @nullable
  String get text;

  /// Start value.
  /// Original name: qStart
  @nullable
  num get start;

  /// End value.
  /// Original name: qEnd
  @nullable
  num get end;

  factory NxTickCell([updates(NxTickCellBuilder b)]) = _$NxTickCell;

  NxTickCell._();
}
