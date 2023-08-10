// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/theme/default/default_progress_indicator.dart';

class MyLoadingState extends StatelessWidget {
  const MyLoadingState({super.key});

  //
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: MyProgressIndicator(color: MyColors.primary),
    );
  }
}
