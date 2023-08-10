// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/core/models/chat/chat.dart';
import 'package:weather/core/models/message/message.dart';
import 'package:weather/core/root/injector.dart';
import 'package:weather/core/router/app_router.dart';
import 'package:weather/core/router/navigator_service.dart';
import 'package:weather/theme/items/chat_item.dart';

class SupportChatItem extends StatelessWidget {
  //
  final Chat chat;
  final Message lastMessage;

  const SupportChatItem({
    super.key,
    required this.chat,
    required this.lastMessage,
  });

  @override
  Widget build(BuildContext context) {
    return MyChatItem(
      sentTime: lastMessage.dateSt,
      imgUrl: lastMessage.avatar,
      isRead: lastMessage.isRead,
      text: lastMessage.text,
      unreadMessageCount: 2,
      name: chat.otherName,
      onTap: openDetails,
      isSupport: true,
    );
  }

  void openDetails() {
    injector<NavigatorService>().push(ChatDetailsRoute(chat: chat));
  }
}
