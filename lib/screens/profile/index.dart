import 'package:photolocal/components/navigation_bar.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(3),
      body: Container(
        alignment: Alignment.center,
        child: Text("Main", style: PLStyle.text),
      ),
    );
  }
}
