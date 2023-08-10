// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MyRefresher extends StatelessWidget {
  //
  final Widget child;
  final void Function()? onRefresh;
  final ScrollController? scrollController;

  final controller = RefreshController();

  MyRefresher({super.key, 
    required this.child,
    required this.onRefresh,
    this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    if (onRefresh == null) return child;

    return SmartRefresher(
      enablePullDown: true,
      enableTwoLevel: true,
      onRefresh: () {
        onRefresh?.call();
        controller.refreshCompleted();
      },
      controller: controller,
      header: const MaterialClassicHeader(),
      scrollController: scrollController,
      child: child,
    );
  }
}
