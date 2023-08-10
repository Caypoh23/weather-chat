// Package imports:
import 'package:intl/intl.dart';

// Project imports:
import 'package:weather/conf/values/date_format_constants.dart';
import 'package:weather/conf/values/strings_constants.dart';
import 'shared_preference_helper.dart';

class MyDateFormatter {
  //
  static String format(DateTime? date, String newPattern) {
    if (date == null) return '';
    return DateFormat(newPattern, MySPHelper.lang).format(date);
  }

  static DateTime? parse(String? date, String newPattern) {
    if (date == null || date == '') return null;
    return DateFormat(newPattern, MySPHelper.lang).parse(date);
  }

  ///

  static String fHHmm(DateTime? date) => format(date, MyDateFormats.hHmm);

  static DateTime? pHHmm(String date) => parse(date, MyDateFormats.hHmm);

  ///
  static String fhhmm(DateTime? date) => format(date, MyDateFormats.hhmm);

  ///
  static String fhhmma(DateTime? date) => format(date, MyDateFormats.hhmma);

  static String fdMMMM(DateTime? date) => format(date, MyDateFormats.dMMMM);

  ///
  static String fddMMyy(DateTime? date) => format(date, MyDateFormats.ddMMyy);

  ///
  static String fddMMyyyy(DateTime? date) =>
      format(date, MyDateFormats.ddMMyyyy);

  static String fddMMyyyyHHmm(DateTime? date) =>
      format(date, MyDateFormats.ddMMyyyyHHmm);

  static DateTime? pddMMyyyy(String date) =>
      parse(date, MyDateFormats.ddMMyyyy);

  static DateTime? pddMMyyyyHHmm(String date) =>
      parse(date, MyDateFormats.ddMMyyyyHHmm);

  ///
  static String fMinutes(int minutes) {
    String text = '';
    final duration = Duration(minutes: minutes);
    if (duration.inHours > 0) text += '${duration.inHours}${MyStrings.h}';
    if (duration.inMinutes % 60 > 0) {
      text += ' ${duration.inMinutes % 60}${MyStrings.m}';
    }
    return text;
  }
}
