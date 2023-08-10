// Project imports:
import 'theme_colors_enum.dart';

enum CupertinoActionType {
  standard,
  primary,
  destructive,
  cancel,
  skip,
}

extension CupertinoActionTypeExtension on CupertinoActionType {
  //
  MyThemeColor get textColor {
    switch (this) {
      case CupertinoActionType.skip:
      case CupertinoActionType.cancel:
        return MyThemeColor.neutralVarient;

      case CupertinoActionType.destructive:
        return MyThemeColor.error;

      case CupertinoActionType.primary:
        return MyThemeColor.primary;

      default:
        return MyThemeColor.neutral;
    }
  }
}
