import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/screens/personalization/pages/categories.dart';
import 'package:photolocal/screens/photographer/index.dart';

import '../../theme/theme.dart';
import 'pages/name.dart';
import 'pages/result.dart';
import 'pages/tinder.dart';

class PersonalizationScreen extends StatefulWidget {
  PersonalizationScreen({Key key}) : super(key: key);

  @override
  _PersonalizationScreenState createState() => _PersonalizationScreenState();
}

class _PersonalizationScreenState extends State<PersonalizationScreen> {
  PageController pageController = PageController(initialPage: 0);
  int page = 0;
  bool submited = false;

  @override
  void initState() {
    pageController.addListener(() {
      page = pageController.page.floor();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
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
                      GestureDetector(
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          if (page <= 2) submited = false;
                          setState(() {});
                          pageController.previousPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: PLColors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          if (page == 3) {
                            Navigator.of(context).pushReplacement(
                              CupertinoPageRoute(builder: (_) => PhotographerScreen(Photographer())),
                            );
                          }
                          if (page == 0) submited = false;
                          setState(() {});
                          pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Opacity(
                          opacity: submited ? 1.0 : 0.4,
                          child: Text(
                            (page ?? 0) < 2 ? "Далее" : (page == 2 ? "Результаты" : "Готово"),
                            style: PLStyle.subheader,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller: pageController,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      NamePage(
                        changeSubmited: (bool value) {
                          submited = value;
                          setState(() {});
                        },
                      ),
                      CategoriesPage(
                        changeSubmited: (bool value) {
                          submited = value;
                          setState(() {});
                        },
                      ),
                      TinderPage(),
                      ResultPage(),
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
