import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/main.dart';
import 'package:photolocal/api/api.dart';
import 'package:photolocal/global/database.dart';
import 'package:flutter/foundation.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/models/serializers.dart';
import 'package:photolocal/screens/auth/index.dart';
import 'package:photolocal/screens/map/index.dart';
import 'package:photolocal/screens/profile_choose/index.dart';
import 'package:photolocal/screens/splash/index.dart';
import 'package:photolocal/screens/wall/index.dart';
import 'package:photolocal/screens/wall_create/index.dart';
import 'package:sembast/sembast.dart';

enum InitState { splash, auth, profileChoose, wallCreate, inited }

class InitProvider with ChangeNotifier {
  static final InitProvider _singleton = InitProvider._internal();
  factory InitProvider() => _singleton;
  InitProvider._internal();
  InitState state = InitState.splash;

  Session session;

  init() async {
    await DataBase().open();
    var store = stringMapStoreFactory.store("blocs");
    Map<String, dynamic> serialized;
    await Future.wait(<Future>[
      store
          .findFirst(DataBase.db,
              finder: Finder(filter: Filter.byKey("session")))
          .then((value) => serialized = value?.value),
      Future.delayed(Duration(seconds: 2)) // delay for nice splash
    ]);
    if (serialized == null) {
      Api.init();
      setState(InitState.auth);
    } else {
      session = serializers.deserializeWith(Session.serializer, serialized);
      Api.init(session.token);
      setState(InitState.inited);
    }
  }

  setState(InitState _state) {
    state = _state;
    Widget home;
    switch (state) {
      case InitState.splash:
        home = SplashScreen();
        return;
      case InitState.auth:
        home = AuthScreen();
        break;
      case InitState.profileChoose:
        home = ProfileChooseScreen();
        break;
      case InitState.wallCreate:
        home = WallCreateScreen();
        break;
      case InitState.inited:
        home = WallScreen();
        break;
    }
    globalNavigatorKey.currentState.popUntil((route) => route.isFirst);
    globalNavigatorKey.currentState.pushReplacement(
      CupertinoPageRoute(builder: (c) => home),
    );
    notifyListeners();
  }

  void changeProfile() {
    setState(InitState.profileChoose);
  }

  void logout() {
    var store = stringMapStoreFactory.store("blocs");
    store.delete(DataBase.db);
    Api.init();
    setState(InitState.auth);
  }

  setSession(Session _session) async {
    session = _session;
    var store = stringMapStoreFactory.store("blocs");
    await store.record("session").put(
        DataBase.db, serializers.serializeWith(Session.serializer, session));
  }
}
