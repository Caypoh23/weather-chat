// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/assets/icon_constants.dart';
import 'package:weather/conf/assets/image_constants.dart';
import 'package:weather/conf/values/border_radius_constants.dart';
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/conf/values/space.dart';
import 'package:weather/conf/values/strings_constants.dart';
import 'package:weather/theme/default/default_container.dart';
import 'package:weather/theme/default/default_icon.dart';
import 'package:weather/theme/default/default_inkwell.dart';
import 'package:weather/theme/text/text12/text_12_medium.dart';
import 'package:weather/theme/text/text14/text_14.dart';
import 'package:weather/theme/text/text16/text_16_medium.dart';

class MyChatItem extends StatelessWidget {
  //
  final Function()? onTap;

  final String? imgUrl;

  final String? name;
  final String? text;
  final String? sentTime;

  final int? unreadMessageCount;

  final bool isRead;
  final bool isSupport;

  const MyChatItem({
    super.key,
    this.imgUrl,
    this.name,
    required this.text,
    required this.sentTime,
    this.unreadMessageCount = 0,
    this.isSupport = false,
    //
    this.isRead = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MyInkWell(
      onTap: onTap,
      borderRadius: MyBorderRadius.allRounded10,
      border: Border.all(color: MyColors.neutral),
      padding: MyEdgeInsets.all18,
      margin: MyEdgeInsets.bottom10,
      color: isRead
          ? MyColors.white
          : isSupport
              ? MyColors.yellow
              : MyColors.neutralLite,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: MyBorderRadius.allRounded100,
            child: Image.asset(
              imgUrl ?? MyImages.avatar,
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
                    Expanded(
                        child: MyText16m(
                            isSupport ? MyStrings.support : name ?? '')),
                    Space.v4,
                    MyText14(sentTime ?? DateTime.now().toString()),
                  ],
                ),
                Space.v4,
                Row(
                  children: [
                    Expanded(child: MyText14(text ?? '')),
                    Space.h16,
                    if (isRead) ...[
                      const MyIcon(
                        size: 16,
                        icon: MyIcons.doubleTick,
                      ),
                    ] else ...[
                      if (unreadMessageCount! > 0) ...[
                        MyContainer(
                          width: 16,
                          height: 16,
                          color: MyColors.blue,
                          alignment: Alignment.center,
                          borderRadius: MyBorderRadius.allRounded100,
                          child: MyText12m(
                            '$unreadMessageCount',
                            color: MyColors.white,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ] else ...[
                        const MyIcon(
                          size: 16,
                          icon: MyIcons.tick,
                        ),
                      ]
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
