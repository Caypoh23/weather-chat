// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/core/models/message/message.dart';
import 'package:weather/feature/chat/chats/widgets/items/message_item.dart';
import 'text_fields/search_text_field.dart';

class ChatsContent extends StatefulWidget {
  //
  const ChatsContent({super.key});

  @override
  State<ChatsContent> createState() => _ChatsContentState();
}

class _ChatsContentState extends State<ChatsContent> {
  //
  final list = [
    Message(
      id: '1',
      text: 'Hello',
      name: 'John',
      sentTime: DateTime.now(),
      avatar: 'assets/images/avatar.png',
    ),
    Message(
      id: '2',
      text: 'Hello',
      name: 'John',
      sentTime: DateTime.now(),
      avatar: 'assets/images/avatar.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (_, __) => [
        const ChatsSearchField(),
      ],
      body: ListView(
        padding: MyEdgeInsets.all16.copyWith(top: 0),
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: list.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              final message = list[index];

              return ChatsMessageItem(
                message: message,
              );
            },
          ),
        ],
      ),
    );
  }
}
