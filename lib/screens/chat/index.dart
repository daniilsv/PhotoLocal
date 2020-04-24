import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photolocal/components/loading.dart';
import 'package:photolocal/global/utils.dart';
import 'package:photolocal/mock/photographers.dart';
import 'package:photolocal/screens/chat/widgets/app_bar.dart';
import 'package:photolocal/screens/chat/widgets/button.dart';
import 'package:photolocal/screens/chat/widgets/input.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:stacked/stacked.dart';

import 'providers/chat.dart';
import 'widgets/self_message.dart';
import 'widgets/user_message.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen();

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  void startPooling(ChatProvider provider) async {
    //   while (mounted) {
    //     provider.loadNext();
    //     await Future.delayed(Duration(seconds: 10));
    //   }
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ChatProvider>.reactive(
      viewModelBuilder: () => ChatProvider(),
      onModelReady: startPooling,
      builder: (context, provider, child) => SafeArea(
        top: true,
        child: Scaffold(
          resizeToAvoidBottomPadding: true,
          backgroundColor: PLColors.bg,
          appBar: ChatAppBar(photographers[1]),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: ListView.builder(
                        controller: provider.scrollController,
                        reverse: true,
                        itemCount:
                            10, //provider.messages.length +(provider.isLoading ? 1 : 0),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              SelfMessage("Йоу"),
                              SelfMessage(
                                  "Привет!\nМожно завтра пофотографироваться?"),
                              UserMessage("Йоу"),
                              UserMessage("Готов платить бабки?"),
                              SelfMessage("Да изи, бабки не проблема"),
                            ],
                          );
                          if (provider.isLoading &&
                              index == provider.messages.length)
                            return PLLoading();
                          Message msg = provider.messages[index];
                          if (msg.isMyMessage == true)
                            return SelfMessage(msg.message);
                          return UserMessage(msg.message);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  ContractButton(),
                  SizedBox(height: 8),
                  ChatInput(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
