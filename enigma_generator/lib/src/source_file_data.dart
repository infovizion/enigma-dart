class TypeData {
  Set<String> importDirectives = new Set<String>();
  String jsonType;
  String dartType;
  String jsonName;
  bool isPrimitive = false;
  TypeData({this.jsonType, this.dartType});
  String toString() =>
      'TypeData(jsonType: $jsonType, dartType: $dartType, importDirectives: $importDirectives';
}

class DataObjectData {
  String name;
  String fileName;
  Map<String, TypeData> properties;
}
