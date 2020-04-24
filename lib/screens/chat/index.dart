import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photolocal/components/loading.dart';
import 'package:photolocal/global/utils.dart';
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
      builder: (context, provider, child) => Scaffold(
        resizeToAvoidBottomPadding: true,
        backgroundColor: PLColors.bg,
        body: SafeArea(
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
                        provider.messages.length + (provider.isLoading ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (provider.isLoading &&
                          index == provider.messages.length) return PLLoading();
                      Message msg = provider.messages[index];
                      if (msg.isMyMessage == true)
                        return SelfMessage(msg.message);
                      return UserMessage(msg.message);
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ChatInput(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
