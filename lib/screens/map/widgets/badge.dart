import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({
    Key key,
    @required this.onTap,
    this.text,
    this.choosed = false,
    this.icon,
  }) : super(key: key);

  final String text;
  final Function onTap;
  final bool choosed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 32,
      child: GestureDetector(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: PLBorders.all24,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: choosed ? PLColors.white : PLColors.secondary2,
            ),
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (icon != null)
                  Icon(
                    icon,
                    color: !choosed ? PLColors.accent : PLColors.bg,
                    size: 18,
                  ),
                if (icon != null && text != null) SizedBox(width: 8),
                if (text != null)
                  Text(
                    text,
                    // textAlign: TextAlign.center,
                    style: PLStyle.subheader.copyWith(
                      color: !choosed
                          ? PLColors.text.withOpacity(.9)
                          : PLColors.black,
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
