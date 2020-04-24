import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';

class SelfMessage extends StatelessWidget {
  SelfMessage(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 4),
          padding: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: PLBorders.all12,
            color: PLColors.accent,
          ),
          constraints: BoxConstraints(maxWidth: size.width * .8 - 32),
          child: Text(text, style: PLStyle.textFieldHeader, textAlign: TextAlign.start),
        ),
      ],
    );
  }
}
