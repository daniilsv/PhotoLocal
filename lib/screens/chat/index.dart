import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/components/loading.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/screens/chat/widgets/app_bar.dart';
import 'package:photolocal/screens/chat/widgets/button.dart';
import 'package:photolocal/screens/chat/widgets/input.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:stacked/stacked.dart';

import 'providers/chat.dart';
import 'widgets/self_message.dart';
import 'widgets/user_contract.dart';
import 'widgets/user_message.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({
    this.photographer,
  });
  final Photographer photographer;
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Photographer get photographer => widget.photographer;

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
          appBar: ChatAppBar(photographer: photographer),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
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
                            UserContract(photographer),
                          ],
                        );
                        if (provider.isLoading &&
                            index == provider.messages.length)
                          return PLLoading();
                        Message msg = provider.messages[index];
                        // if (msg.isMyMessage == true) return SelfMessage(msg.message);
                        return UserMessage(msg.message);
                      },
                    ),
                  ),
                  SizedBox(height: 2),
                  GestureDetector(
                    onTap: () => (showCupertinoModalPopup(
                      context: context,
                      builder: (context) => (ContractSheet()),
                    )),
                    child: ContractButton(),
                  ),
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

class ContractSheet extends StatelessWidget {
  const ContractSheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 60),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        color: PLColors.bg,
        child: Column(
          children: [
            Text(
              'Создание контракта',
              style: PLStyle.title,
            ),
            Column(
              children: [
                Text(
                    'Зафиксируйте условия съёмки в контракте, чтобы в процессе съёмки не было разногласий с клиентом.',
                    style: PLStyle.text),
                _InputLabel(title: 'Номер телефона',),
                StringField(),
                _InputLabel(title: 'Номер телефона',),
                Row(
                  children: [
                    Flexible(
                      child: StringField(),
                    ),
                    Padding(
                      child: Text('и'),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                    Flexible(
                      child: StringField(),
                    ),
                  ],
                ),
                _InputLabel(title: 'Место съёмки',),
                StringField(),
                _InputLabel(title: 'Цена съёмки',),
                StringField(),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ));
  }
}

class _InputLabel extends StatelessWidget {
  const _InputLabel({
    Key key, this.title
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: Text(
        this.title,
        style: PLStyle.textFieldHeader,
      ),
    );
  }
}

class StringField extends StatelessWidget {
  const StringField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white, width: 1))),
      padding: EdgeInsets.symmetric(vertical: 6),
      style: PLStyle.textMed.copyWith(fontSize: 24),
    );
  }
}
