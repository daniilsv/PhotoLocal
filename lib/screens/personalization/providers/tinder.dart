import 'package:flutter/foundation.dart';
import 'package:photolocal/global/database.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/models/serializers.dart';
import 'package:sembast/sembast.dart';

enum TinderStatus { answering, loading, answered }

class TinderProvider with ChangeNotifier {
  static final TinderProvider _singleton = TinderProvider._internal();
  factory TinderProvider() => _singleton;

  List<TinderImage> tinderImages = [
    {
      "image":
          "https://sun9-48.userapi.com/kyfcmCVHmWZmlgh_6crn4hGULeGkzsnEglGQUw/tj08Mblmqwk.jpg"
    },
    {
      "image":
          "https://sun9-13.userapi.com/Chj5zTNVIvmgwF7UZ3XLqz76o43FbPC0WpRoug/M0f-mhSovS8.jpg"
    },
    {
      "image":
          "https://sun9-50.userapi.com/c629107/v629107914/3f9de/TmUlsK04qxw.jpg"
    },
  ]
      .map((item) => serializers.deserializeWith(TinderImage.serializer, item))
      .toList();
  int order = 0;
  TinderStatus status = TinderStatus.answering;
  double swipePercent = 0;

  TinderProvider._internal();

  answerTinder(int index, bool answer) {
    tinderImages[index].rebuild((_) => _..answer = answer);
    if (order + 1 == tinderImages.length) {
      status = TinderStatus.loading;
      notifyListeners();
      Future.delayed(Duration(seconds: 3), () {
        if (status != TinderStatus.answering) status = TinderStatus.answered;
        notifyListeners();
      });
    }
    var store = stringMapStoreFactory.store("blocs");
    store.record("tinderImages").put(DataBase.db, {
      "tinderImages": [
        ...tinderImages
            .map((_) => serializers.serializeWith(TinderImage.serializer, _))
      ],
    });
    order++;
    notifyListeners();
  }

  clearTinders() {
    for (int i = 0; i < tinderImages.length; i++)
      tinderImages[i].rebuild((_) => _..answer = null);
    order = 0;
    status = TinderStatus.answering;
    var store = stringMapStoreFactory.store("blocs");
    store.record("tinderImages").put(DataBase.db, {
      "tinderImages": tinderImages
          .map((_) => serializers.serializeWith(TinderImage.serializer, _)),
    });
    notifyListeners();
  }

  updatePercent(double x) {
    swipePercent = (x / 5.0).clamp(-1.0, 1.0);
    notifyListeners();
  }
}
