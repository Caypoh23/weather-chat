// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/assets/icon_constants.dart';
import 'package:weather/conf/values/border_radius_constants.dart';
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/theme/default/default_container.dart';
import 'package:weather/theme/default/default_gesture.dart';
import 'package:weather/theme/default/default_icon.dart';
import 'package:weather/theme/text/text14/text_14.dart';
import 'package:weather/theme/text/text16/text_16_medium.dart';

class BaseDetail extends StatelessWidget {
  //
  final String icon;
  final String title;
  final String description;

  final Color color;
  final Color borderColor;

  final void Function() onClose;
  final void Function()? onTap;

  const BaseDetail({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    //
    required this.color,
    required this.borderColor,
    //
    required this.onClose,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: MyEdgeInsets.bottom32,
      child: MyGestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            const Spacer(),
            MyContainer(
              color: MyColors.white,
              margin: MyEdgeInsets.all16,
              padding: MyEdgeInsets.all16,
              border: Border.all(color: borderColor),
              borderRadius: MyBorderRadius.allRounded10,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyIcon(
                    size: 24,
                    icon: icon,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText16m(
                          title,
                          color: MyColors.black,
                        ),
                        if (description.isNotEmpty) ...[
                          const SizedBox(height: 8),
                          MyText14(
                            description,
                            isOverflow: false,
                            color: MyColors.black,
                          ),
                        ],
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  MyIcon(
                    onTap: onClose,
                    icon: MyIcons.close,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
