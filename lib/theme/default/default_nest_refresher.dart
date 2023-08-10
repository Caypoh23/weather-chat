// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';

class MyNestRefresher extends StatelessWidget {
  //
  final int depth;
  final Widget child;

  final void Function()? onRefresh;

  const MyNestRefresher({super.key, 
    required this.child,
    required this.onRefresh,
    //
    this.depth = 1,
  });

  @override
  Widget build(BuildContext context) {
    if (onRefresh == null) return child;

    return RefreshIndicator(
      backgroundColor: MyColors.white,
      onRefresh: () async => onRefresh?.call(),
      notificationPredicate: (notification) => notification.depth == depth,
      child: child,
    );
  }
}
