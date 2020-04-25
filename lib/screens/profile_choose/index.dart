import 'package:photolocal/theme/theme.dart';
import 'package:flutter/material.dart';

class ProfileChooseScreen extends StatefulWidget {
  @override
  _ProfileChooseScreenState createState() => _ProfileChooseScreenState();
}

class _ProfileChooseScreenState extends State<ProfileChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text("Boarding", style: PLStyle.text),
    );
  }
}
