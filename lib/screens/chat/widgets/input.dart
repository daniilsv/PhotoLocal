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
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child:
                  Icon(Icons.attach_file, color: PLColors.secondary, size: 20),
            ),
            onTap: () {
              ///
            },
          ),
          Expanded(
            child: TextField(
              style: PLStyle.textFieldHeader.copyWith(color: PLColors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
                isDense: true,
                hintText: "Сообщение",
                hintStyle:
                    PLStyle.textFieldHeader.copyWith(color: PLColors.secondary),
              ),
            ),
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.send, color: PLColors.secondary, size: 20),
            ),
            onTap: () {
              ///
            },
          ),
        ],
      ),
    );
  }
}
