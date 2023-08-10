// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/theme/default/default_text.dart';

// Project imports:


class MyText18 extends StatelessWidget {
  //
  final String data;

  final int height;

  final Color? color;

  final int? maxLines;
  final TextAlign? textAlign;

  final TextDecoration decoration;

  final bool isOverflow;
  final bool toUpperCase;
  final bool toLowerCase;
  final bool capitalize;

  const MyText18(
    this.data, {
    super.key,
    this.height = 20,
    //
    this.color,
    //
    this.maxLines,
    this.textAlign,
    //
    this.isOverflow = true,
    this.toUpperCase = false,
    this.toLowerCase = false,
    this.capitalize = false,
    //
    this.decoration = TextDecoration.none,
  });

  @override
  Widget build(BuildContext context) {
    return MyText(
      data,
      color: color,
      fontSize: 18,
      height: height,
      maxLines: maxLines,
      textAlign: textAlign,
      isOverflow: isOverflow,
      decoration: decoration,
      capitalize: capitalize,
      toUpperCase: toUpperCase,
      fontWeight: FontWeight.normal,
    );
  }
}
