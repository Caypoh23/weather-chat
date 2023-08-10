// Dart imports:
import 'dart:ui';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';

enum CupertinoActionType {
  standard,
  primary,
  destructive,
  cancel,
  skip,
}

extension CupertinoActionTypeExtension on CupertinoActionType {
  //
  Color get textColor {
    switch (this) {
      case CupertinoActionType.skip:
      case CupertinoActionType.cancel:
        return MyColors.neutral;

      case CupertinoActionType.destructive:
        return MyColors.error;

      case CupertinoActionType.primary:
        return MyColors.primary;

      default:
        return MyColors.neutral;
    }
  }
}
