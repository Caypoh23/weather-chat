// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/feature/chat/chats/_data.dart';
import 'package:weather/feature/chat/chats/widgets/app_bar/app_bar.dart';
import 'package:weather/feature/chat/chats/widgets/items/chat_message_item.dart';
import 'package:weather/feature/chat/chats/widgets/items/support_chat_message_item.dart';

class ChatsContent extends StatefulWidget {
  //
  const ChatsContent({super.key});

  @override
  State<ChatsContent> createState() => _ChatsContentState();
}

class _ChatsContentState extends State<ChatsContent> {
  //

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (_, __) => [
        const ChatsAppBar(),
      ],
      body: ListView(
        padding: MyEdgeInsets.all16.copyWith(top: 0),
        children: [
          SupportChatItem(
            chat: ChatsData.supportChat,
            lastMessage: ChatsData.supportMessages.last,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: ChatsData.chats.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              final chat = ChatsData.chats[index];

              return ChatItem(
                chat: chat,
                lastMessage: chat.messages!.last,
              );
            },
          ),
        ],
      ),
    );
  }
}
