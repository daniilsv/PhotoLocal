import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:photolocal/theme/theme.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({Key key, this.onTap}) : super(key: key);
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap != null ? onTap() : () => {},
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: PLColors.accent,
          border: Border.all(color: PLColors.text.withOpacity(0.1), width: .5),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              offset: Offset(0, 2),
              color: Colors.black.withOpacity(0.15),
            ),
          ],
        ),
        child: Center(
          child: Icon(
            EvaIcons.pinOutline,
            color: PLColors.primary,
          ),
        ),
      ),
    );
  }
}
