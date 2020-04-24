import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../theme/theme.dart';

class CategoriesPage extends StatefulWidget {
  CategoriesPage({
    Key key,
    @required this.changeSubmited,
  }) : super(key: key);

  final void Function(bool submited) changeSubmited;

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
      padding: EdgeInsets.symmetric(horizontal: 30),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 15,
            ),
            child: Text(
              "Выберите интересные вам жанры",
              style: PLStyle.title,
            ),
          ),
          Text(
            "После этого мы покажем вам фото из этих категорий, но вы сможете вернуться",
            style: PLStyle.text,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
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
                            bool submited = false;
                            for (bool i in chooseCategories) if (i) submited = i;
                            widget.changeSubmited(submited);
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
          ),
        ],
      ),
    );
  }
}
