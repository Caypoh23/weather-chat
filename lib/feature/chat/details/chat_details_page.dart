// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/system_ui_overlay_style_constants.dart';
import 'package:weather/core/models/chat/chat.dart';
import 'package:weather/theme/default/default_app_bar.dart';
import 'package:weather/theme/gestures/focus_remover.dart';
import 'widgets/content.dart';

@RoutePage()
class ChatDetailsPage extends StatelessWidget {
  //
  final Chat chat;

  const ChatDetailsPage({
    super.key,
    required this.chat,
  });

  @override
  Widget build(BuildContext context) {
    return MyFocusRemover(
      child: Scaffold(
        backgroundColor: MyColors.white,
        appBar: MyAppBar(
          title: chat.otherName,
        ),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: MySystemUiOverlayStyle.lightNavBar,
          child: ChatDetailsContent(messages: chat.messages ?? []),
        ),
      ),
    );
  }
}
