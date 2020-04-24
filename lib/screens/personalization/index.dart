import 'package:flutter/material.dart';
import 'package:photolocal/screens/personalization/pages/categories.dart';

import '../../theme/theme.dart';
import '../../theme/theme.dart';

class PersonalizationScreen extends StatefulWidget {
  PersonalizationScreen({Key key}) : super(key: key);

  @override
  _PersonalizationScreenState createState() => _PersonalizationScreenState();
}

class _PersonalizationScreenState extends State<PersonalizationScreen> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          color: PLColors.bg,
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color: PLColors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "К категориям",
                            style: PLStyle.subheader,
                          ),
                        ],
                      ),
                      Text(
                        "Готово",
                        style: PLStyle.subheader,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Text(
                    "Давайте персонализируем вашу ленту",
                    style: PLStyle.title,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Text(
                    "После этого мы покажем вам фото из этих категорий, но вы сможете вернуться",
                    style: PLStyle.text,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView(
                    controller: pageController,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoriesPage(),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
