// Flutter imports:
import 'package:flutter/services.dart';

// Project imports:
import 'package:weather/conf/reg_exp/reg_exp_constants.dart';

class MyTextInputFormatters {
  //
  static final digits = FilteringTextInputFormatter.allow(MyRegExps.digits);

  static final hours = FilteringTextInputFormatter.allow(MyRegExps.hours);

  static final minutes = FilteringTextInputFormatter.allow(MyRegExps.minutes);
}
