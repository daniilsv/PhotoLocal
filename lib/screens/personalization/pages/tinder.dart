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
    widget.changeSubmited(true);
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
              style: PLStyle.druk,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Свайпайте, пока фотографии не станут похожими на то, что вы ищете",
              style: PLStyle.text,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .58,
            child: TinderWidget(),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: PLColors.white.withOpacity(0.1),
                ),
                child: Icon(
                  Icons.undo,
                  color: PLColors.secondary,
                  size: 24,
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: PLColors.accent,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.close,
                  color: PLColors.white,
                  size: 35,
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: PLColors.green,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check,
                  color: PLColors.black.withOpacity(0.64),
                  size: 35,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: PLColors.white.withOpacity(0.1),
                ),
                child: Icon(
                  Icons.bookmark_border,
                  color: PLColors.secondary,
                  size: 24,
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
