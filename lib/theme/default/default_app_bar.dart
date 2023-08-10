// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:weather/conf/assets/icon_constants.dart';
import 'package:weather/conf/enums/theme_colors_enum.dart';
import 'package:weather/conf/values/border_radius_constants.dart';
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/core/root/injector.dart';
import 'package:weather/core/root/navigator_service.dart';
import 'package:weather/theme/default/default_inkwell.dart';
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
        leadingWidth: 40,
        centerTitle: true,
        backgroundColor: MyColors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: MyColors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
          systemStatusBarContrastEnforced: false,
        ),
        automaticallyImplyLeading: false,
        leading: canPop
            ? MyInkWell(
                color: MyColors.neutral,
                padding: MyEdgeInsets.all8,
                borderRadius: MyBorderRadius.allRounded10,
                onTap: onPop ?? injector<NavigatorService>().pop,
                child: const MyIcon(
                  size: 18,
                  icon: MyIcons.arrowLeft,
                ),
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
                color: MyThemeColor.neutralVarient,
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
