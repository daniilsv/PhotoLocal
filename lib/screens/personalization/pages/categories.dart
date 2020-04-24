import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../theme/theme.dart';
import '../../../theme/theme.dart';

class CategoriesPage extends StatefulWidget {
  CategoriesPage({Key key}) : super(key: key);

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List<String> categories = [
    "Свадьба",
    "Индустриальные",
    "Портрет",
    "Fashion",
    "Творчество",
    "Архитектура",
  ];

  List<bool> chooseCategories;

  @override
  void initState() {
    chooseCategories = List.generate(
      categories.length,
      (index) => false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: AnimationLimiter(
        child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 800),
              child: SlideAnimation(
                horizontalOffset: MediaQuery.of(context).size.width,
                child: SlideAnimation(
                  child: GestureDetector(
                    onTap: () {
                      chooseCategories[index] = !chooseCategories[index];
                      setState(() {});
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 15,
                          ),
                          margin: EdgeInsets.only(top: 8),
                          decoration: BoxDecoration(
                            color: chooseCategories[index] ? PLColors.white : PLColors.secondary3,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            categories[index],
                            style: chooseCategories[index] ? PLStyle.headerBlack : PLStyle.header,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
