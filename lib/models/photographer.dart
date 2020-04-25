import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:photolocal/models/models.dart';

part 'photographer.g.dart';

abstract class Photographer implements Built<Photographer, PhotographerBuilder> {
  Photographer._();

  factory Photographer([updates(PhotographerBuilder b)]) = _$Photographer;

  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'userId')
  int get userId;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'inn')
  String get inn;

  @nullable
  @BuiltValueField(wireName: 'picture')
  String get picture;

  @nullable
  @BuiltValueField(wireName: 'photos')
  BuiltList<Photo> get photos;

  @nullable
  @BuiltValueField(wireName: 'rating')
  double get rating;

  @nullable
  @BuiltValueField(wireName: 'chips')
  BuiltList<String> get chips;

  @nullable
  @BuiltValueField(wireName: 'liveLocation')
  LatLng get liveLocation;

  static Serializer<Photographer> get serializer => _$photographerSerializer;
}
