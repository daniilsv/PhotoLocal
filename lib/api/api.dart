library api;

import 'dart:convert';

import 'package:photolocal/main.dart';
import 'package:dio/dio.dart';
import 'package:photolocal/global/config.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:photolocal/mock/photographers.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/models/serializers.dart';

part './auth.dart';
part './static.dart';
part './wall.dart';
part './photographer.dart';
part './chat.dart';
part './order.dart';
part './favorite.dart';
part './map.dart';

/// base Api class
/// Before using Api you must to:
/// initialize [Api] using [Api.init()]
/// flill [baseUrl] in Api class
///
/// Then you can use Api like: [Api.yourAwesomeMethod()]
///
/// {@category Network}
_parseAndDecode(String response) {
  return jsonDecode(response);
}

_parseJson(String text) {
  return foundation.compute(_parseAndDecode, text);
}

class Api {
  static Dio dio;

  static void init([String authToken]) {
    BaseOptions options = BaseOptions(
      baseUrl: Config.apiUrl,
      headers: {'authorization': authToken},
      connectTimeout: 10000,
      receiveTimeout: 10000,
    );
    dio = Dio(options);
    if (isInDebugMode)
      dio.interceptors
          .add(LogInterceptor(responseBody: true, responseHeader: false));
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (DioError error) {
          if (error.response == null) {
            /// странная херня. инета нет?
          } else if (error.response.statusCode == 502 ||
              error.response.statusCode == 404 ||
              error.response.statusCode == 500) {
            /// бэк пидор - бэк сломался
          } else if (error.response.statusCode >= 400) {}
        },
      ),
    );

    (dio.transformer as DefaultTransformer).jsonDecodeCallback = _parseJson;
  }
}
