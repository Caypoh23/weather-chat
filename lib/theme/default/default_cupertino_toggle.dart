// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';

class MyCupertinoToggle extends StatelessWidget {
  //
  final bool isActive;

  final void Function(bool) onChanged;

  const MyCupertinoToggle({super.key, 
    required this.isActive,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: isActive,
      onChanged: onChanged,
      key: ValueKey(isActive),
      activeColor: MyColors.primary,
    );
  }
}
