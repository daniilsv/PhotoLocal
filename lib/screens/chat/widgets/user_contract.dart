import 'package:flutter/material.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/theme/theme.dart';

class UserContract extends StatefulWidget {
  UserContract(this.photographer, {Key key, @required this.accept}) : super(key: key);

  final Photographer photographer;
  final Function accept;

  @override
  _UserContractState createState() => _UserContractState();
}

class _UserContractState extends State<UserContract> {
  bool accepted = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4).add(EdgeInsets.only(right: 30)),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: PLBorders.all16,
        border: Border.all(color: Color(0xFF979797), width: 0.5),
      ),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "${widget.photographer.name} предлагает  вам съёмку на следующих условиях:",
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
          SizedBox(height: 20),
          Text(
            "5000 руб",
            style: PLStyle.button.copyWith(fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 16),
          Center(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                ///
              },
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Text(
                  accepted ? "Съёмка подтверждена" : "Изменить условия",
                  style: PLStyle.subheader.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                if (!accepted) {
                  accepted = true;
                  setState(() {});
                  widget.accept();
                }
              },
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Text(
                  accepted ? "Развернуть контракт" : "Согласиться",
                  style: PLStyle.subheader.copyWith(color: PLColors.accent),
                ),
              ),
            ),
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
