// Flutter imports:
import 'package:flutter/material.dart';
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/core/models/message/message.dart';
import 'package:weather/theme/default/default_app_bar.dart';
import 'package:weather/theme/gestures/focus_remover.dart';

import 'widgets/content.dart';

class ChatDetailsPage extends StatefulWidget {
  //
  final Message message;

  const ChatDetailsPage({
    super.key,
    required this.message,
  });

  @override
  State<ChatDetailsPage> createState() => _ChatDetailsPageState();
}

class _ChatDetailsPageState extends State<ChatDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return MyFocusRemover(
      child: Scaffold(
        backgroundColor: MyColors.white,
        appBar: MyAppBar(
          title: widget.message.name!,
        ),
        body: const ChatDetailsContent(),
      ),
    );
  }
}
