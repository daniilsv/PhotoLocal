import 'package:flutter/material.dart';
import 'package:photolocal/components/image.dart';
import 'package:photolocal/components/navigation_bar.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/theme/theme.dart';

class PhotographerScreen extends StatefulWidget {
  PhotographerScreen(this.pgItem);
  final PhotographerItem pgItem;

  @override
  _PhotographerScreenState createState() => _PhotographerScreenState();
}

class _PhotographerScreenState extends State<PhotographerScreen> {
  PhotographerItem get pgItem => widget.pgItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PLColors.bg,
      bottomNavigationBar: NavigationBar(0),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 160,
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Positioned.fill(
                      child: PLImage(
                        pgItem.photos?.first?.url??"",
                        borderRadius: PLBorders.all12,
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 54,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back, color: PLColors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    Positioned(
                      bottom: -40,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.star, color: PLColors.white),
                                  SizedBox(width: 2),
                                  Text(pgItem.photographer.rating.toString(), style: PLStyle.text),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: PLColors.bg, width: 2),
                            ),
                            child: PLImage(
                              pgItem.photographer.picture,
                              width: 80,
                              height: 80,
                              borderRadius: 12,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(pgItem.photographer.ordersCount.toString(), style: PLStyle.textMed),
                                  Text(" съёмок", style: PLStyle.text),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Text(
                pgItem.photographer.name,
                textAlign: TextAlign.center,
                style: PLStyle.subheader,
              ),
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 16),
              //   child: Wrap(
              //     direction: Axis.horizontal,
              //     spacing: 6,
              //     children: [
              //       Chip(label: Text("хороший свет")),
              //       Chip(label: Text("работа с моделями")),
              //       Chip(label: Text("зеркалка")),
              //       Chip(label: Text("разные жанры")),
              //       Chip(label: Text("зеркалка")),
              //       Chip(label: Text("KPACUBO")),
              //     ],
              //   ),
              // ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                height: MediaQuery.of(context).size.width - 32,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  padding: EdgeInsets.zero,
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    Widget image = PLImage(
                      pgItem.photos[index].url,
                    );
                    if (index == 8 && pgItem.photos.length > 9)
                      image = Stack(
                        children: [
                          image,
                          Positioned.fill(
                              child: Container(
                                  color: PLColors.bg.withOpacity(0.3))),
                          Align(
                              alignment: Alignment.center,
                              child: Icon(Icons.add,
                                  color: PLColors.white, size: 42)),
                        ],
                      );
                    image = GestureDetector(
                      onTap: () {
                        print(index);
                      },
                      child: image,
                    );
                    return buildRadius(index, image);
                  },
                ),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  print("order");
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: PLColors.accent,
                    borderRadius: PLBorders.all12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.mail, color: PLColors.white, size: 42),
                      Text(
                        "Заказать съёмку",
                        style: PLStyle.button,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildRadius(int index, Widget child) {
    var radius = Radius.circular(12);
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: index <= 3 || index == 6 ? radius : Radius.zero,
        topRight: index <= 2 || index == 5 || index == 8 ? radius : Radius.zero,
        bottomRight: index >= 5 || index == 2 ? radius : Radius.zero,
        bottomLeft:
            index >= 6 || index == 3 || index == 0 ? radius : Radius.zero,
      ),
      child: child,
    );
  }
}
