// Flutter imports:
import 'package:flutter/material.dart';

class MyScrollBehavior extends ScrollBehavior {
  //
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
      case TargetPlatform.android:
        return const BouncingScrollPhysics();
      default:
        return const ClampingScrollPhysics();
    }
  }
}
