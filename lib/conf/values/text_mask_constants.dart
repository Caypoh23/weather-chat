// Package imports:
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

// Project imports:
import 'package:weather/conf/reg_exp/reg_exp_constants.dart';

class MyTextMasks {
  //
  static final _filter = {'#': MyRegExps.digits};

  static MaskTextInputFormatter phone([String? initialValue, String? mask]) {
    return MaskTextInputFormatter(
      initialText: initialValue,
      mask: mask ?? '+998 ## ### ## ##',
      filter: _filter,
    );
  }
}
