import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/components/image.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/theme/theme.dart';

class PhotographerScreen extends StatefulWidget {
  PhotographerScreen(this.photographer);
  final Photographer photographer;

  @override
  _PhotographerScreenState createState() => _PhotographerScreenState();
}

class _PhotographerScreenState extends State<PhotographerScreen> {
  Photographer get photographer => widget.photographer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PLColors.bg,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: PLColors.bg,
        selectedItemColor: PLColors.accent,
        unselectedItemColor: PLColors.grey,
        items: [
          BottomNavigationBarItem(
            backgroundColor: PLColors.bg,
            icon: Icon(Icons.fiber_smart_record),
            title: Text("Лента"),
          ),
          BottomNavigationBarItem(
            backgroundColor: PLColors.bg,
            icon: Icon(Icons.grid_on),
            title: Text("Сетка"),
          ),
          BottomNavigationBarItem(
            backgroundColor: PLColors.bg,
            icon: Icon(Icons.mail),
            title: Text("Сообщения"),
          ),
          BottomNavigationBarItem(
            backgroundColor: PLColors.bg,
            icon: Icon(Icons.face),
            title: Text("Профиль"),
          ),
        ],
      ),
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
                        photographer.photos.first,
                        borderRadius: BorderRadius.circular(12),
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
                                  Text(
                                    "4.8",
                                    style: PLStyle.create(
                                      color: PLColors.white,
                                    ),
                                  ),
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
                              photographer.profilePic,
                              width: 80,
                              height: 80,
                              borderRadius: 12,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                "8 съёмок",
                                style: PLStyle.create(color: PLColors.white),
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
                photographer.name,
                textAlign: TextAlign.center,
                style: PLStyle.create(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 6,
                  children: [
                    Chip(label: Text("хороший свет")),
                    Chip(label: Text("работа с моделями")),
                    Chip(label: Text("зеркалка")),
                    Chip(label: Text("разные жанры")),
                    Chip(label: Text("зеркалка")),
                    Chip(label: Text("KPACUBO")),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                height: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    Widget image = PLImage(
                      photographer.photos[index],
                    );
                    if (index == 8 && photographer.photos.length > 9)
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
                    return buildRadius(
                      index,
                      image,
                    );
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
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.mail, color: PLColors.white, size: 42),
                      Text(
                        "Заказать съёмку",
                        style: PLStyle.create(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
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
