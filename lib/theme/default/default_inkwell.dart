// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'default_container.dart';

class MyInkWell extends StatelessWidget {
  //
  final void Function()? onTap;
  final void Function()? onLongPress;
  final void Function()? onDoubleTap;

  final BorderRadius? borderRadius;
  final BoxBorder? border;

  final Color? color;
  final Gradient? gradient;
  final List<BoxShadow>? boxShadow;

  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  final double? height;
  final double? width;

  final Alignment? alignment;

  final Widget child;
  final Color? splashColor;

  const MyInkWell({super.key, 
    required this.child,
    this.onTap,
    //
    this.color,
    this.gradient,
    this.boxShadow,
    this.splashColor,
    //
    this.onLongPress,
    this.onDoubleTap,
    //
    this.margin = MyEdgeInsets.zero,
    this.padding = MyEdgeInsets.zero,
    //
    this.border,
    this.borderRadius,
    //
    this.height,
    this.width,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      width: width,
      color: color,
      border: border,
      height: height,
      margin: margin,
      gradient: gradient,
      boxShadow: boxShadow,
      alignment: alignment,
      borderRadius: borderRadius,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onTap,
          onLongPress: onLongPress,
          onDoubleTap: onDoubleTap,
          splashColor: splashColor,
          borderRadius: borderRadius,
          child: Padding(
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
