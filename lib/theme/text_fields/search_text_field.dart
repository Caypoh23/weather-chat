// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/assets/icon_constants.dart';
import 'package:weather/conf/values/strings_constants.dart';
import 'package:weather/theme/default/default_icon.dart';
import 'package:weather/theme/default/default_text_field.dart';

class SearchTextField extends StatelessWidget {
  //
  final void Function(String) onChanged;

  final void Function()? onTap;

  final TextEditingController? controller;

  final String initialValue;
  final String? hintText;

  final bool autofocus;
  final FocusNode? focusNode;

  const SearchTextField({
    super.key,
    required this.onChanged,
    //
    this.onTap,
    this.focusNode,
    this.controller,
    this.hintText,
    this.autofocus = false,
    this.initialValue = '',
  });

  @override
  Widget build(BuildContext context) {
    return MyTextField(
      key: key,
      onTap: onTap,
      autofocus: autofocus,
      onChanged: onChanged,
      focusNode: focusNode,
      prefixIcon: const MyIcon(
        size: 20,
        icon: MyIcons.search,
      ),
      controller: controller,
      readOnly: onTap != null,
      initialValue: initialValue,
      textInputAction: TextInputAction.search,
      hintText: hintText ?? MyStrings.searchInChat,
      textCapitalization: TextCapitalization.sentences,
    );
  }
}
