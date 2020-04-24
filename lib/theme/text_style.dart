part of './theme.dart';

String fontFamilySF = "SFProDisplay";
String fontFamilyDruk = "DrukTextWideCyTT";

class PLStyle {
  static TextStyle create({
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    Color color = PLColors.white,
    TextDecoration decoration,
    String fontFamily = "SFProDisplay",
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        color: color ?? PLColors.text,
        decoration: decoration,
        fontFamily: fontFamily,
      );

  static TextStyle text = create(fontSize: 14);
  static TextStyle subheader =
      create(fontSize: 20, fontWeight: FontWeight.bold);
  static TextStyle textMed = create(fontSize: 14, fontWeight: FontWeight.w500);
  static TextStyle header = create(fontSize: 24);
  static TextStyle headerBlack = create(fontSize: 24, color: PLColors.black);
  static TextStyle title = create(fontSize: 24, fontWeight: FontWeight.w500);
  static TextStyle secondary = create(
      fontSize: 12, color: PLColors.secondary2, fontWeight: FontWeight.w500);
  static TextStyle button = create(fontSize: 20, fontWeight: FontWeight.w500);
  static TextStyle druk = create(fontSize: 24, fontFamily: fontFamilyDruk)
      .copyWith(height: 0.83, letterSpacing: -0.24);
}
