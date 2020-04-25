import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/screens/chat/index.dart';
import 'package:photolocal/screens/chat/widgets/app_bar.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:stacked/stacked.dart';

import 'providers/chats.dart';
import 'widgets/chat.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ChatsProvider>.reactive(
      viewModelBuilder: () => ChatsProvider(),
      builder: (context, provider, child) => SafeArea(
        top: true,
        child: Scaffold(
          appBar: ChatAppBar(),
          backgroundColor: PLColors.bg,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: ListView.builder(
              itemCount: provider.chats.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(bottom: 20, top: index == 0 ? 20 : 0),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (_) => ChatScreen(
                        photographer: provider.chats[index].photographer,
                      ),
                    ),
                  ),
                  child: ChatWidget(
                      photographer: provider.chats[index].photographer,
                      message: (MessageBuilder()..message = "уле=еле").build(),
                      time: DateTime.now(),
                      order: index % 4 == 0
                          ? (OrderBuilder()..time = DateTime.now()).build()
                          : null),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
