// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'widgets/content.dart';

@routePage
class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  //
  @override
  Widget build(BuildContext context) {
    return const ChatsContent();
  }
}
