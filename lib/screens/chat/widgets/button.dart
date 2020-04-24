import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';

class ContractButton extends StatelessWidget {
  ContractButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: PLColors.secondary2,
        borderRadius: PLBorders.all12,
      ),
      alignment: Alignment.center,
      child: Text(
        "Предложить контракт",
        style: PLStyle.textFieldHeader,
        textAlign: TextAlign.center,
      ),
    );
  }
}
