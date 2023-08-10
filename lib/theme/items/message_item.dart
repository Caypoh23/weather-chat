// Flutter imports:
import 'package:flutter/material.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';

// Project imports:
import 'package:weather/theme/container/my_info_container.dart';
import 'package:weather/theme/text/text16/text_16_medium.dart';
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/theme/text/text14/text_14.dart';
import 'package:weather/conf/values/space.dart';

class MessageItem extends StatelessWidget {
  //
  final String imgUrl;

  final String name;
  final String text;
  final String sentTime;

  final bool isRead;

  const MessageItem({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.text,
    required this.sentTime,
    this.isRead = false,
  });

  @override
  Widget build(BuildContext context) {
    return MyInfoContainer(
      showBorder: true,
      margin: MyEdgeInsets.bottom10,
      color: MyColors.neutralLite,
      borderColor: MyColors.neutral,
      onTap: () {},
      child: Row(
        children: [
          Image.asset(
            imgUrl,
            width: 53,
            height: 53,
          ),
          Space.h12,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: MyText16m(name)),
                    Space.v4,
                    MyText14(sentTime),
                  ],
                ),
                Space.v4,
                MyText14(text),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
