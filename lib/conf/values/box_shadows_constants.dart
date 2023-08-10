// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'color_constants.dart';

class MyBoxShadows {
  //
  static List<BoxShadow> bottom = [
    BoxShadow(
      color: MyColors.black.withOpacity(.1),
      offset: const Offset(0, 0),
      blurRadius: 16,
      spreadRadius: 0,
    )
  ];

  //
  static const List<BoxShadow> floatingButton = [
    BoxShadow(
      color: MyColors.blackA10,
      offset: Offset(0, 4),
      blurRadius: 15,
      spreadRadius: 0,
    )
  ];

  //
  static const List<BoxShadow> sliver = [
    BoxShadow(
      color: MyColors.primary,
      blurRadius: 0.0,
      spreadRadius: 0.0,
      offset: Offset(0, 2),
    )
  ];
}
