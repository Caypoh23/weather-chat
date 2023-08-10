// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/font_constants.dart';

// Project imports:

class MyTheme {
  MyTheme._();

  //* Text Style - light

  static const TextStyle _lightAppBarTextStyle = TextStyle(
    color: MyColors.white,
    fontFamily: MyFonts.main,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static const TextStyle _lightHeadingTextStyle = TextStyle(
    color: MyColors.secondary,
    fontFamily: MyFonts.main,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static const TextStyle _lightBodyTextStyle = TextStyle(
    color: MyColors.neutral,
    fontFamily: MyFonts.main,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static const IconThemeData _lightIconTheme = IconThemeData(
    color: MyColors.secondary,
    size: 24,
  );

  static const TextTheme _lightTextTheme = TextTheme(
    displayLarge: _lightHeadingTextStyle,
    bodyLarge: _lightBodyTextStyle,
  );

  //* Text Style - dark

  static const TextStyle _darkAppBarTextStyle = _lightAppBarTextStyle;

  static const TextStyle _darkHeadingTextStyle = _lightHeadingTextStyle;

  static const TextStyle _darkBodyTextStyle = _lightBodyTextStyle;

  static const IconThemeData _darkIconTheme = _lightIconTheme;

  static const TextTheme _darkTextTheme = TextTheme(
    displayLarge: _darkHeadingTextStyle,
    bodyLarge: _darkBodyTextStyle,
  );

  //& Theme light/dark

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: MyColors.neutral,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: MyColors.secondary,
      titleTextStyle: _lightAppBarTextStyle,
      iconTheme: IconThemeData(color: MyColors.white),
    ),
    iconTheme: _lightIconTheme,
    colorScheme: const ColorScheme.light(
      primary: MyColors.primary,
      onPrimary: MyColors.primaryA50,
      secondary: MyColors.secondary,
      onSecondary: MyColors.secondaryA50,
      tertiary: MyColors.tertiary,
      onTertiary: MyColors.tertiaryA50,
      primaryContainer: MyColors.neutral,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: _lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: MyColors.neutral,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: MyColors.secondary,
      titleTextStyle: _darkAppBarTextStyle,
      iconTheme: IconThemeData(color: MyColors.white),
    ),
    iconTheme: _darkIconTheme,
    colorScheme: const ColorScheme.light(
      primary: MyColors.primary,
      onPrimary: MyColors.primaryA50,
      secondary: MyColors.secondary,
      onSecondary: MyColors.secondaryA50,
      tertiary: MyColors.tertiary,
      onTertiary: MyColors.tertiaryA50,
      primaryContainer: MyColors.neutral,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: _darkTextTheme,
  );
}
