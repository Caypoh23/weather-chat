// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/theme/default/default_container.dart';

class BottomButtonContainer extends StatelessWidget {
  //
  final Widget child;

  final EdgeInsetsGeometry padding;

  const BottomButtonContainer({super.key, 
    required this.child,
    this.padding = MyEdgeInsets.all16,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      color: MyColors.white,
      padding: padding,
      border: const Border(
        top: BorderSide(
          width: 1,
          color: MyColors.neutral,
        ),
      ),
      child: SafeArea(top: false, child: child),
    );
  }
}
