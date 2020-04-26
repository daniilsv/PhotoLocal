part of api;

class ChatApi {
  static Future<List<ChatItem>> all() async {
    return [
      (ChatItemBuilder()
            ..photographer = photographers[0].toBuilder()
            ..chat = (ChatBuilder()
              ..id = 1
              ..createdAt = DateTime.now()
              ..photographerId = "0"
              ..userId = "1")
            ..lastMessage = (MessageBuilder()
              ..chatId = 1
              ..createdAt = DateTime.now()
              ..message = "hello world"
              ..orderId = 1))
          .build()
    ];
    var res = await Api.dio.get("chat/all");
    return res.data
        .map((_) => serializers.deserializeWith(ChatItem.serializer, _));
  }

  static Future<List<Message>> get(
    int chatId, {
    int firstId = 0,
    int lastId = 0,
  }) async {
    return [];
    var res = await Api.dio.get(
      "chat/$chatId/get",
      queryParameters: {
        "firstId": firstId,
        "lastId": lastId,
      },
    );
    return res.data
        .map((_) => serializers.deserializeWith(Message.serializer, _));
  }

  static Future send(int chatId, String message) async {
    return Api.dio.post(
      "user/$chatId/send",
      data: {
        "message": message,
      },
    );
  }
}
