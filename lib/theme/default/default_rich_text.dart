// Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';

class MyRichText extends StatelessWidget {
  //
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  final TextStyle style1;
  final TextStyle style2;
  final TextStyle? style3;
  final TextStyle? style4;

  final void Function()? onFirstTap;
  final void Function()? onSecondTap;
  final void Function()? onThirdTap;
  final void Function()? onFourthTap;

  final TextAlign? textAlign;

  const MyRichText({super.key, 
    required this.text1,
    required this.text2,
    required this.style1,
    required this.style2,
    this.text3 = '',
    this.text4 = '',
    this.style3 = const TextStyle(),
    this.style4 = const TextStyle(),
    this.onFirstTap,
    this.onSecondTap,
    this.onThirdTap,
    this.onFourthTap,
    this.textAlign,
  });

  GestureRecognizer? get recognizer1 {
    if (onFirstTap != null) {
      return TapGestureRecognizer()..onTap = onFirstTap;
    } else {
      return null;
    }
  }

  GestureRecognizer? get recognizer2 {
    if (onSecondTap != null) {
      return TapGestureRecognizer()..onTap = onSecondTap;
    } else {
      return null;
    }
  }

  GestureRecognizer? get recognizer3 {
    if (onThirdTap != null) {
      return TapGestureRecognizer()..onTap = onThirdTap;
    } else {
      return null;
    }
  }

  GestureRecognizer? get recognizer4 {
    if (onFourthTap != null) {
      return TapGestureRecognizer()..onTap = onFourthTap;
    } else {
      return null;
    }
  }

  factory MyRichText.base({
    required String text1,
    required String text2,
    TextAlign? textAlign,
    Color color2 = MyColors.neutral,
  }) =>
      MyRichText(
        text1: text1,
        text2: text2,
        textAlign: textAlign,
        style1: const TextStyle(
          fontSize: 14,
          height: 24 / 16,
          color: MyColors.neutral,
          fontWeight: FontWeight.w500,
        ),
        style2: TextStyle(
          fontSize: 14,
          color: color2,
          height: 24 / 16,
          fontWeight: FontWeight.w700,
        ),
      );

  factory MyRichText.attendance({
    required String text1,
    required String text2,
  }) =>
      MyRichText(
        text1: text1,
        text2: text2,
        style1: const TextStyle(
          fontSize: 16,
          height: 20 / 16,
          color: MyColors.neutral,
        ),
        style2: const TextStyle(
          fontSize: 16,
          height: 20 / 16,
          color: MyColors.neutral,
          fontWeight: FontWeight.w500,
        ),
      );

  factory MyRichText.auth({
    required String text1,
    required String text2,
    required String text3,
    required String text4,
    required void Function() onSecondTap,
    required void Function() onFourthTap,
  }) =>
      MyRichText(
        text1: text1,
        text2: text2,
        text3: text3,
        text4: text4,
        onSecondTap: onSecondTap,
        onFourthTap: onFourthTap,
        style1: const TextStyle(
          fontSize: 14,
          height: 21 / 14,
          color: MyColors.neutral,
        ),
        style2: const TextStyle(
          fontSize: 14,
          height: 21 / 14,
          color: MyColors.primary,
          decoration: TextDecoration.underline,
        ),
        style3: const TextStyle(
          fontSize: 14,
          height: 21 / 14,
          color: MyColors.neutral,
        ),
        style4: const TextStyle(
          fontSize: 14,
          height: 21 / 14,
          color: MyColors.primary,
          decoration: TextDecoration.underline,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: style1,
            recognizer: recognizer1,
          ),
          TextSpan(
            text: text2,
            style: style2,
            recognizer: recognizer2,
          ),
          if (style3 != null)
            TextSpan(
              text: text3,
              style: style3,
              recognizer: recognizer3,
            ),
          if (style4 != null)
            TextSpan(
              text: text4,
              style: style4,
              recognizer: recognizer4,
            ),
        ],
      ),
      textAlign: textAlign,
    );
  }
}
