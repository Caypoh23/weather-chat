// Flutter imports:
import 'package:flutter/services.dart';

// Project imports:
import 'color_constants.dart';

class MySystemUiOverlayStyle {
  //
  static const splash = SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    systemStatusBarContrastEnforced: false,
    statusBarColor: MyColors.transparent,
    statusBarIconBrightness: Brightness.light,
    //
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarColor: MyColors.primary,
    systemNavigationBarDividerColor: MyColors.primary,
    systemNavigationBarIconBrightness: Brightness.light,
  );

  static const lightStatusBar = SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    systemStatusBarContrastEnforced: false,
    statusBarColor: MyColors.transparent,
    statusBarIconBrightness: Brightness.light,
  );

  static const lightNavBar = SystemUiOverlayStyle(
    systemNavigationBarColor: MyColors.white,
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarDividerColor: MyColors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  );

  static const darkNavBar = SystemUiOverlayStyle(
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarColor: MyColors.neutralDark,
    systemNavigationBarDividerColor: MyColors.neutralDark,
  );
}
