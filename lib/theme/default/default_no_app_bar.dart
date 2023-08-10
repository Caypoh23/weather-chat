// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/system_ui_overlay_style_constants.dart';
import 'package:weather/utils/media_helper.dart';

class MyNoAppBar extends StatelessWidget implements PreferredSizeWidget {
  //
  final bool isLight;
  final Color backgroundColor;

  const MyNoAppBar({
    super.key,
    this.isLight = false,
    this.backgroundColor = MyColors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 0,
      backgroundColor: backgroundColor,
      systemOverlayStyle: isLight
          ? MySystemUiOverlayStyle.darkStatusBar
          : MySystemUiOverlayStyle.lightStatusBar,
    );
  }

  @override
  Size get preferredSize => Size(MediaHelper.width, 0);
}
