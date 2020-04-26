import 'package:page_transition/page_transition.dart';
import 'package:photolocal/components/navigation_bar.dart';
import 'package:photolocal/mock/generator.dart';
import 'package:photolocal/providers/init.dart';
import 'package:photolocal/screens/photographer/index.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:flutter/material.dart';

import 'widgets/bottomsheet.dart';
import 'widgets/wall_card.dart';

class WallScreen extends StatefulWidget {
  @override
  _WallScreenState createState() => _WallScreenState();
}

class _WallScreenState extends State<WallScreen> {
  var items = genWallItems();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PLColors.bg,
      bottomNavigationBar: NavigationBar(0),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => InitProvider().setState(InitState.wallCreate),
                    child: Icon(
                      Icons.add_circle_outline,
                      size: 24,
                      color: PLColors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(24)),
                        ),
                        elevation: 10,
                        backgroundColor: Color(0xFF0F0F0F),
                        builder: (context) => WallBottomSheet(),
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          "Свадьбы и портреты",
                          style: PLStyle.create(fontSize: 20).copyWith(
                            letterSpacing: -0.24,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5, left: 5),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            size: 25,
                            color: PLColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => InitProvider().setState(InitState.wallCreate),
                    child: Icon(
                      Icons.edit,
                      size: 26,
                      color: PLColors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: PhotographerScreen(genPhotographerItems()
                              .firstWhere((element) =>
                                  element.photographer.id ==
                                  items[index].photographer.id)),
                          type: PageTransitionType.fade,
                        ),
                      );
                    },
                    child: WallCard(
                      name: items[index].photographer.name,
                      km: 5,
                      minutes: 5,
                      savedCount: items[index].likeCount,
                      url: items[index].photos.first.url,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
