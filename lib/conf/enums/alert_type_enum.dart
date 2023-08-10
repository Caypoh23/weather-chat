// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/assets/icon_constants.dart';
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/conf/values/strings_constants.dart';

enum AlertType {
  error,
  success,
  push,
}

extension AlertTypeExtension on AlertType {
  //
  String get icon {
    switch (this) {
      case AlertType.error:
        return MyIcons.error;
      case AlertType.success:
        return MyIcons.success;
      case AlertType.push:
        return MyIcons.bellFilled;
    }
  }

  String get title {
    switch (this) {
      case AlertType.error:
        return MyStrings.error;
      case AlertType.success:
        return MyStrings.success;
      case AlertType.push:
        return '';
    }
  }

  //

  Color get color {
    switch (this) {
      case AlertType.error:
        return MyColors.error;
      case AlertType.success:
        return MyColors.secondary;
      case AlertType.push:
        return MyColors.blueLite;
    }
  }

  Color get borderColor {
    switch (this) {
      case AlertType.error:
        return MyColors.error;
      case AlertType.success:
        return MyColors.primary;
      case AlertType.push:
        return MyColors.blue;
    }
  }
}
