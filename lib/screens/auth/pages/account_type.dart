import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class AccountTypePage extends StatefulWidget {
  AccountTypePage({
    Key key,
    this.next,
  }) : super(key: key);

  final Function next;

  @override
  _AccountTypePageState createState() => _AccountTypePageState();
}

class _AccountTypePageState extends State<AccountTypePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "PhotoLocal",
                  style: PLStyle.drukBig.copyWith(fontSize: 28.22),
                ),
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/images/account_type.jpeg",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Photo by Stepan Nesmiyan",
                    style: PLStyle.secondary.copyWith(
                      color: Color(0xFF818181),
                      fontFamily: "NewYorkRegularItalic",
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Добро\nпожаловать\nна борт!",
                  style: PLStyle.drukBig.copyWith(fontSize: 30.6),
                ),
              ),
              Text(
                "Выберите основной вид приложения.\nПозже вы можете сменить его через\nпрофиль.",
                style: PLStyle.textFieldHeader,
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: widget.next,
                child: Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                    color: PLColors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Я клиент",
                        style: PLStyle.create(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: PLColors.bg,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: widget.next,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: PLColors.white,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Я фотограф",
                        style: PLStyle.create(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
