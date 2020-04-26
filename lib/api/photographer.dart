part of api;

class PhotographerApi {
  static Future<PhotographerItem> get(int photographerId) async {
    var res = await Api.dio.get("user/photographer/$photographerId");
    return serializers.deserializeWith(PhotographerItem.serializer, res.data);
  }
}
