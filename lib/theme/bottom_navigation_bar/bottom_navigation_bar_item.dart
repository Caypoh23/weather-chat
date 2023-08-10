// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/enums/menu_enum.dart';
import 'package:weather/conf/values/duration_constants.dart';
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'package:weather/theme/counter_indicator/counter_indicator.dart';
import 'package:weather/theme/default/default_icon.dart';

class MyBottomNavigationBarItem extends StatelessWidget {
  //
  final Menu model;
  final bool isSelected;

  final void Function() onTap;

  final Stream<int>? badgeStream;
  final int? badgeInitData;

  const MyBottomNavigationBarItem({
    super.key,
    required this.model,
    required this.isSelected,
    required this.onTap,
    //
    this.badgeStream,
    this.badgeInitData,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: MyDurations.ms250,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              MyIcon(
                size: 24,
                key: ValueKey(isSelected),
                padding: MyEdgeInsets.all4,
                icon: isSelected ? model.iconOn : model.iconOff,
              ),
              if (badgeStream != null && badgeInitData != null)
                Positioned(
                  top: 0,
                  right: 0,
                  child: CounterIndicator(
                    stream: badgeStream!,
                    counter: badgeInitData!,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
