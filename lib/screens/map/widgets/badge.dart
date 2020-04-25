import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({
    Key key,
    @required this.onTap,
    this.text,
    this.icon,
    this.image,
    this.imageSize,
    this.choosed = false,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final Image image;
  final double imageSize;
  final Function onTap;
  final bool choosed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      decoration: BoxDecoration(
        boxShadow: [
          if (choosed)
            BoxShadow(
              blurRadius: 4,
              color: PLColors.primary.withOpacity(0.2),
              offset: Offset(0, 2),
            )
        ],
        borderRadius: BorderRadius.circular(45),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Chip(
          shape: StadiumBorder(
            side: BorderSide(
              color: choosed ? PLColors.accent : PLColors.text.withOpacity(0.1),
              width: .5,
            ),
          ),
          backgroundColor: choosed ? PLColors.accent : PLColors.bg,
          padding: EdgeInsets.only(right: text != null ? 3 : 0, top: 7, bottom: 7),
          label: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (icon != null)
                Icon(
                  icon,
                  color: !choosed ? PLColors.accent : PLColors.bg,
                  size: 18,
                ),
              if (image != null)
                Container(
                  width: imageSize,
                  height: imageSize,
                  child: image,
                ),
              if (text != null) ...[
                SizedBox(width: 7),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ubuntu(
                    color: !choosed ? PLColors.text.withOpacity(.9) : PLColors.bg,
                    fontSize: 12,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
