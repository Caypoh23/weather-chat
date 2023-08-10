// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/font_constants.dart';

class MyHighlightText extends StatelessWidget {
  //
  final String text;
  final List<String> highlights;

  final TextStyle textStyle;
  final TextStyle highlightStyle;

  final bool caseSensitive;

  const MyHighlightText({super.key, 
    required this.text,
    required this.highlights,
    //
    this.textStyle = const TextStyle(
      fontSize: 14,
      fontFamily: MyFonts.main,
      color: MyColors.neutral,
      fontWeight: FontWeight.w400,
    ),
    this.highlightStyle = const TextStyle(
      fontSize: 14,
      fontFamily: MyFonts.main,
      color: MyColors.neutral,
      fontWeight: FontWeight.w500,
    ),
    //
    this.caseSensitive = true,
  });

  @override
  Widget build(BuildContext context) {
    if (text.isEmpty) {
      return _richText(_normalSpan(text));
    }
    if (highlights.isEmpty) {
      return _richText(_normalSpan(text));
    }
    for (int i = 0; i < highlights.length; i++) {
      if (highlights[i].isEmpty) {
        assert(highlights[i].isNotEmpty);
        return _richText(_normalSpan(text));
      }
    }

    List<TextSpan> spans = [];
    int start = 0;

    String lowerCaseText = text.toLowerCase();
    List<String> lowerCaseHighlights = [];

    for (var element in highlights) {
      lowerCaseHighlights.add(element.toLowerCase());
    }

    while (true) {
      Map<int, String> highlightsMap = {};

      if (caseSensitive) {
        for (int i = 0; i < highlights.length; i++) {
          int index = text.indexOf(highlights[i], start);
          if (index >= 0) {
            highlightsMap.putIfAbsent(index, () => highlights[i]);
          }
        }
      } else {
        for (int i = 0; i < highlights.length; i++) {
          int index = lowerCaseText.indexOf(lowerCaseHighlights[i], start);
          if (index >= 0) {
            highlightsMap.putIfAbsent(index, () => highlights[i]);
          }
        }
      }

      if (highlightsMap.isNotEmpty) {
        List<int> indexes = [];
        highlightsMap.forEach((key, value) => indexes.add(key));

        int currentIndex = indexes.reduce(min);
        String currentHighlight = text.substring(currentIndex,
            currentIndex + highlightsMap[currentIndex]!.length);

        if (currentIndex == start) {
          spans.add(_highlightSpan(currentHighlight));
          start += currentHighlight.length;
        } else {
          spans.add(_normalSpan(text.substring(start, currentIndex)));
          spans.add(_highlightSpan(currentHighlight));
          start = currentIndex + currentHighlight.length;
        }
      } else {
        spans.add(_normalSpan(text.substring(start, text.length)));
        break;
      }
    }

    return _richText(TextSpan(children: spans));
  }

  TextSpan _normalSpan(String value) {
    return TextSpan(
      text: value,
      style: textStyle,
    );
  }

  TextSpan _highlightSpan(String value) {
    return TextSpan(
      text: value,
      style: highlightStyle,
    );
  }

  Text _richText(TextSpan text) => Text.rich(text);
}
