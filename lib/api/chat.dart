part of api;

class ChatApi {
  static Future<List<ChatItem>> all() async {
    var res = await Api.dio.get("chat/all");
    return res.data
        .map((_) => serializers.deserializeWith(ChatItem.serializer, _));
  }

  static Future<List<Message>> get(int chatId, [int lastId = 0]) async {
    var res = await Api.dio.get(
      "chat/$chatId/get",
      queryParameters: {
        "lastId": lastId,
      },
    );
    return res.data
        .map((_) => serializers.deserializeWith(Message.serializer, _));
  }

  static Future send(
    int chatId, {
    String message,
  }) async {
    return Api.dio.post(
      "user/$chatId/send",
      data: {
        "message": message,
      },
    );
  }
}
