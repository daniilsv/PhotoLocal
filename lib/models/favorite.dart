import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favorite.g.dart';

abstract class Favorite implements Built<Favorite, FavoriteBuilder> {
  Favorite._();

  factory Favorite([updates(FavoriteBuilder b)]) = _$Favorite;

  @nullable
  @BuiltValueField(wireName: 'userId')
  int get userId;

  @nullable
  @BuiltValueField(wireName: 'photographerId')
  int get photographerId;

  @nullable
  @BuiltValueField(wireName: 'photoId')
  int get photoId;

  static Serializer<Favorite> get serializer => _$favoriteSerializer;
}
