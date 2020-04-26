import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/components/loading.dart';
import 'package:photolocal/components/navigation_bar.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/screens/chat/index.dart';
import 'package:photolocal/screens/chat/widgets/app_bar.dart';
import 'package:photolocal/screens/public_chat/index.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:stacked/stacked.dart';

import 'providers/chats.dart';
import 'widgets/chat.dart';
import 'widgets/safe_contract.dart';

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
          body: SafeArea(
            child: Column(children: [
              Container(
                padding: EdgeInsets.only(
                  top: 20,
                  right: 31,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Заказы",
                      style: PLStyle.subheader,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: provider.chats.length + (provider.isLoading ? 1 : 0) + 1, //WARNING: LOOK TO INDEX
                  itemBuilder: (context, index) {
                    if (provider.isLoading) return PLLoading(text: "");
                    if (index == 0)
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: 10,
                          top: 20,
                        ),
                        child: GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            CupertinoPageRoute(
                              builder: (_) => PublicChatScreen(
                                chatProvider: provider.getChatProvider(
                                  provider.chats[index],
                                ),
                              ),
                            ),
                          ),
                          child: SafeContractWidget(),
                        ),
                      );
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: 20,
                        top: 0,
                      ),
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (_) => ChatScreen(
                              chatProvider: provider.getChatProvider(
                                provider.chats[index - 1],
                              ),
                            ),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 32),
                          child: ChatWidget(
                            photographer: provider.chats[index - 1].photographer,
                            message: (MessageBuilder()..message = "уле=еле").build(),
                            time: DateTime.now(),
                            order: index % 4 == 0 ? (OrderBuilder()..time = DateTime.now()).build() : null,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
