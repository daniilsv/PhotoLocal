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
            vertical: 12,
            horizontal: 12,
          ),
          decoration: BoxDecoration(
            borderRadius: PLBorders.all16,
            border: Border.all(
              width: 0.5,
              color: Color(0xFF979797),
            ),
            color: Color(0xFF0F0F0F),
          ),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * .8 - 32,
          ),
          child: Column(
            children: [
              Text(
                "Теперь недоверчивые клиенты тоже приносят вам деньги! 💸",
                style: PLStyle.subheader,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Просто создайте внешний контракт  с условиями съёмки и отправьте сгенерированную ссылку клиенту. Он оплатит съёмку, а вы сможете получить деньги, когда вы отправите фотки.",
                style: PLStyle.text,
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
