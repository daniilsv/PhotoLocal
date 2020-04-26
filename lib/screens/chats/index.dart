import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:photolocal/components/loading.dart';
import 'package:photolocal/components/navigation_bar.dart';
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
          bottomNavigationBar: NavigationBar(2),
          backgroundColor: PLColors.bg,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: ListView.builder(
              itemCount: provider.chats.length + (provider.isLoading ? 1 : 0),
              itemBuilder: (context, index) {
                if (provider.isLoading) return PLLoading(text: "");
                return Padding(
                  padding:
                      EdgeInsets.only(bottom: 20, top: index == 0 ? 20 : 0),
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (_) => ChatScreen(
                          chatProvider:
                              provider.getChatProvider(provider.chats[index]),
                        ),
                      ),
                    ),
                    child: ChatWidget(
                        photographer: provider.chats[index].photographer,
                        message:
                            (MessageBuilder()..message = "уле=еле").build(),
                        time: DateTime.now(),
                        order: index % 4 == 0
                            ? (OrderBuilder()..time = DateTime.now()).build()
                            : null),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
