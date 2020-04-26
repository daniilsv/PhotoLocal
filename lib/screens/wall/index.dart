import 'package:photolocal/components/navigation_bar.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:flutter/material.dart';

class WallScreen extends StatefulWidget {
  @override
  _WallScreenState createState() => _WallScreenState();
}

class _WallScreenState extends State<WallScreen> {
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
