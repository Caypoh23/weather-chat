// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:sticky_headers/sticky_headers/widget.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/theme/text/text16/text_16_semi_bold.dart';
import 'package:weather/utils/date_formatter.dart';
import 'default/default_container.dart';

class StickyDateHeader extends StatelessWidget {
  //
  final DateTime date;

  final Widget child;

  const StickyDateHeader({
    super.key,
    required this.date,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return StickyHeader(
      content: child,
      header: MyContainer(
        alignment: Alignment.center,
        margin: MyEdgeInsets.v12,
        child: MyText16s(
          MyDateFormatter.fdMMMM(date),
          color: MyColors.neutralDark,
        ),
      ),
    );
  }
}
