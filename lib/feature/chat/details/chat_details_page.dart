// Flutter imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/core/models/chat/chat.dart';
import 'package:weather/theme/default/default_app_bar.dart';
import 'package:weather/theme/gestures/focus_remover.dart';
import 'widgets/content.dart';

@RoutePage()
class ChatDetailsPage extends StatefulWidget {
  //
  final Chat chat;

  const ChatDetailsPage({
    super.key,
    required this.chat,
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
          title: widget.chat.messages!.last.name!,
        ),
        body: const ChatDetailsContent(),
      ),
    );
  }
}
