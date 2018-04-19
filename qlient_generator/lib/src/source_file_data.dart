class TypeData {
  Set<String> importDirectives = new Set<String>();
  String jsonType;
  String dartType;
  String name;
  String jsonName;
  bool isPrimitive; 
}

class DataObjectData {
  String name;
  String fileName;
  Map<String, TypeData> properties; 
}