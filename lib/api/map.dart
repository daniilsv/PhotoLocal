part of api;

class MapApi {
  static Future<List<Photographer>> inArea({
    double minLatitude,
    double minLongitude,
    double maxLatitude,
    double maxLongitude,
  }) async {
    var res = await Api.dio.get("user/map/inArea", queryParameters: {
      "minLatitude": minLatitude,
      "minLongitude": minLongitude,
      "maxLatitude": maxLatitude,
      "maxLongitude": maxLongitude,
    });
    return res.data
        .map((_) => serializers.deserializeWith(Photographer.serializer, _));
  }
}
