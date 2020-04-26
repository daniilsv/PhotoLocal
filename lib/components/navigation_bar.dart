import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/screens/chats/index.dart';
import 'package:photolocal/screens/map/index.dart';
import 'package:photolocal/screens/profile/index.dart';
import 'package:photolocal/screens/wall/index.dart';
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
        Navigator.pushAndRemoveUntil(
          context,
          CupertinoPageRoute(
            builder: (c) => screen,
          ),
          (route) => route.isFirst,
        );
      },
      items: [
        BottomNavigationBarItem(
          backgroundColor: PLColors.bg,
          icon: Icon(Icons.fiber_smart_record),
          title: Text("Лента", style: PLStyle.textMed),
        ),
        BottomNavigationBarItem(
          backgroundColor: PLColors.bg,
          icon: Icon(Icons.grid_on),
          title: Text("Сетка", style: PLStyle.textMed),
        ),
        BottomNavigationBarItem(
          backgroundColor: PLColors.bg,
          icon: Icon(Icons.mail),
          title: Text("Сообщения", style: PLStyle.textMed),
        ),
        BottomNavigationBarItem(
          backgroundColor: PLColors.bg,
          icon: Icon(Icons.face),
          title: Text("Профиль", style: PLStyle.textMed),
        ),
      ],
    );
  }
}
