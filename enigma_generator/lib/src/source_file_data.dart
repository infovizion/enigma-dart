class TypeData {
  Set<String> importDirectives = new Set<String>();
  String jsonType;
  String dartType;
  String specifiedType;
  String get paramType => dartType?.replaceFirst('BuiltList', 'List');
  String jsonName;
  String dartName;
  bool get isPrimitive =>
      dartType == 'String' ||
      dartType == 'bool' ||
      dartType == 'int' ||
      dartType == 'num' ||
      dartType == 'BuiltList<int>' ||
      dartType == 'BuiltList<String>' ||
      dartType == 'BuiltList<num>' ||
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
