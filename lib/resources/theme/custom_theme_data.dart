import 'package:ocr/resources/helpers/all_imports.dart';

class CustomThemeData extends ThemeExtension<CustomThemeData> {
  CustomThemeData({
    required this.white,
    required this.black,
    required this.success,
    required this.error,
    required this.warning,
    required this.snackBarBackground,
    required this.grey,
    required this.lightGrey,
    required this.darkGrey,
    required this.textFieldBackground,
    required this.textColor,
    required this.amber,
  });

  final Color white;
  final Color black;
  final Color success;
  final Color error;
  final Color warning;
  final Color snackBarBackground;
  final Color grey;
  final Color lightGrey;
  final Color darkGrey;
  final Color textFieldBackground;
  final Color textColor;
  final Color amber;

  // final Color pink;
  // final Color blue;

  @override
  ThemeExtension<CustomThemeData> copyWith() {
    return CustomThemeData(
      white: white,
      black: black,
      success: success,
      error: error,
      warning: warning,
      snackBarBackground: snackBarBackground,
      grey: grey,
      lightGrey: lightGrey,
      darkGrey: darkGrey,
      textFieldBackground: textFieldBackground,
      textColor: textColor,
      amber: amber,
    );
  }

  @override
  ThemeExtension<CustomThemeData> lerp(covariant ThemeExtension<CustomThemeData>? other, double t) {
    if (other is! CustomThemeData) {
      return this;
    }
    return CustomThemeData(
      white: white,
      black: black,
      success: success,
      error: error,
      warning: warning,
      snackBarBackground: snackBarBackground,
      grey: grey,
      lightGrey: lightGrey,
      darkGrey: darkGrey,
      textFieldBackground: textFieldBackground,
      textColor: textColor,
      amber: amber,
    );
  }
}
