import 'package:flutter/material.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/theme/theme.dart';

class UserContract extends StatelessWidget {
  UserContract(this.photographer);
  final Photographer photographer;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: PLBorders.all16,
        border: Border.all(color: PLColors.accent, width: 0.5),
      ),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "${photographer.name} предлагает  вам съёмку на следующих условиях:",
            style: PLStyle.subheader.copyWith(fontSize: 18),
          ),
          SizedBox(height: 24),
          Text(
            "Художественный портрет\n10 фото с обработкой\nНет фото без обработки\nВ студии “Aqua”",
            style: PLStyle.create(fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            "Фотограф имеет право:",
            style: PLStyle.create(fontSize: 12),
          ),
          Text(
            "Публиковать фото в портфолио\nПубликовать фото в любых источниках",
            style: PLStyle.create(fontSize: 12),
          ),
          SizedBox(height: 24),
          Text(
            "5000 руб",
            style: PLStyle.button.copyWith(fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: (){
                  ///
                },
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    "Изменить условия",
                    style: PLStyle.button.copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: (){
                  ///
                },
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    "Согласиться",
                    style: PLStyle.button.copyWith(
                        fontWeight: FontWeight.w700, color: PLColors.accent),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
