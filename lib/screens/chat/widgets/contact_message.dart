import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';

class ContactMessage extends StatelessWidget {
  const ContactMessage({Key key}) : super(key: key);

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
          child: Text(
            "Вот контакты Анастасии:\n+7 921 420 13 37\n@kara.pridet\nvk.com/kara.ulova",
            style: PLStyle.text.copyWith(fontSize: 16),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
