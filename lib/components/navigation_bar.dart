import 'package:flutter/material.dart';
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
