import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tinder_image.g.dart';

abstract class TinderImage implements Built<TinderImage, TinderImageBuilder> {
  TinderImage._();

  factory TinderImage([updates(TinderImageBuilder b)]) = _$TinderImage;

  @nullable
  @BuiltValueField(wireName: 'image')
  String get image;

  @nullable
  @BuiltValueField(wireName: 'answer')
  bool get answer;

  static Serializer<TinderImage> get serializer => _$tinderImageSerializer;
}

///
///lovestory
///
