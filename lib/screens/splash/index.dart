import 'package:flutter_svg/flutter_svg.dart';
import 'package:photolocal/theme/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: PLColors.bg,
      child: Stack(
        children: [
          Positioned(
            left: MediaQuery.of(context).size.width * .1,
            bottom: MediaQuery.of(context).size.height * .25,
            child: Text(
              "Photo\nLocal",
              style: PLStyle.drukBig.copyWith(
                fontSize: MediaQuery.of(context).size.width * .15,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: MediaQuery.of(context).size.width * .2,
            child: Opacity(
              opacity: 0.1,
              child: SvgPicture.asset(
                "assets/images/logo.svg",
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
