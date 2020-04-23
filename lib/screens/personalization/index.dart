import 'package:flutter/material.dart';

class PersonalizationScreen extends StatefulWidget {
  PersonalizationScreen({Key key}) : super(key: key);

  @override
  _PersonalizationScreenState createState() => _PersonalizationScreenState();
}

class _PersonalizationScreenState extends State<PersonalizationScreen> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_back),
                        Text("К категориям"),
                      ],
                    ),
                    Text("Готово"),
                  ],
                ),
                Text("Давайте персонализируем вашу ленту"),
                Text("После этого мы покажем вам фото из этих категорий, но вы сможете вернуться"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
