import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class LatLngSerializer implements PrimitiveSerializer<LatLng> {
  final bool structured = false;
  @override
  final Iterable<Type> types = new BuiltList<Type>([LatLng]);

  @override
  Object serialize(Serializers serializers, LatLng latLng, {FullType specifiedType: FullType.unspecified}) {
    return [latLng.latitude.toString(), latLng.longitude.toString()];
  }

  @override
  LatLng deserialize(Serializers serializers, Object serialized, {FullType specifiedType: FullType.unspecified}) {
    List<dynamic> toSerialize = serialized as List<dynamic>;
    return LatLng(double.tryParse(toSerialize[0].toString()), double.tryParse(toSerialize[1].toString()));
  }

  @override
  String get wireName => 'coordinates';
}
