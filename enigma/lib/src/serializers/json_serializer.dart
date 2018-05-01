import 'serializers.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/serializer.dart';

final _standardJsonSerializer =
    (serializers.toBuilder()..addPlugin(new StandardJsonPlugin())).build();

toJson<T>(Object data, {FullType specifiedType}) {
  if (specifiedType == null) {
    specifiedType = new FullType(T);
  }
  var result =
      _standardJsonSerializer.serialize(data, specifiedType: specifiedType);
  return result;
}

T fromJson<T>(Type dataType, Object data) => _standardJsonSerializer
    .deserialize(data, specifiedType: new FullType(dataType)) as T;

T fromJsonFullType<T>(FullType dataType, Object data) =>
    _standardJsonSerializer.deserialize(data, specifiedType: dataType) as T;
