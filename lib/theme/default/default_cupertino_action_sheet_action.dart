// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import 'package:weather/conf/enums/cupertino_action_type_enum.dart';
import 'package:weather/conf/values/strings_constants.dart';
import 'package:weather/core/root/injector.dart';
import 'package:weather/core/root/navigator_service.dart';
import 'package:weather/theme/text/text16/text_16_medium.dart';

class MyCupertinoActionSheetAction extends StatelessWidget {
  //
  final String label;
  final void Function() onPressed;
  final CupertinoActionType type;

  const MyCupertinoActionSheetAction({super.key, 
    required this.label,
    required this.onPressed,
    this.type = CupertinoActionType.standard,
  });

  //

  factory MyCupertinoActionSheetAction.primary({
    required String label,
    required void Function() onPressed,
  }) {
    return MyCupertinoActionSheetAction(
      label: label,
      onPressed: onPressed,
      type: CupertinoActionType.primary,
    );
  }

  factory MyCupertinoActionSheetAction.destructive({
    required String label,
    required void Function() onPressed,
  }) {
    return MyCupertinoActionSheetAction(
      label: label,
      onPressed: onPressed,
      type: CupertinoActionType.destructive,
    );
  }

  factory MyCupertinoActionSheetAction.cancel() {
    return MyCupertinoActionSheetAction(
      label: MyStrings.cancel,
      type: CupertinoActionType.cancel,
      onPressed: injector<NavigatorService>().pop,
    );
  }

  factory MyCupertinoActionSheetAction.skip() {
    return MyCupertinoActionSheetAction(
      label: MyStrings.skip,
      type: CupertinoActionType.skip,
      onPressed: injector<NavigatorService>().pop,
    );
  }
  //

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheetAction(
      onPressed: onPressed,
      isDefaultAction: type == CupertinoActionType.primary,
      isDestructiveAction: type == CupertinoActionType.destructive,
      child: MyText16m(
        label,
        color: type.textColor,
      ),
    );
  }
}
