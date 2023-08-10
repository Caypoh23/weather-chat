// Flutter imports:
import 'package:flutter/material.dart';
import 'package:weather/core/models/chat/chat.dart';
import 'package:weather/core/models/message/message.dart';

// Project imports:
import 'package:weather/core/root/injector.dart';
import 'package:weather/core/router/app_router.dart';
import 'package:weather/core/router/navigator_service.dart';
import 'package:weather/theme/items/message_item.dart';

class ChatsMessageItem extends StatelessWidget {
  //
  final Chat chat;
  final Message message;

  const ChatsMessageItem({
    super.key,
    required this.chat,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return MessageItem(
      onTap: openDetails,
      imgUrl: message.avatar!,
      name: message.name!,
      text: message.text!,
      sentTime: message.dateSt,
    );
  }

  void openDetails() {
    injector<NavigatorService>().push(ChatDetailsRoute(chat: chat));
  }
}
