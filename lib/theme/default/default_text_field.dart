// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:weather/conf/assets/icon_constants.dart';
import 'package:weather/conf/enums/theme_colors_enum.dart';
import 'package:weather/conf/values/border_radius_constants.dart';
import 'package:weather/conf/values/box_constraints_constants.dart';
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/theme/container/empty_container.dart';
import 'package:weather/theme/text/text14/text_14.dart';
import 'default_container.dart';
import 'default_icon.dart';
import 'default_progress_indicator.dart';
import 'default_rich_text.dart';

class MyTextField extends StatefulWidget {
  //
  final String? labelText;
  final String? initialValue;
  final TextEditingController? controller;
  final TextStyle? style;

  final String? hintText;

  final FloatingLabelBehavior? floatingLabelBehavior;

  final bool enabled;
  final bool readOnly;
  final bool autofocus;
  final bool obscureText;
  final bool isRequired;
  final bool canClear;
  final bool isLoading;

  final FocusNode? focusNode;
  final TextAlign textAlign;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;

  final int? minLines;
  final int maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsets contentPadding;

  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;

  final void Function()? onTap;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;

  const MyTextField({
    this.labelText,
    this.controller,
    this.initialValue,
    this.style,
    //
    this.hintText,
    this.floatingLabelBehavior,
    //
    this.enabled = true,
    this.readOnly = false,
    this.autofocus = false,
    this.obscureText = false,
    this.isRequired = false,
    this.canClear = true,
    this.isLoading = false,
    //
    this.focusNode,
    this.textAlign = TextAlign.start,
    this.textInputAction,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    //
    this.minLines,
    this.maxLines = 1,
    this.maxLength,
    this.inputFormatters,
    //
    this.prefixIcon,
    this.suffixIcon,
    this.contentPadding = MyEdgeInsets.all16,
    //
    this.prefixIconConstraints = MyBoxConstraints.all48,
    this.suffixIconConstraints = MyBoxConstraints.all48,
    //
    this.onTap,
    this.onChanged,
    this.onEditingComplete,
    Key? key,
  }) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  //
  late FocusNode focusNode;
  late TextEditingController controller;

  bool get showClear =>
      widget.canClear && focusNode.hasFocus && controller.text.isNotEmpty;

  @override
  void initState() {
    focusNode = widget.focusNode ?? FocusNode();
    controller = widget.controller ?? TextEditingController();

    controller.text = widget.initialValue ?? '';

    if (widget.canClear) {
      controller.addListener(updateState);
      focusNode.addListener(updateState);
    }
    super.initState();
  }

  void updateState() => {if (mounted) setState(() {})};

  @override
  void dispose() {
    if (widget.canClear) {
      controller.removeListener(updateState);
      focusNode.removeListener(updateState);
    }
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null)
          Row(
            children: [
              if (widget.isRequired) ...[
                MyRichText(
                  text1: widget.labelText!,
                  style1: const TextStyle(color: MyColors.neutralDark),
                  text2: ' *',
                  style2: const TextStyle(
                    color: MyColors.error,
                  ),
                ),
              ] else ...[
                MyText14(
                  widget.labelText!,
                  height: 14,
                  color: MyThemeColor.neutralVarient,
                ),
              ],
              if (widget.isLoading) ...[
                const SizedBox(width: 8),
                const MyProgressIndicator(
                  size: 12,
                  strokeWidth: 3,
                  color: MyColors.primary,
                ),
              ],
            ],
          ),
        const SizedBox(height: 8),
        Stack(
          children: [
            MyContainer(
              color: MyColors.white,
              borderRadius: MyBorderRadius.allRounded12,
              child: TextFormField(
                controller: controller,
                //
                focusNode: focusNode,
                enabled: widget.enabled,
                readOnly: widget.readOnly,
                autofocus: widget.autofocus,
                textAlign: widget.textAlign,
                obscureText: widget.obscureText,
                keyboardType: widget.keyboardType,
                textInputAction: widget.textInputAction,
                textCapitalization: widget.textCapitalization,
                //
                minLines: widget.minLines,
                maxLines: widget.maxLines,
                maxLength: widget.maxLength,
                buildCounter: buildCounter,
                inputFormatters: widget.inputFormatters,
                //
                onTap: widget.onTap,
                onChanged: widget.onChanged,
                onEditingComplete: widget.onEditingComplete,
                //
                style: widget.style ?? _style,
                decoration: _decoration,
              ),
            ),
            if (showClear && widget.maxLines > 1)
              Positioned(
                top: 8,
                right: 6,
                child: clearButton(),
              ),
          ],
        ),
      ],
    );
  }

  Widget clearButton() {
    return MyIcon(
      size: 20,
      onTap: onClear,
      icon: MyIcons.closeCircle,
      padding: MyEdgeInsets.all8,
    );
  }

  void onClear() {
    controller.clear();
    widget.onChanged?.call('');
  }

  TextStyle get _style {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.none,
      color: widget.enabled ? MyColors.neutral : MyColors.neutralDark,
    );
  }

  InputDecoration get _decoration {
    return InputDecoration(
      isDense: true,
      contentPadding: widget.contentPadding,
      //
      floatingLabelBehavior: widget.floatingLabelBehavior,
      hintText: widget.enabled ? widget.hintText : null,
      hintStyle: _hintStyle,
      //
      prefixIcon: widget.prefixIcon,
      prefixIconConstraints: widget.prefixIconConstraints,
      //
      suffixIcon: showClear
          ? (widget.maxLines == 1 ? clearButton() : const EmptyContainer())
          : widget.suffixIcon,
      suffixIconConstraints: widget.suffixIconConstraints,
      //
      filled: true,
      fillColor: widget.enabled ? MyColors.neutralLite : MyColors.neutralA50,
      //
      enabledBorder: const OutlineInputBorder(
        borderRadius: MyBorderRadius.allRounded8,
        borderSide: BorderSide(color: MyColors.neutral),
      ),
      disabledBorder: const OutlineInputBorder(
        borderRadius: MyBorderRadius.allRounded8,
        borderSide: BorderSide(color: MyColors.neutralDarkA30),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: MyBorderRadius.allRounded8,
        borderSide: BorderSide(color: MyColors.primary),
      ),
    );
  }

  TextStyle get _hintStyle {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: MyColors.neutralLiteVarient,
    );
  }

  Widget? buildCounter(
    BuildContext context, {
    required int currentLength,
    required int? maxLength,
    required bool isFocused,
  }) {
    return null;
  }
}
