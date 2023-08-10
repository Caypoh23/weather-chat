// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import 'package:weather/theme/text/text16/text_16.dart';
import 'default_cupertino_action_sheet_action.dart';

class MyCupertinoActionSheet extends StatelessWidget {
  //
  final List<Widget> actions;
  final String? title;
  final bool isSkip;

  const MyCupertinoActionSheet({super.key, 
    required this.actions,
    this.title,
    this.isSkip = false,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoTheme(
      data: const CupertinoThemeData(brightness: Brightness.light),
      child: CupertinoActionSheet(
        actions: actions,
        title: title != null
            ? MyText16(
                title!,
              )
            : null,
        cancelButton: isSkip
            ? MyCupertinoActionSheetAction.skip()
            : MyCupertinoActionSheetAction.cancel(),
      ),
    );
  }
}
