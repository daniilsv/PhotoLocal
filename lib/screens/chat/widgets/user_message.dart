import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';

class UserMessage extends StatelessWidget {
  UserMessage(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 4),
          padding: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius:
                text.contains("\n") ? PLBorders.all12 : PLBorders.all24,
            color: PLColors.secondary3,
          ),
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * .8 - 32),
          child: Text(text,
              style: PLStyle.textFieldHeader, textAlign: TextAlign.start),
        ),
      ],
    );
  }
}
