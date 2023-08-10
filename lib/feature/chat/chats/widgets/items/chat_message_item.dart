// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/core/models/chat/chat.dart';
import 'package:weather/core/models/message/message.dart';
import 'package:weather/core/root/injector.dart';
import 'package:weather/core/router/app_router.dart';
import 'package:weather/core/router/navigator_service.dart';
import 'package:weather/theme/items/chat_item.dart';

class ChatItem extends StatelessWidget {
  //
  final Chat chat;
  final Message lastMessage;

  const ChatItem({
    super.key,
    required this.chat,
    required this.lastMessage,
  });

  @override
  Widget build(BuildContext context) {
    return MyChatItem(
      onTap: openDetails,
      imgUrl: lastMessage.avatar,
      text: lastMessage.text,
      sentTime: lastMessage.dateSt,
      isSupport: false,
      isRead: lastMessage.isRead,
      name: chat.otherName,
      unreadMessageCount: chat.unreadMessagesCount,
    );
  }

  void openDetails() {
    injector<NavigatorService>().push(ChatDetailsRoute(chat: chat));
  }
}
