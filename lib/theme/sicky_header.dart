// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:sticky_headers/sticky_headers/widget.dart';

// Project imports:
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/utils/date_formatter.dart';

import 'default/default_container.dart';
import 'text/text16/text_16_medium.dart';

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
        padding: MyEdgeInsets.top16,
        alignment: Alignment.centerLeft,
        child: MyText16m(
          MyDateFormatter.fdMMMM(date),
        ),
      ),
    );
  }
}