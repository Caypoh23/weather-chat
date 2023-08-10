// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/core/models/message/message.dart';
import 'package:weather/core/navigator/routes_constants.dart';
import 'package:weather/core/root/injector.dart';
import 'package:weather/core/root/navigator_service.dart';
import 'package:weather/theme/items/message_item.dart';

class ChatsMessageItem extends StatelessWidget {
  //
  final Message message;

  const ChatsMessageItem({
    super.key,
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
    injector<NavigatorService>().pushNamed(
      MyRoutes.chatDetails,
      arguments: message,
    );
  }
}