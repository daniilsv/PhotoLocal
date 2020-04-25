import 'package:photolocal/components/navigation_bar.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(0),
      body: Container(
        alignment: Alignment.center,
        child: Text("Main", style: PLStyle.text),
      ),
    );
  }
}
