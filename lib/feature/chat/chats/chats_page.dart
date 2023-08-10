// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/strings_constants.dart';
import 'package:weather/theme/default/default_app_bar.dart';
import 'package:weather/theme/gestures/focus_remover.dart';
import 'widgets/content.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  //
  @override
  Widget build(BuildContext context) {
    return MyFocusRemover(
      child: Scaffold(
        body: const ChatsContent(),
        backgroundColor: MyColors.white,
        appBar: MyAppBar(title: MyStrings.chat),
      ),
    );
  }
}
