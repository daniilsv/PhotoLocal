import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/providers/init.dart';
import 'package:photolocal/screens/auth/pages/entry_chooser.dart';
import 'package:photolocal/screens/auth/pages/phone.dart';

import '../../theme/theme.dart';
import 'pages/account_type.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  PageController pageController = PageController(initialPage: 0);
  int page = 0;

  @override
  void initState() {
    pageController.addListener(() {
      page = pageController.page.floor();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Container(
          color: PLColors.bg,
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                if (page == 1)
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            pageController.previousPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: PLColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                Expanded(
                  child: PageView(
                    controller: pageController,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      EntryChooserPage(
                        next: () {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                      ),
                      PhonePage(
                        next: () {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                      ),
                      AccountTypePage(
                        next: () => InitProvider().setState(InitState.wallCreate),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
