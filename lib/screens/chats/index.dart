import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//TODO get info from back, make this screen
class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Padding(
      //   padding: EdgeInsets.symmetric(horizontal: 16),
      //   child: ListView.builder(
      //     itemCount: 10,
      //     itemBuilder: (context, index) => Padding(
      //       padding: EdgeInsets.only(bottom: 20, top: index == 0 ? 20 : 0),
      //       child: GestureDetector(
      //         onTap: () => Navigator.of(context).push(
      //           CupertinoPageRoute(
      //             builder: (_) => ChatScreen(DataProvider()
      //                 .getReportProvider(null)), //TODO: pass normal Report
      //           ),
      //         ),
      //         child: HCReportWidget(
      //           content: 'ОМСУ 1 - просрочен отчет по выполненной работе.',
      //           color: null,
      //           caption: Utils.getDateTime(dateTime: DateTime.now()),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
