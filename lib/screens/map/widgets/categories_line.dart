import 'package:flutter/material.dart';
import 'package:photolocal/mock/categories.dart';
import 'package:photolocal/providers/map_photographer.dart';
import 'package:provider/provider.dart';

import 'badge.dart';

class CategoriesLine extends StatefulWidget {
  CategoriesLine({Key key}) : super(key: key);

  @override
  _CategoriesLineState createState() => _CategoriesLineState();
}

class _CategoriesLineState extends State<CategoriesLine> {
  List<bool> choosed = [];

  @override
  void initState() {
    choosed = List.generate(categories.length, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 5),
          scrollDirection: Axis.horizontal,
          child: Consumer<MapPhotographerProvider>(
            builder: (_, provider, child) => Row(
              children: <Widget>[
                for (int i = 0; i < categories.length; i++)
                  BadgeWidget(
                    text: categories[i].name,
                    choosed: choosed[i],
                    onTap: () {
                      choosed[i] = !choosed[i];
                      setState(
                        () {},
                      );
                    },
                  ),
              ],
            ),
          ),
        ));
  }
}
