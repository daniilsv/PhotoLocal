import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'photo.g.dart';

abstract class Photo implements Built<Photo, PhotoBuilder> {
  Photo._();

  factory Photo([updates(PhotoBuilder b)]) = _$Photo;

  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'photographerId')
  int get photographerId;

  @nullable
  @BuiltValueField(wireName: 'categoryId')
  int get categoryId;

  @nullable
  @BuiltValueField(wireName: 'ordering')
  int get ordering;

  @nullable
  @BuiltValueField(wireName: 'url')
  String get url;

  static Serializer<Photo> get serializer => _$photoSerializer;
}
