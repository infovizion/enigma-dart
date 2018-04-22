/// This file was autogenerated

library rect;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'rect.g.dart';

abstract class Rect implements Built<Rect, RectBuilder> {

 static Serializer<Rect> get serializer => _$rectSerializer;

  /// Position from the left.
  /// Corresponds to the first column.
  /// Original name: qLeft
  @nullable
  int get left;

  /// Position from the top.
  /// Corresponds to the first row.
  /// Original name: qTop
  @nullable
  int get top;

  /// Number of columns in the page. The indexing of the columns may vary depending on whether the cells are expanded or not (parameter _qAlwaysFullyExpanded_ in _HyperCubeDef_ ).
  /// Original name: qWidth
  @nullable
  int get width;

  /// Number of rows or elements in the page. The indexing of the rows may vary depending on whether the cells are expanded or not (parameter _qAlwaysFullyExpanded_ in _HyperCubeDef_ ).
  /// Original name: qHeight
  @nullable
  int get height;

  factory Rect([updates(RectBuilder b)]) = _$Rect;

  Rect._();
}
