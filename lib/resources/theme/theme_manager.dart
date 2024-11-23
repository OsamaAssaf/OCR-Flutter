import 'package:ocr/resources/helpers/all_imports.dart';

mixin ThemeManager {
  static ThemeData getLightTheme() {
    return ThemeData(
      useMaterial3: true,
      fontFamily: FontsManager.fontFamily,
      fontFamilyFallback: FontsManager.fontFamilyFallback,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        surface: ColorsManager.background,
        primary: ColorsManager.primary,
        secondary: ColorsManager.secondary,
        brightness: Brightness.light,
        tertiary: ColorsManager.accent,
      ),
      canvasColor: ColorsManager.background,
      dividerColor: ColorsManager.divider,
      dividerTheme: const DividerThemeData(
        color: ColorsManager.divider,
      ),
      scaffoldBackgroundColor: ColorsManager.background,
      appBarTheme: AppBarTheme(
        backgroundColor: ColorsManager.background,
        centerTitle: true,
        elevation: 0.0,
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0.0,
        titleTextStyle: TextStyle(
          fontSize: 16.0,
          color: ColorsManager.primary,
        ),
        iconTheme: IconThemeData(
          color: ColorsManager.primary,
        ),
      ),
      disabledColor: ColorsManager.divider,
      dialogBackgroundColor: ColorsManager.background,
      cardColor: ColorsManager.background,
      iconTheme: IconThemeData(
        color: ColorsManager.primary,
        size: 24.0,
      ),
      cardTheme: CardTheme(
        color: ColorsManager.background,
        surfaceTintColor: Colors.transparent,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: ColorsManager.background,
        surfaceTintColor: Colors.transparent,
        modalBackgroundColor: Colors.transparent,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          surfaceTintColor: Colors.transparent,
          textStyle: TextStyle(
            color: ColorsManager.primary,
            fontSize: 12.0,
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: ColorsManager.primary,
          textStyle: TextStyle(
            color: ColorsManager.white,
            fontSize: 12.0,
          ),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.all<Color>(ColorsManager.primary),
        checkColor: WidgetStateProperty.all<Color>(ColorsManager.lightGrey),
        side: BorderSide(
          color: ColorsManager.lightGrey,
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        surfaceTintColor: Colors.transparent,
        backgroundColor: ColorsManager.background,
        labelTextStyle: WidgetStateProperty.all<TextStyle>(
          const TextStyle(
            fontSize: 10.0,
          ),
        ),
      ),
      switchTheme: SwitchThemeData(
        trackColor: WidgetStateProperty.resolveWith((Set<WidgetState> widgetState) {
          if (widgetState.isEmpty) return customTheme.grey;
          return null;
        }),
      ),
      timePickerTheme: TimePickerThemeData(
        backgroundColor: ColorsManager.background,
        dialBackgroundColor: ColorsManager.lightGrey,
        entryModeIconColor: ColorsManager.grey,
      ),
      datePickerTheme: DatePickerThemeData(
        backgroundColor: ColorsManager.background,
        headerBackgroundColor: ColorsManager.primary,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 30.0,
          color: ColorsManager.primary,
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          fontSize: 28.0,
          color: ColorsManager.primary,
        ),
        displaySmall: TextStyle(
          fontSize: 16.0,
          color: ColorsManager.textColor,
        ),
        titleLarge: TextStyle(
          fontSize: 14.0,
          color: ColorsManager.textColor,
        ),
        titleMedium: TextStyle(
          fontSize: 12.0,
          color: ColorsManager.textColor,
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          fontSize: 10.0,
          color: ColorsManager.textColor,
          fontWeight: FontWeight.w400,
        ),
      ),
    ).copyWith(
      extensions: <ThemeExtension<CustomThemeData>>[
        CustomThemeData(
          white: ColorsManager.white,
          black: ColorsManager.black,
          success: ColorsManager.success,
          error: ColorsManager.error,
          warning: ColorsManager.warning,
          snackBarBackground: ColorsManager.snackBarBackground,
          grey: ColorsManager.grey,
          lightGrey: ColorsManager.lightGrey,
          darkGrey: ColorsManager.darkGrey,
          textFieldBackground: ColorsManager.textFieldBackground,
          textColor: ColorsManager.textColor,
          amber: ColorsManager.amber,
        )
      ],
    );
  }

// static ThemeData getDarkTheme() {
//   return ThemeData(
//     useMaterial3: true,
//     fontFamily: FontsManager.fontFamily,
//     fontFamilyFallback: FontsManager.fontFamilyFallback,
//     colorScheme: ColorScheme.fromSwatch().copyWith(
//       background: ColorsManager.darkBackground,
//       primary: ColorsManager.primary,
//       secondary: ColorsManager.secondary,
//       brightness: Brightness.dark,
//     ),
//     scaffoldBackgroundColor: ColorsManager.darkBackground,
//     appBarTheme: AppBarTheme(
//       backgroundColor: ColorsManager.darkBackground,
//       centerTitle: true,
//       elevation: 0.0,
//       surfaceTintColor: Colors.transparent,
//       scrolledUnderElevation: 0.0,
//       titleTextStyle: TextStyle(
//         fontSize: 16.0,
//         color: ColorsManager.darkPrimary,
//       ),
//       iconTheme: IconThemeData(
//         color: ColorsManager.darkPrimary,
//       ),
//     ),
//     disabledColor: ColorsManager.divider,
//     dialogBackgroundColor: ColorsManager.darkBackground,
//     cardColor: ColorsManager.darkBackground,
//     iconTheme: IconThemeData(
//       color: ColorsManager.primary,
//     ),
//     bottomSheetTheme: BottomSheetThemeData(
//       backgroundColor: ColorsManager.darkBackground,
//     ),
//     switchTheme: const SwitchThemeData(),
//     textTheme: TextTheme(
//       displayLarge: TextStyle(
//         fontSize: 40.0,
//         color: ColorsManager.primary,
//         fontWeight: FontWeight.w400,
//       ),
//       displayMedium: TextStyle(
//         fontSize: 16.0,
//         color: ColorsManager.primary,
//         fontWeight: FontWeight.w400,
//       ),
//       titleLarge: TextStyle(
//         fontSize: 14.0,
//         color: ColorsManager.primary,
//         fontWeight: FontWeight.bold,
//       ),
//       titleMedium: const TextStyle(
//         fontSize: 12.0,
//         color: ColorsManager.darkText,
//         fontWeight: FontWeight.w500,
//       ),
//       titleSmall: TextStyle(
//         fontSize: 10.0,
//         color: ColorsManager.darkDarkGrey,
//         fontWeight: FontWeight.w400,
//       ),
//     ),
//   ).copyWith(
//     extensions: <ThemeExtension<CustomThemeData>>[
//       CustomThemeData(
//         white: ColorsManager.darkWhite,
//         black: ColorsManager.darkBlack,
//         success: ColorsManager.success,
//         error: ColorsManager.error,
//         warning: ColorsManager.warning,
//         snackBarBackground: ColorsManager.snackBarBackground,
//         grey: ColorsManager.darkDarkGrey,
//         textField: ColorsManager.darkTextField,
//         pink: ColorsManager.pink,
//         blue: ColorsManager.blue,
//       )
//     ],
//   );
// }
}
