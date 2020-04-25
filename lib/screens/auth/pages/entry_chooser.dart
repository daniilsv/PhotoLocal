import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class EntryChooserPage extends StatefulWidget {
  EntryChooserPage({
    Key key,
    this.next,
  }) : super(key: key);

  final Function next;

  @override
  _EntryChooserPageState createState() => _EntryChooserPageState();
}

class _EntryChooserPageState extends State<EntryChooserPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "PhotoLocal",
                  style: PLStyle.drukBig.copyWith(fontSize: 28.22),
                ),
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/images/entry_chooser.jpeg",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Photo by Andrei Morozov",
                    style: PLStyle.secondary.copyWith(
                      color: Color(0xFF818181),
                      fontFamily: "NewYorkRegularItalic",
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Лучшие\nфотографы\nрядом",
                  style: PLStyle.drukBig.copyWith(fontSize: 30.6),
                ),
              ),
              Text(
                "Подбери фотографа в соответствии со\nсвоим стилем и сотрудничай с ним\nбезопасно",
                style: PLStyle.textFieldHeader,
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: widget.next,
                child: Container(
                  width: MediaQuery.of(context).size.width - 60,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFF4966FF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        child: Icon(
                          EvaIcons.facebook,
                          size: 30,
                          color: PLColors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Войти через Facebook",
                        style: PLStyle.drukBig.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: widget.next,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: PLColors.white,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        child: Icon(
                          Icons.smartphone,
                          size: 24,
                          color: PLColors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Войти через телефон",
                        style: PLStyle.drukBig.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
