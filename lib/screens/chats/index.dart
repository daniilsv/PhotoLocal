import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/models/serializers.dart';
import 'package:photolocal/screens/chat/index.dart';
import 'package:photolocal/screens/chat/providers/chat.dart';
import 'package:photolocal/screens/chat/widgets/app_bar.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:stacked/stacked.dart';

import 'providers/chats.dart';
import 'widgets/chat.dart';

//TODO get info from back, make this screen
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
              itemCount: provider.photographers.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(bottom: 20, top: index == 0 ? 20 : 0),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (_) => ChatScreen(
                        photographer: provider.photographers[index],
                      ),
                    ),
                  ),
                  child: ChatWidget(
                      photographer: provider.photographers[index],
                      message: Message()..message = "уле=еле",
                      time: DateTime.now(),
                      order: index % 4 == 0
                          ? serializers.deserializeWith(Order.serializer, {"time": DateTime.now()})
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
