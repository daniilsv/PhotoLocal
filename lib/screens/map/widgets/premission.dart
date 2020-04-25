import 'package:photolocal/providers/location.dart';
import 'package:photolocal/screens/map/widgets/badge.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:photolocal/theme/theme.dart';
import './premission.i18n.dart';

class PermissionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Please allow access to the geolocation for the application to work'.i18n,
            style: PLStyle.text,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BadgeWidget(
                text: "Allow".i18n,
                icon: LineIcons.map_marker,
                onTap: () {
                  LocationProvider().update();
                },
                choosed: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
