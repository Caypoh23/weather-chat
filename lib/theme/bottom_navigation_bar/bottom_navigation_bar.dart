// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/enums/menu_enum.dart';
import 'package:weather/conf/values/color_constants.dart';
import 'package:weather/theme/default/default_container.dart';
import 'bottom_navigation_bar_item.dart';

class MyBottomNavigationBar extends StatelessWidget {
  //
  final List<Menu> list;
  final int currentIndex;
  final void Function(int) onTap;
  final bool showShadow;

  const MyBottomNavigationBar({
    super.key,
    required this.list,
    required this.onTap,
    required this.currentIndex,
    this.showShadow = true,
  });

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> items = [];

    for (int index = 0; index < list.length; index++) {
      final model = list[index];
      final isSelected = index == currentIndex;

      items.add(
        BottomNavigationBarItem(
          label: '',
          icon: MyBottomNavigationBarItem(
            model: model,
            onTap: () => onTap(index),
            isSelected: isSelected,
          ),
        ),
      );
    }

    return MyContainer(
      color: MyColors.neutralLite,
      child: BottomNavigationBar(
        items: items,
        onTap: onTap,
        iconSize: 32,
        elevation: 0,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: MyColors.transparent,
        //
        selectedFontSize: 0,
        unselectedFontSize: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
