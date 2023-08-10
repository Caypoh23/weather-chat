import 'package:flutter/material.dart';
import 'package:weather/core/models/message/message.dart';
import 'package:weather/theme/items/message_item.dart';

class ContentDetailsItem extends StatelessWidget {
  //

  final Message message;

  const ContentDetailsItem({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return MessageItem(
      imgUrl: message.avatar,
      text: message.text,
      name: message.name,
      sentTime: message.dateSt,

    );
  }
}
