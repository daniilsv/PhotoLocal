import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'models.dart';

part 'photographer_item.g.dart';

abstract class PhotographerItem
    implements Built<PhotographerItem, PhotographerItemBuilder> {
  PhotographerItem._();

  factory PhotographerItem([updates(PhotographerItemBuilder b)]) =
      _$PhotographerItem;

  @nullable
  @BuiltValueField(wireName: 'photographer')
  Photographer get photographer;

  @nullable
  @BuiltValueField(wireName: 'photos')
  BuiltList<Photo> get photos;

  @nullable
  @BuiltValueField(wireName: 'ordersCount')
  int get ordersCount;

  static Serializer<PhotographerItem> get serializer =>
      _$photographerItemSerializer;
}
