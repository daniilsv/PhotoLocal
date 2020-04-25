import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';
import '../widgets/photograph_tile.dart';

class ResultPage extends StatefulWidget {
  ResultPage({
    Key key,
  }) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  TextEditingController controller;
  FocusNode focusNode;
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
              "Вам должны понравиться эти фотографы",
              style: PLStyle.druk,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "А если не понравились, можете вернуться назад и поискать ещё",
              style: PLStyle.text,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: List.generate(
                  10,
                  (index) => PhotographTileWidget(
                    withDivider: index != 9,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
