import 'dart:math';

import 'package:photolocal/mock/photographers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:photolocal/mock/photos.dart';
import 'package:photolocal/models/models.dart';

List<PhotographerItem> _photographerItems;
List<PhotographerItem> genPhotographerItems() {
  if (_photographerItems == null) {
    _photographerItems = photographers
        .map((pg) => (PhotographerItemBuilder()
              ..photographer = pg.toBuilder()
              ..photos = ListBuilder<Photo>(
                photos.where((photo) => photo.photographerId == pg.id),
              )
              ..ordersCount = pg.ordersCount)
            .build())
        .toList();
    _photographerItems.shuffle();
  }
  return _photographerItems;
}

List<WallItem> _wallItems;
List<WallItem> genWallItems() {
  if (_wallItems == null) {
    _wallItems = photos
        .map((photo) => (WallItemBuilder()
              ..photographer = photographers
                  .firstWhere((element) => element.id == photo.photographerId)
                  .toBuilder()
              ..photos = ListBuilder<Photo>([photo])
              ..likeCount = Random().nextInt(40))
            .build())
        .toList();
    _wallItems.shuffle();
  }
  return _wallItems;
}
