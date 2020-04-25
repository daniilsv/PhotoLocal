import 'package:flutter/material.dart';
import 'package:photolocal/components/image.dart';
import 'package:photolocal/theme/theme.dart';

class PhotographTileWidget extends StatelessWidget {
  const PhotographTileWidget({
    Key key,
    this.withDivider = true,
  }) : super(key: key);

  final bool withDivider;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 56,
                height: 56,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: PLImage("https://sun9-50.userapi.com/c629107/v629107914/3f9de/TmUlsK04qxw.jpg"),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Анастасия Караулова",
                    style: PLStyle.subheader,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "5 совпадений",
                    style: PLStyle.secondary,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: List.generate(
              5,
              (index) => Container(
                padding: EdgeInsets.only(right: 8),
                height: 32,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.5),
                  child: PLImage(
                    "https://sun9-50.userapi.com/c629107/v629107914/3f9de/TmUlsK04qxw.jpg",
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          if (withDivider)
            Divider(
              color: PLColors.divider,
              height: 1.0,
            ),
        ],
      ),
    );
  }
}
