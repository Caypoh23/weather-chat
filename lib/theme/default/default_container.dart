// Flutter imports:
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  //
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  final AlignmentGeometry? alignment;

  final Color? color;
  final Gradient? gradient;
  final BoxShape shape;
  final BoxBorder? border;
  final DecorationImage? image;

  final List<BoxShadow>? boxShadow;
  final BorderRadius? borderRadius;

  final Widget? child;

  const MyContainer({
    super.key,
    //
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.alignment,
    //
    this.gradient,
    this.color,
    this.image,
    this.shape = BoxShape.rectangle,
    this.border,
    this.boxShadow = const [],
    this.borderRadius,
    //
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      alignment: alignment,
      decoration: BoxDecoration(
        gradient: gradient,
        color: color,
        shape: shape,
        image: image,
        border: border,
        boxShadow: boxShadow,
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}
