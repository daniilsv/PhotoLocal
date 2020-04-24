import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';

class ChatInput extends StatefulWidget {
  ChatInput();
  @override
  _ChatInputState createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: PLColors.secondary2,
        borderRadius: PLBorders.all24,
      ),
      child: Row(
        children: [
          IconButton(
            color: PLColors.secondary,
            iconSize: 20,
            icon: Icon(Icons.attach_file),
            onPressed: () {
              ///
            },
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                isDense: true,
              ),
            ),
          ),
          IconButton(
            color: PLColors.secondary,
            iconSize: 20,
            icon: Icon(Icons.send),
            onPressed: () {
              ///
            },
          ),
        ],
      ),
    );
  }
}
