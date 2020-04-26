import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/components/image.dart';
import 'package:photolocal/theme/theme.dart';

class WallCard extends StatelessWidget {
  const WallCard({
    Key key,
    this.name,
    this.km,
    this.minutes,
    this.url,
    this.savedCount,
  }) : super(key: key);

  final String name;
  final int km;
  final int minutes;
  final String url;
  final int savedCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: PLImage(
                    url,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 125,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: PLStyle.create(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "$km км от вас",
                          style: PLStyle.create(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFA0A0A0),
                          ),
                        ),
                        Text(
                          "$minutes минут назад",
                          style: PLStyle.create(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFA0A0A0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: PLImage(url),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    EvaIcons.bookmarkOutline,
                    size: 28,
                    color: PLColors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    savedCount.toString(),
                    style: PLStyle.text.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Icon(
                EvaIcons.moreHorizotnal,
                size: 25,
                color: PLColors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
