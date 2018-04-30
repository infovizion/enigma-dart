/// This file was autogenerated

library database_owner;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
part 'database_owner.g.dart';

abstract class DatabaseOwner
    implements Built<DatabaseOwner, DatabaseOwnerBuilder> {
  static Serializer<DatabaseOwner> get serializer => _$databaseOwnerSerializer;

  /// Name of the owner.
  /// Original name: qName
  @nullable
  @BuiltValueField(wireName: 'qName')
  String get name;

  factory DatabaseOwner([updates(DatabaseOwnerBuilder b)]) = _$DatabaseOwner;

  factory DatabaseOwner.init({String name}) = _$DatabaseOwner._;

  DatabaseOwner._();
}
