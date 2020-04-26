import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:photolocal/screens/chats/index.dart';
import 'package:photolocal/screens/map/index.dart';
import 'package:photolocal/screens/profile/index.dart';
import 'package:photolocal/screens/wall/index.dart';
import 'package:photolocal/theme/photo_local_icons.dart';
import 'package:photolocal/theme/theme.dart';

class NavigationBar extends StatelessWidget {
  NavigationBar(this.currentIndex);
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: PLColors.bg,
      selectedItemColor: PLColors.accent,
      unselectedItemColor: PLColors.grey,
      showUnselectedLabels: true,
      currentIndex: currentIndex,
      onTap: (index) {
        Widget screen;
        switch (index) {
          case 0:
            screen = WallScreen();
            break;
          case 1:
            screen = MapScreen();
            break;
          case 2:
            screen = ChatsScreen();
            break;
          case 3:
            screen = ProfileScreen();
            break;
        }
        Navigator.popUntil(context, (route) => route.isFirst);
        Navigator.pushReplacement(
          context,
          PageTransition(
            child: screen,
            type: PageTransitionType.fade,
          ),
        );
      },
      iconSize: 40,
      items: [
        BottomNavigationBarItem(
          backgroundColor: PLColors.bg,
          icon: Icon(PhotoLocal.wall),
          title: Text("Лента", style: PLStyle.textMed),
        ),
        BottomNavigationBarItem(
          backgroundColor: PLColors.bg,
          icon: Icon(PhotoLocal.map),
          title: Text("Карта", style: PLStyle.textMed),
        ),
        BottomNavigationBarItem(
          backgroundColor: PLColors.bg,
          icon: Icon(PhotoLocal.chat),
          title: Text("Сообщения", style: PLStyle.textMed),
        ),
        BottomNavigationBarItem(
          backgroundColor: PLColors.bg,
          icon: Icon(PhotoLocal.profile),
          title: Text("Профиль", style: PLStyle.textMed),
        ),
      ],
    );
  }
}
