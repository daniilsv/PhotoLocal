import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

part 'location.g.dart';

abstract class Location implements Built<Location, LocationBuilder> {
  Location._();

  factory Location([updates(LocationBuilder b)]) = _$Location;

  @nullable
  @BuiltValueField(wireName: 'type')
  String get type;

  @nullable
  @BuiltValueField(wireName: 'coordinates')
  LatLng get coordinates;

  static Serializer<Location> get serializer => _$locationSerializer;
}
