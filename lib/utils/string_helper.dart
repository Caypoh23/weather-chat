// Package imports:
import 'package:intl/intl.dart';

// Project imports:
import 'package:weather/conf/enums/word_declension_type_enum.dart';
import 'package:weather/conf/reg_exp/reg_exp_constants.dart';

class MyStringHelper {
  //
  static String removeNonNumbers(String data) {
    return data.replaceAll(MyRegExps.nonDigits, '');
  }

  static String clearHTTPS(String data) {
    return data.replaceAll('https://', '').replaceAll('http://', '').trim();
  }

  static String compactNumber(int count) =>
      NumberFormat.compact().format(count);

  static String getWordInDeclension(int count, WordDeclensionType wordType,
      {bool showNumber = true}) {
    final preLastDigit = count % 100 / 10;
    String result = showNumber ? '${compactNumber(count)} ' : '';

    if (preLastDigit >= 1 && preLastDigit <= 2 || count >= 1000) {
      result += wordType.title[2];
      return result;
    }

    switch (count % 10) {
      case 1:
        result += wordType.title[0];
        break;
      case 2:
      case 3:
      case 4:
        result += wordType.title[1];
        break;
      default:
        result += wordType.title[2];
    }

    return result;
  }
}

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
