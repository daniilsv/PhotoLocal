import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:provider/provider.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:cupertino_back_gesture/cupertino_back_gesture.dart';

import 'global/i18n.dart';
import 'mock/photographers.dart';
import 'providers/init.dart';
import 'screens/boarding/index.dart';
import 'screens/explore/index.dart';
import 'screens/main/index.dart';
import 'screens/personalization/index.dart';
import 'screens/photographer/index.dart';
import 'screens/splash/index.dart';

final bool isInDebugMode = true;
final globalNavigatorKey = GlobalKey<NavigatorState>();

void main() async {
  FlutterError.onError = (FlutterErrorDetails details) {
    if (isInDebugMode)
      FlutterError.dumpErrorToConsole(details);
    else
      Zone.current.handleUncaughtError(details.exception, details.stack);
  };

  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runZonedGuarded(() {
    startHome();
  }, (error, stackTrace) async {
    print('Caught error: $error');
    print(stackTrace);
  });
}

startHome() {
  runApp(
    BackGestureWidthTheme(
      backGestureWidth: BackGestureWidth.fraction(1 / 2),
      child: CupertinoApp(
        title: "PhotoLocal".i18n,
        navigatorKey: globalNavigatorKey,
        showSemanticsDebugger: false,
        debugShowCheckedModeBanner: false,
        theme: CupertinoThemeData(
          brightness: Brightness.dark,
          barBackgroundColor: PLColors.black,
          scaffoldBackgroundColor: PLColors.bg,
          primaryColor: PLColors.white,
          primaryContrastingColor: PLColors.white,
          textTheme: CupertinoTextThemeData(
            textStyle: PLStyle.text,
          ),
        ),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'),
          const Locale('ru', 'RU'),
        ],
        builder: (context, child) {
          ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
            return Container(
              color: Colors.black,
              child: Text(
                "Error".i18n,
                style: PLStyle.text,
              ),
            );
          };
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => InitProvider()),
            ],
            child: I18n(child: child),
          );
        },
        home: Consumer<InitProvider>(
          builder: (_, InitProvider p, __) {
            return PersonalizationScreen();
            switch (p.state) {
              case InitState.boarding:
                return BoardingScreen();
              case InitState.auth:
                return MainScreen();
              case InitState.inited:
                return MainScreen();
              case InitState.loading:
              default:
                return SplashScreen();
            }
          },
        ),
      ),
    ),
  );
}
