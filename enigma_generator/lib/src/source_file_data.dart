class TypeData {
  Set<String> importDirectives = new Set<String>();
  String jsonType;
  String dartType;
  String jsonName;
  String dartName;
  bool get isPrimitive =>
      dartType == 'String' ||
      dartType == 'bool' ||
      dartType == 'int' ||
      dartType == 'num' ||
      dartType == 'double';
  TypeData({this.jsonType, this.dartType});
  String toString() =>
      'TypeData(jsonType: $jsonType, dartType: $dartType, importDirectives: $importDirectives';
}

class DataObjectData {
  String name;
  String fileName;
  Map<String, TypeData> properties;
}
