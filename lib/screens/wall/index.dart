import 'package:photolocal/components/navigation_bar.dart';
import 'package:photolocal/providers/init.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:flutter/material.dart';

import 'widgets/bottomsheet.dart';
import 'widgets/wall_card.dart';

class WallScreen extends StatefulWidget {
  @override
  _WallScreenState createState() => _WallScreenState();
}

class _WallScreenState extends State<WallScreen> {
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
                          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
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
                itemBuilder: (context, index) {
                  return WallCard(
                    name: "Станислава Викторова",
                    km: 5,
                    minutes: 5,
                    savedCount: 14,
                    url:
                        "https://instagram.frix2-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/c0.129.1034.1034a/s640x640/94011600_685952345524211_1845270508491306997_n.jpg?_nc_ht=instagram.frix2-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=n0cT8oDG44MAX8uLSTc&oh=5a9d43dab72cfc5308986e39ef43cde1&oe=5EC9D4BD",
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
