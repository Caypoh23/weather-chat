// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/enums/theme_colors_enum.dart';
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/conf/values/space.dart';
import 'package:weather/conf/values/strings_constants.dart';
import 'package:weather/core/models/message/message.dart';
import 'package:weather/theme/default/default_inkwell.dart';
import 'package:weather/theme/safe_area/safe_area_b16.dart';
import 'package:weather/theme/sicky_header.dart';
import 'package:weather/theme/text/text14/text_14.dart';
import 'package:weather/theme/text/text16/text_16_medium.dart';
import 'items/message_item.dart';
import 'text_fields/message_text_field.dart';

class ChatDetailsContent extends StatelessWidget {
  const ChatDetailsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyText14(
          '${MyStrings.offline}: 2 часа',
          color: MyThemeColor.blackA50,
        ),
        Space.v12,
        MyInkWell(
          onTap: () {},
          padding: MyEdgeInsets.h20v8,
          color: MyColors.neutralLite,
          child: MyText16m(
            MyStrings.openTemper,
            color: MyThemeColor.neutralDarkVarient,
          ),
        ),
        Expanded(
          child: StreamBuilder<Map<DateTime, List<Message>>>(
            // stream: service.itemByDate$,
            // initialData: service.itemByDate,
            builder: (context, snapshot) {
              final itemByDate = snapshot.data ?? <DateTime, List<Message>>{};
              final dates = itemByDate.keys.toList();

              return ListView(
                shrinkWrap: true,
                padding: MyEdgeInsets.h16,
                physics: const ClampingScrollPhysics(),
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: dates.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) {
                      final date = dates[index];
                      final list = itemByDate[date]!;

                      return StickyDateHeader(
                        date: date,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: list.length,
                          padding: MyEdgeInsets.top4,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (_, index) {
                            final model = list[index];

                            return ContentDetailsItem(
                              message: model,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ),
        const ChatDetailsMessageTextField(),
        const MySafeAreaB16(),
      ],
    );
  }
}
