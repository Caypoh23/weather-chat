// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/core/models/message/message.dart';
import 'package:weather/feature/chat/details/widgets/app_bar/app_bar.dart';
import 'package:weather/theme/items/message_item.dart';
import 'package:weather/theme/safe_area/safe_area_b16.dart';
import 'package:weather/theme/sicky_header.dart';
import 'text_fields/message_text_field.dart';

class ChatDetailsContent extends StatelessWidget {
  //
  final List<Message> messages;

  const ChatDetailsContent({
    super.key,
    required this.messages,
  });

  @override
  Widget build(BuildContext context) {
    final dates = {
      for (final message in messages) message.sentTime: message.sentTime,
    }.values.toList();

    final itemByDate = {
      for (final date in dates)
        date: messages.where((message) => message.sentTime == date).toList(),
    };

    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (_, __) => [
        const ChatDetailsAppBar(),
      ],
      body: Column(
        children: [
          Expanded(
            child: ListView(
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
                      date: date!,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: list.length,
                        padding: MyEdgeInsets.bottom16,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (_, index) {
                          final model = list[index];

                          return MyMessageItem(
                            imgUrl: model.avatar,
                            text: model.text,
                            name: model.name,
                            sentTime: model.dateSt,
                            isLast: index == list.length - 1,
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          const ChatDetailsMessageTextField(),
          const MySafeAreaB16(),
        ],
      ),
    );
  }
}
