import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

part 'photographer.g.dart';

abstract class Photographer
    implements Built<Photographer, PhotographerBuilder> {
  Photographer._();

  factory Photographer([updates(PhotographerBuilder b)]) = _$Photographer;

  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'live_location')
  LatLng get liveLocation;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'orders_count')
  int get ordersCount;

  @nullable
  @BuiltValueField(wireName: 'picture')
  String get picture;

  @nullable
  @BuiltValueField(wireName: 'rating')
  double get rating;

  @nullable
  @BuiltValueField(wireName: 'user_id')
  int get userId;

  static Serializer<Photographer> get serializer => _$photographerSerializer;
}
