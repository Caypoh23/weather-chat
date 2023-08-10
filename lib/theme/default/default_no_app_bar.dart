// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/utils/media_helper.dart';

class MyNoAppBar extends StatelessWidget implements PreferredSizeWidget {
  //
  final bool isLight;
  final Color backgroundColor;

  const MyNoAppBar({super.key, 
    this.isLight = false,
    this.backgroundColor = MyColors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 0,
      backgroundColor: backgroundColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        systemStatusBarContrastEnforced: false,
        statusBarColor: MyColors.transparent,
        statusBarBrightness: isLight ? Brightness.dark : Brightness.light,
        statusBarIconBrightness: isLight ? Brightness.light : Brightness.dark,
      ),
    );
  }

  @override
  Size get preferredSize => Size(MediaHelper.width, 0);
}
