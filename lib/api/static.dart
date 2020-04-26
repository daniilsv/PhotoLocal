part of api;

class StaticApi {
  static Future<List<Category>> categories() async {
    var res = await Api.dio.get("static/categories");
    return res.data
        .map((_) => serializers.deserializeWith(Category.serializer, _));
  }
}
