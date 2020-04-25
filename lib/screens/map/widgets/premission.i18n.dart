import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static var _t = Translations("en_us") +
      {
        "en_us":
            "Please allow access to the geolocation for the application to work",
        "ru_ru":
            "Для работы приложения необходимо разрешить доступ к геопозиции",
      } +
      {
        "en_us": "Allow",
        "ru_ru": "Разрешить",
      };

  String get i18n => localize(this, _t);
}
