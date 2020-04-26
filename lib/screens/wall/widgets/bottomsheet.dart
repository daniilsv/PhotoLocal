import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';

class WallBottomSheet extends StatelessWidget {
  const WallBottomSheet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(99),
                  color: Color(0xFF414141),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Ленты",
                style: PLStyle.header.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Свадьбы и портреты",
                  style: PLStyle.header.copyWith(
                    fontWeight: FontWeight.bold,
                    color: PLColors.accent,
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  size: 30,
                  color: PLColors.accent,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            height: 1,
            color: Color(0xFF363636),
          ),
          ...List.generate(
            1,
            (index) => GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  ["Интерьеры заводов"][index],
                  style: PLStyle.text.copyWith(fontSize: 20),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
        ],
      ),
    );
  }
}
