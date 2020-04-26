import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';

class AcceptMessage extends StatelessWidget {
  const AcceptMessage({Key key}) : super(key: key);

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
            borderRadius: PLBorders.all12,
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
            "🌟 ️Вы подтвердили съёмку",
            style: PLStyle.text.copyWith(color: Color(0xFF979797)),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
