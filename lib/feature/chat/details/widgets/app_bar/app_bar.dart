// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/conf/values/space.dart';
import 'package:weather/conf/values/strings_constants.dart';
import 'package:weather/core/root/injector.dart';
import 'package:weather/core/router/navigator_service.dart';
import 'package:weather/theme/default/default_inkwell.dart';
import 'package:weather/theme/text/text14/text_14.dart';
import 'package:weather/theme/text/text16/text_16_medium.dart';

class ChatDetailsAppBar extends StatelessWidget {
  const ChatDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      snap: false,
      pinned: true,
      floating: true,
      toolbarHeight: 0,
      expandedHeight: 80,
      collapsedHeight: 80,
      backgroundColor: MyColors.white,
      shadowColor: MyColors.blackA10,
      flexibleSpace: Column(
        children: [
          MyText14(
            '${MyStrings.offline}: 2 часа',
            color: MyColors.blackA50,
          ),
          Space.v12,
          MyInkWell(
            onTap: () => injector<NavigatorService>()
                .showAlert(context, 'It does not work yet!'),
            padding: MyEdgeInsets.h20v8,
            color: MyColors.neutralLite,
            child: MyText16m(
              MyStrings.openTemper,
              color: MyColors.neutralDarkVarient,
            ),
          ),
        ],
      ),
    );
  }
}
