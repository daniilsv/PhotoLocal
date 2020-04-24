import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';

class UserMessage extends StatelessWidget {
  UserMessage(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: PLBorders.all12,
            color: PLColors.secondary3,
          ),
          constraints: BoxConstraints(maxWidth: size.width * .8 - 32),
          child: Text(text, style: PLStyle.textMed, textAlign: TextAlign.start),
        ),
      ],
    );
  }
}
