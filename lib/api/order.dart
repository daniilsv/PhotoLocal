part of api;

class OrderApi {
  static Future<int> send(Order order) async {
    var res = await Api.dio.post(
      "order/create",
      data: serializers.serializeWith(Order.serializer, order),
    );
    return res.data as int;
  }
}
