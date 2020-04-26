import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';

class HappenedMessage extends StatefulWidget {
  HappenedMessage({Key key, this.accept}) : super(key: key);

  final Function accept;

  @override
  _HappenedMessageState createState() => _HappenedMessageState();
}

class _HappenedMessageState extends State<HappenedMessage> {
  bool accepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 4),
          padding: EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 12,
          ),
          decoration: BoxDecoration(
            borderRadius: PLBorders.all16,
            border: Border.all(
              width: 0.5,
              color: Color(0xFF979797),
            ),
            color: Color(0xFF0F0F0F),
          ),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * .8 - 32,
          ),
          child: Column(
            children: [
              Text(
                "Состоялась ли съёмка?",
                style: PLStyle.text.copyWith(fontSize: 16),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      if (!accepted) {
                        accepted = true;
                        setState(() {});
                        widget.accept();
                      }
                    },
                    child: Text(
                      "Да",
                      style: PLStyle.accent,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    "Нет",
                    style: PLStyle.accent,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
