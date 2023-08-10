// Package imports:
import 'package:intl/intl.dart';

class MyNumberFormatter {
  //
  static prettier(data) {
    final number = data is double ? data : double.tryParse('$data');
    if (number == null) return null;

    final formatter = NumberFormat('#,###');
    return formatter.format(number).replaceAll(',', ' ');
  }
}
