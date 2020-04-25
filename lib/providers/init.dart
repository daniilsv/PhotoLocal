import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/main.dart';
import 'package:photolocal/api/api.dart';
import 'package:photolocal/global/database.dart';
import 'package:flutter/foundation.dart';
import 'package:photolocal/screens/main/index.dart';
import 'package:photolocal/screens/map/index.dart';
import 'package:photolocal/screens/splash/index.dart';
import 'package:sembast/sembast.dart';

enum InitState { loading, boarding, inited }

class InitProvider with ChangeNotifier {
  static final InitProvider _singleton = InitProvider._internal();
  factory InitProvider() => _singleton;
  InitProvider._internal();
  InitState state = InitState.loading;

  init() async {
    await DataBase().open();
    var store = stringMapStoreFactory.store("blocs");
    Map<String, dynamic> serialized;
    await Future.wait(<Future>[
      store
          .findFirst(DataBase.db, finder: Finder(filter: Filter.byKey("user")))
          .then((value) => serialized = value?.value),
      Future.delayed(Duration(seconds: 2)) // delay for nice splash
    ]);
    if (serialized == null) {
      Api.init();
      setState(InitState.boarding);
    } else {
      Api.init(""); //TODO: pass here some token
      setState(InitState.inited);
    }
  }

  setState(InitState _state) {
    state = _state;
    Widget home;
    switch (state) {
      case InitState.boarding:
        home = MapScreen();
        break;
      case InitState.inited:
        home = MainScreen();
        break;
      case InitState.loading:
      default:
        home = SplashScreen();
        return;
    }
    globalNavigatorKey.currentState.popUntil((route) => route.isFirst);
    globalNavigatorKey.currentState.pushReplacement(
      CupertinoPageRoute(builder: (c) => home),
    );
    notifyListeners();
  }

  void logout() {
    var store = stringMapStoreFactory.store("blocs");
    store.delete(DataBase.db);
    Api.init();
    setState(InitState.boarding);
    globalNavigatorKey.currentState.popUntil((route) => route.isFirst);
  }
}
