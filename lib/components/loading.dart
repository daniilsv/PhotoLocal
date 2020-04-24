import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:photolocal/theme/theme.dart';

import '../global/i18n.dart';

/// Loading widget.
/// Display loading screen with loading Widget [widget] and Text [text]
/// default [widget] is
/// ```
/// SpinKitChasingDots(
///   size: 64,
///   color: PLColors.primary
/// )
/// ```
/// default [text] is
/// ```
/// const Text(
///   PLStrings.loading,
///   style: TextStyle(color: PLColors.greyText, fontSize: 12),
/// )
/// ```
/// {@category Widgets}
class PLLoading extends StatelessWidget {
  const PLLoading({Key key, this.text, this.widget}) : super(key: key);
  final String text;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Column(
                children: <Widget>[
                  if (widget != null)
                    widget
                  else
                    SpinKitPumpingHeart(
                      size: 64,
                      color: PLColors.primary,
                    ),
                  Container(
                    margin: EdgeInsets.only(top: 24),
                    child: Text(
                      text ?? "Loading... please wait".i18n,
                      style: PLStyle.textMed,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
