import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class NamePage extends StatefulWidget {
  NamePage({
    Key key,
    @required this.changeSubmited,
  }) : super(key: key);

  final void Function(bool submited) changeSubmited;

  @override
  _NamePageState createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  TextEditingController controller;
  FocusNode focusNode;

  @override
  void initState() {
    controller = TextEditingController();
    focusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 15,
            ),
            child: Text(
              "Давайте создадим новую ленту фотографий",
              style: PLStyle.druk,
            ),
          ),
          Text(
            "В PhotoLocal у вас не одна лента, а несколько, ведь вы можете искать фотографа для разных целей",
            style: PLStyle.text,
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Название ленты",
            style: PLStyle.textFieldHeader,
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            controller: controller,
            style: PLStyle.textMed,
            autofocus: true,
            cursorColor: PLColors.text,
            maxLines: 1,
            focusNode: focusNode,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: PLColors.text,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: PLColors.text,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: PLColors.text,
                ),
              ),
            ),
            onChanged: (value) => widget.changeSubmited(value.length != 0),
          ),
        ],
      ),
    );
  }
}
