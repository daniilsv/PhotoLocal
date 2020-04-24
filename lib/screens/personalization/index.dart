import 'package:flutter/material.dart';
import 'package:photolocal/screens/personalization/pages/categories.dart';

import '../../theme/theme.dart';
import 'pages/name.dart';
import 'pages/tinder.dart';

class PersonalizationScreen extends StatefulWidget {
  PersonalizationScreen({Key key}) : super(key: key);

  @override
  _PersonalizationScreenState createState() => _PersonalizationScreenState();
}

class _PersonalizationScreenState extends State<PersonalizationScreen> {
  PageController pageController = PageController(initialPage: 2);
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
                          submited = false;
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
                          submited = false;
                          setState(() {});
                          pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Opacity(
                          opacity: submited ? 1.0 : 0.4,
                          child: Text(
                            "Готово",
                            style: PLStyle.subheader,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.symmetric(
                //     horizontal: 30,
                //     vertical: 10,
                //   ),
                //   child: Text(
                //     [
                //       "Давайте создадим новую ленту фотографий",
                //       "Выберите интересные вам жанры",
                //       "Давайте персонализируем вашу ленту",
                //       "Вам должны понравиться эти фотографы",
                //     ][page],
                //     style: PLStyle.druk,
                //   ),
                // ),
                // Container(
                //   padding: EdgeInsets.symmetric(
                //     horizontal: 30,
                //   ),
                //   child: Text(
                //     [
                //       "В PhotoLocal у вас не одна лента, а несколько, ведь вы можете искать фотографа для разных целей.",
                //       "После этого мы покажем вам фото из этих категорий, но вы сможете вернуться",
                //       "Свайпайте, пока фотографии не станут похожими на то, что вы ищете",
                //       "А если не понравились, можете вернуться назад и поискать ещё",
                //     ][page],
                //     style: PLStyle.text,
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                Expanded(
                  child: ListView(
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
                      TinderPage(
                        changeSubmited: (value) {},
                      ),
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
