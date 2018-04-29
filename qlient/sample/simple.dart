import 'package:enigma/enigma.dart';

main() {
  var fieldAttributes = new FieldAttributes.init(nDec: 1, type: 'U');
  print(fieldAttributes);
  var fa1 = new FieldAttributes((b) => b..type = 'U');
  print(toJson<FieldAttributes>(fa1));
}

