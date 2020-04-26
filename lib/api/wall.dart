part of api;

class WallApi {
  static Future<List<Wall>> all() async {
    var res = await Api.dio.get("user/wall/all");
    return res.data.map((_) => serializers.deserializeWith(Wall.serializer, _));
  }

  static Future<List<WallItem>> get(int wallId, [int page = 0]) async {
    var res = await Api.dio.get(
      "user/wall/$wallId",
      queryParameters: {
        "page": page,
      },
    );
    return res.data
        .map((_) => serializers.deserializeWith(WallItem.serializer, _));
  }

  static Future<List<Wall>> create({
    String name,
    List<Category> categories,
  }) async {
    var res = await Api.dio.post(
      "user/wall/create",
      data: {
        "name": name,
        "categories": categories.map((_) => _.id),
      },
    );
    return res.data.map((_) => serializers.deserializeWith(Wall.serializer, _));
  }

  static Future<List<Wall>> edit({
    int wallId,
    String name,
    List<Category> categories,
  }) async {
    var res = await Api.dio.post(
      "user/wall/$wallId/edit",
      data: {
        "name": name,
        "categories": categories.map((_) => _.id),
      },
    );
    return res.data.map((_) => serializers.deserializeWith(Wall.serializer, _));
  }

  static Future push({
    int wallId,
    int photographerId,
    int photoId,
  }) async {
    return Api.dio.post(
      "user/wall/$wallId/push",
      data: {
        "photographerId": photographerId,
        "photoId": photoId,
      },
    );
  }
}
