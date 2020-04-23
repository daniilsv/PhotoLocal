part of './theme.dart';

//TODO: place here text styles
class PLStyle {
  static TextStyle create({
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    Color color,
    TextDecoration decoration,
  }) =>
      GoogleFonts.montserrat(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        color: color ?? PLColors.text,
        decoration: decoration,
      );

  static TextStyle text = create(fontSize: 14);
  static TextStyle subheader = create(fontSize: 16, fontWeight: FontWeight.bold);
  static TextStyle header = create(fontSize: 24);
  static TextStyle title = create(fontSize: 24, fontWeight: FontWeight.w500);
  static TextStyle secondary = create(fontSize: 12, color: PLColors.secondary2, fontWeight: FontWeight.w500);
  static TextStyle button = create(fontSize: 20, fontWeight: FontWeight.w500);
}
