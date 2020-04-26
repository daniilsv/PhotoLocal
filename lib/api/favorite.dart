part of api;

class FavoriteApi {
  static Future<List<PhotographerItem>> get() async {
    var res = await Api.dio.get("user/favorite/get");
    return res.data.map(
        (_) => serializers.deserializeWith(PhotographerItem.serializer, _));
  }

  static Future<bool> send({
    int photographerId,
    int photoId,
  }) async {
    var res = await Api.dio.post(
      "user/favorite/toggle",
      data: {
        "photographerId": photographerId,
        "photoId": photoId,
      },
    );
    return res.data as bool;
  }
}
