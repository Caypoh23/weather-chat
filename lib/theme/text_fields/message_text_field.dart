// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

// Project imports:
import 'package:weather/conf/assets/icon_constants.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/conf/values/space.dart';
import 'package:weather/conf/values/strings_constants.dart';
import 'package:weather/theme/default/default_container.dart';
import 'package:weather/theme/default/default_gesture.dart';
import 'package:weather/theme/default/default_icon.dart';

class BottomChatTextField extends StatefulWidget {
  const BottomChatTextField({super.key});

  @override
  State<BottomChatTextField> createState() => _BottomChatTextFieldState();
}

class _BottomChatTextFieldState extends State<BottomChatTextField> {
  final _textEditingController = TextEditingController();
  late ReactionDisposer disposer;

  @override
  void dispose() {
    _textEditingController.dispose();
    disposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MyContainer(
        border: Border(
          top: BorderSide(color: Colors.grey.shade300),
        ),
        padding: MyEdgeInsets.top16,
        child: Observer(builder: (context) {
          return Column(
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
          );
        }),
      ),
    );
  }
}
