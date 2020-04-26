import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'models.dart';

part 'wall_item.g.dart';

abstract class WallItem implements Built<WallItem, WallItemBuilder> {
  WallItem._();

  factory WallItem([updates(WallItemBuilder b)]) = _$WallItem;

  @nullable
  @BuiltValueField(wireName: 'photographer')
  Photographer get photographer;

  @nullable
  @BuiltValueField(wireName: 'photos')
  BuiltList<Photo> get photos;

  @nullable
  @BuiltValueField(wireName: 'likeCount')
  int get likeCount;

  static Serializer<WallItem> get serializer => _$wallItemSerializer;
}
