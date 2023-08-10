// Flutter imports:
import 'package:flutter/material.dart';
import 'package:weather/conf/values/border_radius_constants.dart';
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/theme/container/empty_container.dart';
import 'package:weather/theme/default/default_container.dart';
import 'package:weather/theme/text/text11/text_11_semi_bold.dart';

// Project imports:

class Counter extends StatelessWidget {
  //
  final int counter;
  final bool isDashboard;

  const Counter({
    super.key,
    required this.counter,
    this.isDashboard = false,
  });

  @override
  Widget build(BuildContext context) {
    if (counter > 0) {
      return ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: isDashboard ? 8 : 20,
          minWidth: isDashboard ? 8 : 20,
        ),
        child: isDashboard
            ? const MyContainer(
                borderRadius: MyBorderRadius.allRounded15,
                color: MyColors.primary,
              )
            : MyContainer(
                borderRadius: MyBorderRadius.allRounded15,
                color: MyColors.error,
                padding: MyEdgeInsets.all2,
                border: Border.all(color: MyColors.error),
                child: Center(
                  child: MyText11s(
                    counter < 99 ? counter.toString() : '99+',
                    color: MyColors.white,
                  ),
                ),
              ),
      );
    } else {
      return const EmptyContainer();
    }
  }
}
