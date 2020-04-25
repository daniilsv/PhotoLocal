import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

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

  //TODO: change to Photo
  @nullable
  @BuiltValueField(wireName: 'photos')
  BuiltList<String> get photos;

  //TODO: fix it. only for mock
  @nullable
  @BuiltValueField(wireName: 'category')
  String get category;
  // BuiltList<String> get category;

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
