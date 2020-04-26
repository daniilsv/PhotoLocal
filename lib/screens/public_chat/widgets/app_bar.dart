import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';

class PublicChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: PLColors.bg,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (Navigator.canPop(context))
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.arrow_back, color: PLColors.white, size: 24),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          Center(
            child: Text(
              "Создание внешних контрактов",
              style: PLStyle.textFieldHeader,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 44.0,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(52);
}
