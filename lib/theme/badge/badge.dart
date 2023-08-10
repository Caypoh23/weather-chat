// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:badges/badges.dart' as badge;

// Project imports:
import 'package:weather/conf/enums/theme_colors_enum.dart';
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/theme/container/empty_container.dart';
import 'package:weather/theme/text/text12/text_12.dart';

class MyBadge extends StatelessWidget {
  //
  final int initialData;
  final Stream<int> stream;

  const MyBadge({
    super.key,
    required this.stream,
    required this.initialData,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: stream,
      initialData: initialData,
      builder: (context, snapshot) {
        final count = snapshot.data!;

        if (count == 0) return const EmptyContainer();

        return badge.Badge(
            badgeContent: MyText12(
              '$count',
              height: 12,
              color: MyThemeColor.white,
            ),
            badgeStyle: const badge.BadgeStyle(
              padding: MyEdgeInsets.all4,
              badgeColor: MyColors.primary,
            ));
      },
    );
  }
}
