// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:weather/conf/values/edge_insets_constants.dart';

class MyIcon extends StatelessWidget {
  //
  final String icon;

  final double size;
  final double? width;
  final double? height;

  final Color? color;

  final void Function()? onTap;

  final EdgeInsetsGeometry padding;

  const MyIcon({
    super.key,
    required this.icon,
    //
    //
    this.width,
    this.height,
    this.size = 24,
    //
    this.color,
    //
    this.onTap,
    //
    this.padding = MyEdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: padding,
        child: SvgPicture.asset(
          icon,
          color: color,
          width: width ?? size,
          height: height ?? size,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
