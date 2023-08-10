// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/assets/icon_constants.dart';
import 'package:weather/conf/enums/theme_colors_enum.dart';
import 'package:weather/conf/values/border_radius_constants.dart';
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/conf/values/space.dart';
import 'package:weather/theme/container/my_info_container.dart';
import 'package:weather/theme/default/default_container.dart';
import 'package:weather/theme/default/default_icon.dart';
import 'package:weather/theme/text/text12/text_12_medium.dart';
import 'package:weather/theme/text/text14/text_14.dart';
import 'package:weather/theme/text/text16/text_16_medium.dart';

class MessageItem extends StatelessWidget {
  //
  final Function()? onTap;

  final String? imgUrl;

  final String? name;
  final String? text;
  final String? sentTime;

  final int? unreadMessageCount;

  final bool isRead;

  const MessageItem({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.text,
    required this.sentTime,
    this.unreadMessageCount = 0,
    //
    this.isRead = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MyInfoContainer(
      onTap: onTap,
      showBorder: true,
      margin: MyEdgeInsets.bottom10,
      borderColor: MyColors.neutral,
      color: isRead ? MyColors.neutralLite : MyColors.yellow,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: MyBorderRadius.allRounded100,
            child: Image.asset(
              imgUrl ?? '',
              width: 53,
              height: 53,
            ),
          ),
          Space.h12,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: MyText16m(name ?? '')),
                    Space.v4,
                    MyText14(sentTime ?? ''),
                  ],
                ),
                Space.v4,
                Row(
                  children: [
                    Expanded(child: MyText14(text ?? '')),
                    if (isRead) ...[
                      const MyIcon(
                        size: 16,
                        icon: MyIcons.doubleTick,
                      ),
                    ] else ...[
                      MyContainer(
                        width: 16,
                        height: 16,
                        color: MyColors.blue,
                        alignment: Alignment.center,
                        borderRadius: MyBorderRadius.allRounded100,
                        child: MyText12m(
                          '$unreadMessageCount',
                          color: MyThemeColor.white,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
