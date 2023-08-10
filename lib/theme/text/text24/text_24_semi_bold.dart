// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/enums/theme_colors_enum.dart';
import 'package:weather/theme/default/default_text.dart';

class MyText24s extends StatelessWidget {
  //
  final String data;

  final int height;

  final MyThemeColor? color;

  final int? maxLines;
  final TextAlign? textAlign;

  final TextDecoration decoration;

  final bool isOverflow;
  final bool toUpperCase;
  final bool toLowerCase;
  final bool capitalize;

  const MyText24s(
    this.data, {super.key, 
    this.height = 35,
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
      fontSize: 24,
      height: height,
      maxLines: maxLines,
      textAlign: textAlign,
      isOverflow: isOverflow,
      decoration: decoration,
      capitalize: capitalize,
      toUpperCase: toUpperCase,
      fontWeight: FontWeight.w600,
    );
  }
}
