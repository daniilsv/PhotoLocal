import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'photographer.g.dart';

abstract class Photographer
    implements Built<Photographer, PhotographerBuilder> {
  Photographer._();

  factory Photographer([updates(PhotographerBuilder b)]) = _$Photographer;

  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'username')
  String get username;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'category')
  String get category;

  @nullable
  @BuiltValueField(wireName: 'photos')
  BuiltList<String> get photos;

  @nullable
  @BuiltValueField(wireName: 'profilePic')
  String get profilePic;

  static Serializer<Photographer> get serializer => _$photographerSerializer;
}
