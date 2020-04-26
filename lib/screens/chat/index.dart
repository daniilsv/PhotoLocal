import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/components/loading.dart';
import 'package:photolocal/models/models.dart';
import 'package:photolocal/providers/init.dart';
import 'package:photolocal/screens/chat/widgets/app_bar.dart';
import 'package:photolocal/screens/chat/widgets/button.dart';
import 'package:photolocal/screens/chat/widgets/input.dart';
import 'package:photolocal/screens/photographer/index.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:stacked/stacked.dart';

import 'providers/chat.dart';
import 'widgets/self_message.dart';
import 'widgets/user_contract.dart';
import 'widgets/user_message.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({
    this.chatProvider,
  });
  final ChatProvider chatProvider;
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  ChatProvider get chatProvider => widget.chatProvider;
  Photographer get photographer => chatProvider.chatItem.photographer;

  void startPooling(ChatProvider provider) async {
    while (mounted) {
      provider.loadNext();
      await Future.delayed(Duration(seconds: 10));
    }
  }

  @override
  Widget build(BuildContext context) {
    var user = InitProvider().session.user;
    return ViewModelBuilder<ChatProvider>.reactive(
      viewModelBuilder: () => chatProvider,
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
                        // return Column(
                        //   children: [
                        //     SelfMessage("Йоу"),
                        //     SelfMessage(
                        //         "Привет!\nМожно завтра пофотографироваться?"),
                        //     UserMessage("Йоу"),
                        //     UserMessage("Готов платить бабки?"),
                        //     SelfMessage("Да изи, бабки не проблема"),
                        //     UserContract(photographer),
                        //   ],
                        // );
                        if (provider.isLoading &&
                            index == provider.messages.length)
                          return PLLoading();
                        Message msg = provider.messages[index];
                        if (msg.userId == user.id)
                          return SelfMessage(msg.message);
                        return UserMessage(msg.message);
                      },
                    ),
                  ),
                  SizedBox(height: 2),
                  GestureDetector(
                    onTap: () => {
                      showCupertinoModalPopup(
                        context: context,
                        // isScrollControlled: true,
                        // backgroundColor: Colors.transparent,
                        builder: (context) {
                          return ContractSheet();
                        }
                      )
                    },
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

class ContractSheet extends StatefulWidget {
  const ContractSheet({
    Key key,
  }) : super(key: key);

  @override
  _ContractSheetState createState() => _ContractSheetState();
}

class _ContractSheetState extends State<ContractSheet> {

  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 60),
        padding: EdgeInsets.only(top: 50, bottom: 0, left: 30, right: 30),
        color: PLColors.bg,
        child: Column(
          children: [
            Text(
              'Создание контракта',
              style: PLStyle.title,
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                
                children: [
                PageConditions(),
                PageFormat(),
                PageLegal()
              ],),
            ),
            Stepper(
              index: _pageController.page
            ),
            GestureDetector(
              onTap: () {
                print("order");
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: PLColors.accent,
                  borderRadius: PLBorders.all12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Предложить съёмку",
                      style: PLStyle.button,
                    ),
                  ],
                ),
              ),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ));
  }
}

class PageConditions extends StatelessWidget {
  const PageConditions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

class PageFormat extends StatelessWidget {
  const PageFormat({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            'Укажите количество и формат фотографий, которые  хотите получить.',
            style: PLStyle.text),
        _InputLabel(title: 'Сколько фото с обработкой?',),
        StringField(),
        _InputLabel(title: 'Сколько фото без обработки?',),
        StringField(),
        _InputLabel(title: 'Сколько фото в детальной обработке?',),
        StringField(),
        _InputLabel(title: 'Формат доставки фотографий',),
        StringField(),
        Text(
            'Совет: Укажите количество 10+ , если вы хотите получить не менее 10 фотографий.',
            style: PLStyle.text),
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}

class PageLegal extends StatelessWidget {
  const PageLegal({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            'Укажите важные детали съёмки, которые необходимо соблюсти и права фотографа.\n\n',
            style: PLStyle.text),
        _InputLabel(title: 'Идея  и важные детали съёмки?',),
        StringField(),
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}

class Stepper extends StatelessWidget {
  const Stepper({
    Key key,
    this.index
  }) : super(key: key);
  final double index;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      for (var i = 0; i < 4; i++) i == index 
        ? Container(width: 34, height: 8, margin: EdgeInsets.symmetric(horizontal: 4), decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)
          ),)
        : Container(width: 8, height: 8, margin: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.circular(8)
            ),
          )
    ],);
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
      padding: EdgeInsets.only(top: 10),
      child: Text(
        this.title,
        style: PLStyle.text,
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
      style: PLStyle.textMed.copyWith(fontSize: 20),
    );
  }
}
