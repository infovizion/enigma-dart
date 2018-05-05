library get_tables_and_keys_result;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import '../models/table_record.dart';
import '../models/source_key_record.dart';
part 'get_tables_and_keys_result.g.dart';

abstract class GetTablesAndKeysResult implements Built<GetTablesAndKeysResult, GetTablesAndKeysResultBuilder> {

  static Serializer<GetTablesAndKeysResult> get serializer => _$getTablesAndKeysResultSerializer;
  BuiltList<TableRecord> get qtr;

  BuiltList<SourceKeyRecord> get qk;

  factory GetTablesAndKeysResult([updates(GetTablesAndKeysResultBuilder b)]) = _$GetTablesAndKeysResult;
  GetTablesAndKeysResult._();
}
  
  