import 'package:flutter/material.dart';
import 'package:photolocal/screens/personalization/widgets/tinder_card.dart';
import 'package:photolocal/screens/personalization/widgets/tinder_widget.dart';

import '../../../theme/theme.dart';

class TinderPage extends StatefulWidget {
  TinderPage({
    Key key,
    @required this.changeSubmited,
  }) : super(key: key);

  final void Function(bool submited) changeSubmited;

  @override
  _TinderPageState createState() => _TinderPageState();
}

class _TinderPageState extends State<TinderPage> {
  TextEditingController controller;
  FocusNode focusNode;
  GlobalKey<TinderSwapCardState> tinderKey = GlobalKey<TinderSwapCardState>();
  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;

  @override
  void initState() {
    controller = TextEditingController();
    focusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 30,
            ),
            child: Text(
              "Давайте персонализируем вашу ленту",
              style: PLStyle.title,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Свайпайте, пока фотографии не станут похожими на то, что вы ищете",
              style: PLStyle.text,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 30,
          ),
          TinderWidget(),
        ],
      ),
    );
  }
}
