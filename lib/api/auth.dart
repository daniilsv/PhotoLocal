part of api;

class AuthApi {
  static Future sendCode(String phone) async {
    return Api.dio.post(
      "auth/sendCode",
      data: {
        "phone": phone,
      },
    );
  }

  static Future<Session> checkCode(String phone, String code) async {
    var res = await Api.dio.post(
      "auth/checkCode",
      data: {
        "phone": phone,
        "code": code,
      },
    );
    return serializers.deserializeWith(Session.serializer, res.data);
  }
}
