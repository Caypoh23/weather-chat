// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:permission_handler/permission_handler.dart';

// Project imports:
import 'package:weather/conf/enums/theme_colors_enum.dart';
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/conf/values/strings_constants.dart';
import 'package:weather/theme/default/default_button.dart';
import 'package:weather/theme/default/default_container.dart';
import 'package:weather/theme/text/text16/text_16.dart';
import 'package:weather/theme/text/text18/text_18_semi_bold.dart';
import 'package:weather/utils/media_helper.dart';
import 'package:weather/utils/permission_helper.dart';

class MyPermissionState extends StatelessWidget {
  //
  final String img;
  final String title;
  final String desc;

  final Permission permission;

  const MyPermissionState({super.key, 
    required this.img,
    required this.title,
    required this.desc,
    required this.permission,
  });

  //
  @override
  Widget build(BuildContext context) {
    return MyContainer(
      color: MyColors.white,
      width: MediaHelper.width,
      padding: MyEdgeInsets.all16,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            img,
            width: 90,
            height: 90,
          ),
          const SizedBox(height: 24),
          MyText18s(
            title,
            color: MyThemeColor.neutralVarient,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          MyText16(
            desc,
            isOverflow: false,
            color: MyThemeColor.neutral,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton.primary(
                onTap: onTap,
                padding: MyEdgeInsets.h16v12,
                label: MyStrings.grantPermission,
              ),
            ],
          )
        ],
      ),
    );
  }

  void onTap() => MyPermissionHelper.request(permission);
}
