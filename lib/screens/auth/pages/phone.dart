import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:photolocal/components/masked_text.dart';

import '../../../theme/theme.dart';

class PhonePage extends StatefulWidget {
  PhonePage({
    Key key,
    this.next,
  }) : super(key: key);

  final Function next;

  @override
  _PhonePageState createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  MaskedTextController phoneController = MaskedTextController(mask: '+7 (000) 000-00-00');
  MaskedTextController codeController = MaskedTextController(mask: '0000');
  FocusNode phoneFocusNode = FocusNode();
  FocusNode codeFocusNode = FocusNode();

  bool phoneSubmited = false;
  bool sendedCode = false;
  bool loading = false;

  @override
  void initState() {
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
              "Вход в систему",
              style: PLStyle.druk,
            ),
          ),
          Text(
            "Номер телефона",
            style: PLStyle.text,
          ),
          TextField(
            controller: phoneController,
            style: PLStyle.textMed.copyWith(fontSize: 24),
            autofocus: true,
            cursorColor: PLColors.text,
            maxLines: 1,
            focusNode: phoneFocusNode,
            keyboardType: TextInputType.phone,
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
            onSubmitted: (value) {
              FocusScope.of(context).requestFocus(codeFocusNode);
            },
            onChanged: (value) {
              if (phoneController.unmaskedText.length == 11) {
                phoneSubmited = true;
                setState(() {});
                Future.delayed(
                  Duration(milliseconds: 20),
                  () => FocusScope.of(context).requestFocus(codeFocusNode),
                );
              }
            },
          ),
          if (phoneSubmited)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 35,
                ),
                Text(
                  "Код из SMS",
                  style: PLStyle.text,
                ),
                TextField(
                  controller: codeController,
                  style: PLStyle.druk.copyWith(fontSize: 48),
                  cursorColor: PLColors.text,
                  maxLines: 1,
                  focusNode: codeFocusNode,
                  keyboardType: TextInputType.number,
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
                  onChanged: (value) {
                    if (codeController.unmaskedText.length == 4) {
                      FocusScope.of(context).unfocus();
                      loading = true;
                      setState(() {});
                      Future.delayed(
                        Duration(seconds: 3),
                        widget.next,
                      );
                    }
                  },
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    sendedCode = true;
                    setState(() {});
                    Future.delayed(
                      Duration(seconds: 3),
                      () {
                        sendedCode = false;
                        setState(() {});
                      },
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    child: Opacity(
                      opacity: sendedCode ? 0.4 : 1.0,
                      child: Text(
                        "Отправить SMS повторно",
                        style: PLStyle.accent,
                      ),
                    ),
                  ),
                ),
                if (loading)
                  SpinKitThreeBounce(
                    color: PLColors.secondary4,
                    size: 25.0,
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
