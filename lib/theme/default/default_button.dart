// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/border_radius_constants.dart';
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/duration_constants.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/theme/text/text16/text_16_medium.dart';
import 'default_inkwell.dart';
import 'default_progress_indicator.dart';

class MyButton extends StatelessWidget {
  //
  final String label;
  final Color color;

  final void Function()? onTap;
  final void Function()? onLongPress;

  final Widget? iconLeft;
  final Widget? iconRight;

  final EdgeInsets margin;
  final EdgeInsets padding;

  final bool enable;
  final bool isLoading;

  const MyButton.primary({
    super.key,
    required this.label,
    required this.onTap,
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    //
    this.margin = MyEdgeInsets.zero,
    this.padding = MyEdgeInsets.h32v16,
    //
    this.enable = true,
    this.isLoading = false,
  }) : color = MyColors.primary;

  const MyButton.secondary({
    super.key,
    required this.label,
    required this.onTap,
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    //
    this.padding = MyEdgeInsets.h32v16,
    this.margin = MyEdgeInsets.zero,
    //
    this.isLoading = false,
    this.enable = true,
  }) : color = MyColors.secondary;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: MyDurations.ms250,
      child: MyInkWell(
        margin: margin,
        padding: padding,
        borderRadius: MyBorderRadius.allRounded10,
        onTap: enable && !isLoading ? onTap : null,
        color: enable || isLoading ? color : color,
        child: Stack(
          children: [
            if (!isLoading)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (iconLeft != null) ...[
                    iconLeft!,
                    const SizedBox(width: 8),
                  ],
                  MyText16m(
                    label,
                    color: color,
                    isOverflow: true,
                  ),
                  if (iconRight != null) ...[
                    const SizedBox(width: 8),
                    iconRight!,
                  ],
                ],
              )
            else
              Center(
                child: MyProgressIndicator(
                  size: 20,
                  color: color,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
