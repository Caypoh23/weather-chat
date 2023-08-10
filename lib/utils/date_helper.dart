// Package imports:
import 'package:in_date_utils/in_date_utils.dart';

// Project imports:
import 'package:weather/conf/values/duration_constants.dart';

class MyDateHelper {
  //
  static DateTime get today {
    final today = DateTime.now();
    return DateTime(today.year, today.month, today.day);
  }

  static String get timezoneOffset {
    final now = DateTime.now();
    final timeZoneOffset = now.timeZoneOffset;

    final sign = timeZoneOffset.isNegative ? '-' : '+';
    final hours = timeZoneOffset.inHours.abs().toString().padLeft(2, '0');
    final minutes =
        (timeZoneOffset.inMinutes % 60).abs().toString().padLeft(2, '0');

    return '$sign$hours:$minutes';
  }

  static DateTime get yesterday {
    final yesterday = DateTime.now().subtract(MyDurations.d1);
    return DateTime(yesterday.year, yesterday.month, yesterday.day);
  }

  static DateTime get currentMonth {
    final today = DateTime.now();
    return DateTime(today.year, today.month);
  }

  static DateTime get prevMonth {
    final today = DateTime.now();
    bool isJanuary = today.month == 1;
    final month = isJanuary ? 12 : today.month - 1;
    final year = isJanuary ? today.year - 1 : today.year;
    return DateTime(year, month);
  }

  static DateTime get nextMonth {
    final today = DateTime.now();
    return DateTimeUtils.addMonths(DateTime(today.year, today.month), 1);
  }

  static bool isToday(DateTime date) {
    return DateTimeUtils.isSameDay(date, DateTime.now());
  }

  static bool isWeekend(DateTime date) {
    return date.weekday == DateTime.saturday || date.weekday == DateTime.sunday;
  }

  static bool isSameMonth(DateTime? a, DateTime? b) {
    return a?.year == b?.year && a?.month == b?.month;
  }

  static bool isCurrentMonth(DateTime date) {
    return today.year == date.year && today.month == date.month;
  }

  static DateTime get firstDayOfMonth => DateTime(today.year, today.month, 1);
  static DateTime get lastDayOfMonth => DateTimeUtils.lastDayOfMonth(today);

  static bool isCurrentWeek(DateTime time, DateTime today) {
    final time0 = DateTime(time.year, time.month, time.day);
    DateTime firstDayOfTheWeek =
        today.subtract(Duration(days: today.weekday));
    DateTime lastDayOfTheWeek = firstDayOfTheWeek.add(const Duration(days: 8));

    return time0.isAfter(firstDayOfTheWeek) &&
        time0.isBefore(lastDayOfTheWeek);
  }

  static List<DateTime> weekDays(DateTime startDate) {
    List<DateTime> days = [];
    for (int i = 0; i < 7; i++) {
      days.add(startDate.add(Duration(days: i)));
    }
    return days;
  }

  static DateTime prevDay(DateTime dateTime) {
    return DateTimeUtils.previousDay(dateTime);
  }

  static DateTime nextDay(DateTime dateTime) {
    return DateTimeUtils.nextDay(dateTime);
  }

  static DateTime lastDayOfPrevWeek(DateTime dateTime) {
    int days = dateTime.weekday;
    return DateTime(dateTime.year, dateTime.month, dateTime.day - days);
  }

  static DateTime lastDayOfNextWeek(DateTime dateTime) {
    int days = DateTime.sunday - dateTime.weekday;
    days += DateTime.daysPerWeek;

    return DateTime(dateTime.year, dateTime.month, dateTime.day + days);
  }
}
