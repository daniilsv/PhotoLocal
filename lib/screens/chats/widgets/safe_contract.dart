import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photolocal/theme/theme.dart';

class SafeContractWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      color: Color(0xFF0B0B0B),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/icons/safe_contract.svg",
              width: 56,
              height: 56,
            ),
            SizedBox(width: 16),
            Expanded(
              child: AutoSizeText(
                "Контракт и безопасная сделка с внешним клиентом",
                style: PLStyle.button.copyWith(fontWeight: FontWeight.w700),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
