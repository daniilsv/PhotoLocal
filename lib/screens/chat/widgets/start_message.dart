import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';

class StartMessage extends StatelessWidget {
  const StartMessage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 4),
          padding: EdgeInsets.symmetric(
            vertical: 7,
            horizontal: 12,
          ),
          decoration: BoxDecoration(
            borderRadius: PLBorders.all12,
            color: PLColors.secondary3,
          ),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * .8 - 32,
          ),
          child: Column(children: [
            Text(
              "Теперь недоверчивые клиенты тоже приносят вам деньги! 💸",
              style: PLStyle.subheader,
              textAlign: TextAlign.start,
            ),
            Text(
              "Просто создайте внешний контракт  с условиями съёмки и отправьте сгенерированную ссылку клиенту. Он оплатит съёмку, а вы сможете получить деньги, когда вы отправите фотки.",
              style: PLStyle.text,
              textAlign: TextAlign.start,
            ),
          ]),
        ),
      ],
    );
  }
}
