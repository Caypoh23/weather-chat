// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:readmore/readmore.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/strings_constants.dart';

class MyReadMoreText extends StatelessWidget {
  //
  final String? text;

  final double fontSize;
  final double height;
  final int maxLines;

  final Color? textColor;
  final Color? buttonColor;

  final bool canHide;

  const MyReadMoreText(
    this.text, {
    super.key,
    this.height = 21,
    this.fontSize = 14,
    this.maxLines = 3,
    this.canHide = false,
    this.textColor = MyColors.neutralDark,
    this.buttonColor = MyColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      '$text ',
      trimLines: maxLines,
      trimMode: TrimMode.Line,
      trimCollapsedText: MyStrings.more,
      trimExpandedText: canHide ? MyStrings.hide : '',
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        height: height / fontSize,
      ),
      moreStyle: TextStyle(
        color: buttonColor,
        fontSize: fontSize,
        height: height / fontSize,
        fontWeight: FontWeight.w500,
      ),
      lessStyle: TextStyle(
        color: buttonColor,
        fontSize: fontSize,
        height: height / fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
