// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/assets/icon_constants.dart';
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/system_ui_overlay_style_constants.dart';
import 'package:weather/core/root/injector.dart';
import 'package:weather/core/router/navigator_service.dart';
import 'package:weather/theme/text/text24/text_24_semi_bold.dart';
import 'package:weather/utils/media_helper.dart';
import 'default_container.dart';
import 'default_gesture.dart';
import 'default_icon.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  //
  final bool canPop;
  final String title;
  final List<Widget>? actions;

  final void Function()? onTap;
  final void Function()? onPop;

  const MyAppBar({
    super.key,
    required this.title,
    this.canPop = true,
    this.actions,
    this.onTap,
    this.onPop,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      child: AppBar(
        elevation: 0.0,
        actions: actions,
        centerTitle: true,
        backgroundColor: MyColors.white,
        systemOverlayStyle: MySystemUiOverlayStyle.darkStatusBar,
        automaticallyImplyLeading: false,
        leading: canPop
            ? MyIcon(
                size: 18,
                icon: MyIcons.arrowLeft,
                onTap: injector<NavigatorService>().pop,
              )
            : null,
        title: MyGestureDetector(
          onTap: onTap,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyText24s(
                title,
                isOverflow: true,
                color: MyColors.neutralDark,
              ),
              if (onTap != null) ...[
                const SizedBox(width: 8),
                const MyIcon(
                  size: 16,
                  icon: MyIcons.arrowDown,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => MediaHelper.appBarSize!;
}
