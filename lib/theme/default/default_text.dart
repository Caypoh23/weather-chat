// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/enums/theme_colors_enum.dart';
import 'package:weather/conf/values/font_constants.dart';
import 'default_shrimmer.dart';

class MyText extends StatelessWidget {
  //
  final String? data;

  final int height;
  final int fontSize;

  final MyThemeColor? color;

  final int? maxLines;
  final TextAlign? textAlign;

  final bool isOverflow;
  final bool toUpperCase;
  final bool toLowerCase;
  final bool capitalize;

  final FontWeight fontWeight;
  final TextDecoration decoration;

  ///

  const MyText(
    this.data, {super.key, 
    height,
    this.fontSize = 14,
    //
    this.color = MyThemeColor.black,
    //
    this.maxLines,
    this.textAlign,
    //
    this.isOverflow = true,
    this.toUpperCase = false,
    this.toLowerCase = false,
    this.capitalize = false,
    //
    this.fontWeight = FontWeight.normal,
    this.decoration = TextDecoration.none,
    //
  }) : height = height ?? fontSize;

  ///

  @override
  Widget build(BuildContext context) {
    if (data == null) return MyShrimmer(height: height.toDouble());

    String displayedText = data!;
    if (toUpperCase) {
      displayedText = displayedText.toUpperCase();
    } else if (toLowerCase) {
      displayedText = displayedText.toLowerCase();
    } else if (capitalize) {
      displayedText = _capitalize(displayedText);
    }

    return Text(
      displayedText,
      style: TextStyle(
        color: color?.color,
        fontWeight: fontWeight,
        decoration: decoration,
        fontFamily: MyFonts.main,
        fontSize: fontSize.toDouble(),
        height: (height / fontSize).toDouble(),
      ),
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: isOverflow ? TextOverflow.ellipsis : null,
    );
  }

  String _capitalize(String text) {
    if (text.isEmpty) return '';
    return text[0].toUpperCase() + text.substring(1);
  }
}
