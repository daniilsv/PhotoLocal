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
    return (SessionBuilder()
          ..token =
              "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyIiwiaWQiOiIxIn0.qoUK_bUnSZkCE5kc8LokVU2XVF1mhTpJC8_97e5cHKk"
          ..user = (UserBuilder()
            ..id = 1
            ..name = "Юзер хороший"
            ..phone = "88005553535"))
        .build();
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
