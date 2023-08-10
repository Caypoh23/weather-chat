// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/assets/icon_constants.dart';
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/conf/values/space.dart';
import 'package:weather/conf/values/strings_constants.dart';
import 'package:weather/theme/default/default_container.dart';
import 'package:weather/theme/default/default_gesture.dart';
import 'package:weather/theme/default/default_icon.dart';

// Package imports:


class BottomChatTextField extends StatefulWidget {
  const BottomChatTextField({super.key});

  @override
  State<BottomChatTextField> createState() => _BottomChatTextFieldState();
}

class _BottomChatTextFieldState extends State<BottomChatTextField> {
  final _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MyContainer(
        border: const Border(
          top: BorderSide(color: MyColors.neutral),
        ),
        padding: MyEdgeInsets.top16,
        child: Column(
          children: [
            Row(
              children: [
                Space.h24,
                MyGestureDetector(
                  child: const MyIcon(
                    icon: MyIcons.pin,
                  ),
                  onTap: () {},
                ),
                Space.h18,
                MyGestureDetector(
                  child: const MyIcon(
                    icon: MyIcons.record,
                  ),
                  onTap: () {},
                ),
                Space.h24,
                Expanded(
                  child: Padding(
                    padding: MyEdgeInsets.zero,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      textInputAction: TextInputAction.send,
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: const MyIcon(icon: MyIcons.moodSmile),
                          onPressed: () {},
                        ),
                        border: InputBorder.none,
                        hintText: MyStrings.message,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
